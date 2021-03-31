<?php
define('WP_USE_THEMES', false);
require('../../../../wp-load.php');
if ( session_status() !== PHP_SESSION_ACTIVE  ) {
	session_start();
}
if ( ! function_exists( 'wp_handle_upload' ) ) {
    require_once( ABSPATH . 'wp-admin/includes/file.php' );
}

$email_problem_message   = get_field('email_problem_message', 'option');
$email_recaptcha_message = get_field('email_recaptcha_message', 'option');
$email_success_message   = get_field('email_success_message', 'option');

$google_recaptcha_sitekey = get_field('google_recaptcha_sitekey', 'option');
$google_recaptcha_secret  = get_field('google_recaptcha_secret', 'option');

// Save all form fields for re-display in form
foreach ( $_POST as $key => $value ) {
	if ( strpos($key, 'fld_') === 0 ) {
		$_SESSION['form'][$key] = $value;
	}
}

$use_google_recaptcha     = false;
if ( ! empty($google_recaptcha_sitekey) && ! empty($google_recaptcha_secret) ) {
    $use_google_recaptcha = true;
}

if ( ! isset( $_SERVER['HTTP_REFERER'] ) ) {
	$_SESSION['form']['result'] = false;
	$_SESSION['form']['msg'] = __( $email_problem_message, 'oc' );
    header( "location: " . $_SERVER['HTTP_REFERER'] );
    exit;
}
elseif ( $use_google_recaptcha &&
		( ! isset( $_POST['g-recaptcha-response'] ) || empty( $_POST['g-recaptcha-response'] ) ) )
{
	$_SESSION['form']['result'] = false;
	$_SESSION['form']['msg'] = __( $email_recaptcha_message, 'oc' );
    header( "location: " . $_SERVER['HTTP_REFERER'] );
    exit;
}

/**
 * reCAPTCHA
 */
if ( $use_google_recaptcha ) {
    // $rcaptcha_secret = $google_recaptcha_secret; // "6LfgWHcUAAAAALnT7Hy4gBnAoCypx4m-nrj7Zbvx";
	$rcaptcha_url =
		"https://www.google.com/recaptcha/api/siteverify" .
		"?secret=" . $google_recaptcha_secret .
		"&response=" . $_POST['g-recaptcha-response'] .
		"&remoteip=" . $_SERVER['REMOTE_ADDR'];

    $captcha_contents = file_get_contents( $rcaptcha_url );
    $captcha_response = json_decode( $captcha_contents, true );

    if( ! $captcha_response["success"] ) {
        $_SESSION['form']['result'] = false;
        $_SESSION['form']['msg'] = __( $email_recaptcha_message, 'oc' );
        header( "location: " . $_SERVER['HTTP_REFERER'] );
        exit;
    }
}

/* Create value for replace text from form_layout(Backend)
 * with variable from $_POST
 */

// Variable
$arr_find    = array();
$arr_replace = array();
$headers     = "";
$email_addr  = "";

$uploadedfile       = $_FILES['fld_file'];
$upload_overrides   = array( 'test_form' => false );
$movefile           = wp_handle_upload( $uploadedfile, $upload_overrides );
$attachments 		= $movefile[ 'file' ];

$mail_to = get_field('email', 'option');
$contact_email_template   = get_field('contact_email_template', 'option');
$contact_subject_template = get_field('contact_subject_template', 'option');

foreach ( $_POST as $key => $value ) {
	if ( strpos($key, 'fld_') === 0 ) {
		array_push( $arr_find, "{{" . $key . "}}" );
		if ( $key == "fld_email" ) {
			$email_addr = sanitize_text_field($value);
			array_push( $arr_replace, sanitize_text_field($value) );
	    } else if ( $key == 'fld_message' ) {
			// NOTE All <textarea> inputs MUST use this sanetizer!
			array_push( $arr_replace, oc_sanetize_textarea_input($value) );
		} else {
			array_push( $arr_replace, sanitize_text_field($value) );
		}
	}
}

$headers .= "From: " . $email_addr . " <" . $email_addr . ">\r\n";
$headers .= "Reply-To: " . $email_addr . " <" . $email_addr . ">\r\n";
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-Transfer-Encoding: 8bit\r\n";
$headers .= "Content-Type: text/html; charset=\"UTF-8\"\r\n";

// Replace value to form_layout & Subject
$subject = str_replace( $arr_find, $arr_replace, $contact_subject_template );
$message = str_replace( $arr_find, $arr_replace, $contact_email_template );

// Send Email
$mail_check = wp_mail( $mail_to, $subject, $message, $headers ,$attachments);

if ( $mail_check ) {
	$_SESSION['form']['result'] = true;
    $_SESSION['form']['msg'] = __( $email_success_message, 'oc' );
    header( "location: /thanks" );
    exit();
}
else {
	$_SESSION['form']['result'] = false;
    $_SESSION['form']['msg'] = __( $email_problem_message, 'oc' );
}
header( "location: " . $_SERVER['HTTP_REFERER'] );
exit;

?>
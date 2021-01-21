<!DOCTYPE html>
<html>
<head>
<?php
	global $post;
	$template_uri = get_template_directory_uri();
	$pfx_title = get_field('page_title_prefix', 'option');
	$slug = get_post_field( 'post_name', get_post() );
	$page_title = (empty($post) ? 'Page' : $post->post_title);
	$title = ( empty($pfx_title) ? '' : $pfx_title ) .
		( empty($page_title) ? '' : $page_title );
?>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="Viewport" content="width=device-width, initial-scale=1">
	<title><?php echo $title; ?></title>

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

	<!-- CSS -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
		integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
		crossorigin="anonymous">
<?php
	wp_head();
	$main_menu_args = array(
		'theme_location' => 'primary',
		'menu_id'        => 'primary',
		'container'      => false
	);
	//wp_nav_menu( $main_menu_args );
?>
</head>
<body <?php body_class(); ?>>
	<header>
		<div class="container-xxl">
			<div class="top-menu">
				<div class="left-menu">
					<a href="<?php echo get_home_url(); ?>" title="">
						<img src="<?php echo $template_uri; ?>/img/logo-gahochi.png" alt="" class="header-logo">
					</a>
				</div>
				<div class="right-menu">
					<div class="right-top-menu">
						<div class="phone-link">
							<img src="<?php echo $template_uri; ?>/img/icon-phone.png" alt="" class="img-icon phone-icon">
							<a href="tel:045-507-9458" title="">045-507-9458</a>
						</div>
					</div>
					<div class="right-bottom-menu">
						<a class="btn-green btn-contact" href="<?php echo home_url('/');?>contact" title=""><i class="fas fa-chevron-right icon-arrow"></i><span>お問い合わせ</span></a>
						<div class="main-menu">
							<!-- <?php wp_nav_menu( $main_menu_args ); ?> -->
						</div>
						<!-- <div class="burger-icon">
							<div class="burger-line burger-line-1"></div>
							<div class="burger-line burger-line-2"></div>
							<div class="burger-line burger-line-3"></div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		<div class="md-menu">
			<?php wp_nav_menu( $main_menu_args ); ?>
		</div>
	</header>
	<div class="header-space"></div>

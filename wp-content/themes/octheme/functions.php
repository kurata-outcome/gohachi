<?php

$is_production = get_field('is_production', 'option');

function isBKAdmin() {
	$curruser = wp_get_current_user();
	return ! empty($curruser) && $curruser->user_login == 'admin_bk';
}

function isOCAdmin() {
	$curruser = wp_get_current_user();
	return ! empty($curruser) && $curruser->user_login == 'admin_oc';
}

if ( ! function_exists('is_plugin_active') ) {
	include_once(ABSPATH.'wp-admin/includes/plugin.php');
}
if ( ! function_exists('oc_init_sessions') ) {
	function oc_init_sessions() {
		if ( ! is_plugin_active('wp-session-manager/wp-session-manager.php') && ! wp_doing_cron() ) {
			if ( session_status() !== PHP_SESSION_ACTIVE  ) {
				session_start();
			}
		}

		if ( session_status() === PHP_SESSION_ACTIVE ) {
			if ( ! isset($_SESSION['form']) ) {
				$_SESSION['form'] = array();
			}
		}
	}
	add_action( 'init', 'oc_init_sessions', 1 );
}

register_nav_menus( array(
	'primary'   => __( 'Primary Menu',   'OCTheme'),
	'secondary' => __( 'Secondary Menu', 'OCTheme')
	)
);

add_theme_support( 'post-thumbnails' ); 

show_admin_bar( false );

remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );

/**
 * Remove indicators of the WordPress version that is running
 * to make the site less hackable.
 */
remove_action( 'wp_head', 'wp_generator' );
if ( ! function_exists('oc_remove_wp_ver') ) {
	function oc_remove_wp_ver($src) {
		if ( strpos($src, 'ver=') ) {
			$wp_vers = get_bloginfo( 'version' );
			$query_str = parse_url($src, PHP_URL_QUERY);
			parse_str($query_str, $query_params);
			if ( isset($query_params['ver']) && $query_params['ver'] == $wp_vers ) {
				$src = remove_query_arg('ver', $src);
			}
		}
		return $src;
	}
	add_filter('style_loader_src',  'oc_remove_wp_ver', 9999 );
	add_filter('script_loader_src', 'oc_remove_wp_ver', 9999 );
}

/**
 * Option page co-working with ACF plugin
 */
if ( function_exists('acf_add_options_page') ) {
	/* ACF Based Configuration page */
	acf_add_options_page( array(
		'page_title' 	=> __( 'Configuration', 'oc' ),
		'menu_title'	=> __( 'Configuration', 'oc' ),
		'menu_slug' 	=> 'oc-configuration',
		'capability'	=> 'edit_posts',
		'redirect'		=> false,
		'position'      => 22,
		'icon_url'      => 'dashicons-admin-settings',
		)
	);
}

/**
 * Enqueue scripts and styles.
 */
if ( ! function_exists('oc_enqueue') ) {
	function oc_enqueue() {
		global $is_production;
		$uri = get_template_directory_uri();
		$asset_version = get_field('asset_version', 'options');
		error_log( "ASSET VERSION '" . $asset_version . "'" );
		if ( empty($asset_version) ) {
			$template_path = get_template_directory();
			$style_mtime = filemtime($template_path . '/css/oc-theme.css');
			$script_mtime = filemtime($template_path . '/js/oc-theme.js');
			$asset_version = date( 'YmdHis', ($style_mtime > $script_mtime ? $style_mtime : $script_mtime) );
		}

		/* CSS */
		if ( $is_production ) {
			// This should be the ONLY CSS file loaded, with all of the development CSS files
			// included into it and then minified.
			wp_enqueue_style( 'oc-min-css', ($uri . '/css/oc-theme.min.css') );
		}
		else {
			// Enqueue each of your development CSS files below...
			wp_enqueue_style( 'oc-all-css', ($uri . '/css/all.min.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-animte-css', ($uri . '/css/animate.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-bootstrap-css', ($uri . '/css/bootstrap.min.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-bootstrap-grid-css', ($uri . '/css/bootstrap-grid.min.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-header-css', ($uri . '/css/ghc-header.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-theme-css', ($uri . '/css/oc-theme.css'), array(), $asset_version, 'all' );
			wp_enqueue_style( 'oc-global-css', ($uri . '/css/ghc-global.css'), array(), $asset_version, 'all' );
		}

		/* JS */
		// If we need to install a different version of JQuery than the one provided by WordPress...
		 wp_deregister_script( 'jquery' );
		 wp_enqueue_script( 'jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js' );

		/* Load the html5 shiv scripts. */
		if ( get_field('ie_include_shiv', 'option') ) {
			$html5shiv_script = '//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js';
			wp_enqueue_script( 'oc-html5shiv', $html5shiv_script, array(), false, true );
			wp_script_add_data( 'oc-html5shiv', 'conditional', 'lt IE 9' );

			$html5respond_script = '//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js';
			wp_enqueue_script( 'oc-respond', $html5respond_script, array(), false, true );
			wp_script_add_data( 'oc-respond', 'conditional', 'lt IE 9' );
		}

		if ( $is_production ) {
			// This should be the ONLY JS file loaded, with all of the development JS files
			// included into it and then minified.
			wp_enqueue_script( 'oc-min-js', ($uri . '/js/oc-theme.min.js'), array('jquery'), false, true );
		} else {
			// Enqueue each of your development JS files below...
			// Be sure to setup the dependencies correctly.
			wp_enqueue_script( 'oc-all-js', ($uri . '/js/all.min.js'), array('jquery'), $asset_version, true );
			wp_enqueue_script( 'oc-wow-js', ($uri . '/js/wow.js'), array('jquery'), $asset_version, true );
			wp_enqueue_script( 'oc-bootstrap-js', ($uri . '/js/bootstrap.min.js'), array('jquery'), $asset_version, true );
			wp_enqueue_script( 'oc-bootstrap-bundle-js', ($uri . '/js/bootstrap.bundle.min.js'), array('jquery'), $asset_version, true );
			wp_enqueue_script( 'oc-theme-js', ($uri . '/js/oc-theme.js'), array('jquery'), $asset_version, true );
			wp_enqueue_script( 'oc-global-js', ($uri . '/js/ghc-global.js'), array('jquery'), $asset_version, true );
		}

		if ( is_singular() && comments_open() && get_option('thread_comments') ) {
			wp_enqueue_script( 'comment-reply' );
		}
	}

	add_action( 'wp_enqueue_scripts', 'oc_enqueue' );
}

if ( ! function_exists('oc_admin_enqueue') ) {
	function oc_admin_enqueue() {
		$uri = get_template_directory_uri();
		wp_enqueue_style( 'oc-theme-admin',  ($uri . '/css/oc-theme-admin.css') );
	}

	add_action( 'admin_enqueue_scripts', 'oc_admin_enqueue' );
}

if ( ! function_exists('oc_sanetize_textarea_input') ) {
	function oc_sanetize_textarea_input( $value ) {
		$lines = mb_split("/\r\n|\n|\r/", $value);
		$newlines = array();
		foreach ( $lines as $line ) {
			if ( mb_strlen($line) < 128 ) {
				$newlines[] = $line;
			} else {
				while ( mb_strlen($line) > 128 ) {
					$sub = mb_substr($line, 0, 128);
					$newlines[] = $sub;
					$line = mb_substr($line, 128);
				}
				if ( mb_strlen($line) > 0 ) {
					$newlines[] = $line;
				}

			}
		}
		return nl2br( implode("\r\n", $newlines) );
	}
}

// This will send Blog Date Archive requests for dates that have no articles
// to continue to go to our date.php template, as opposed to the 404 page.
// Note that the browser still receives a 404 status code!
//
if ( ! function_exists('oc_blog_date_404_template') ) {
	function oc_blog_date_404_template( $template = '' ) {
		global $wp_query;
		if ( isset($wp_query->query['year']) || isset($wp_query->query['monthnum']) || isset($wp_query->query['day']) ) {
			$template = locate_template( 'date.php', false );
		} elseif ( isset($wp_query->query['tag']) ) {
			$template = locate_template( 'tag.php', false );
		} elseif ( isset($wp_query->query['category_name']) ) {
			$template = locate_template( 'category.php', false );
		}
		return $template;
	}
	add_filter( '404_template', 'oc_blog_date_404_template' );
}

/**
 * Hide Admin menu items from non-BK and non-OC admins.
 */
if ( ! function_exists('oc_adjust_admin_menus') ) {
	function oc_adjust_admin_menus() {
		remove_submenu_page( 'index.php', 'update-core.php' );                    // Update
		remove_menu_page( 'edit-comments.php' );                                  // Comments
		remove_submenu_page( 'themes.php', 'themes.php' );                        // Appearance
		remove_submenu_page( 'themes.php', 'widgets.php' );                       // Appearance
		remove_submenu_page( 'themes.php', 'theme-editor.php' );                  // Appearance
		remove_menu_page( 'plugins.php' );                                        // Plugins
		remove_menu_page( 'tools.php' );                                          // Tools
		remove_menu_page( 'options-general.php' );                                // Settings
		remove_menu_page( 'users.php' );                                          // Users
		// remove_submenu_page( 'options-general.php', 'cp_calculated_fields_form' ); // Appearance

		remove_menu_page( 'cptui_main_menu' );                                    // CPT UI
		// remove_menu_page( 'sitepress-multilingual-cms/menu/languages.php' );     // WPML
	}

	if ( ! isBKAdmin() && ! isOCAdmin() ) {
		add_action( 'admin_menu', 'oc_adjust_admin_menus', 999 );
		add_filter( 'acf/settings/show_admin', '__return_false' );
	}
}

?>

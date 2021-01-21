<?php
get_header();
$template_uri = get_template_directory_uri();
$img_id   = get_post_thumbnail_id();
$img_url  = wp_get_attachment_url( $img_id );
if ( have_posts() ) :
	while ( have_posts() ) :
		the_post();
		$cat_name = '';
		$cats = get_the_category($post->ID);
		if ( count($cats) > 0 && $cats[0]->name != 'Uncategorized' ) {
			$cat_name = $cats[0]->name;
			$cat_link = get_category_link( $cats[0] );
		}
?>

	<section class="text-bg-top img-cover-white"
		style="background-image: url('<?php echo $template_uri; ?>/img/top-main.jpg');">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="caption">
						<h2 class="text-jp">&lt;themes&gt;/single.php</h2>
						<h2 class="text-eng">Blog Article</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="wrapp-blog-content">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="blog-header">
						<h1 class="title-name"><?php the_title(); ?></h1>
						<p class="text-time"><?php the_time( 'Y\年 m\月 d\日' ) ?></p>
<?php
						if ( ! empty($cat_name) ) {
?>
							<a href="<?php echo $cat_link; ?>"
								title="Category <?php echo $cat_name; ?>" class="link-cate"
								><span><?php echo $cat_name; ?></span></a>
<?php
						}
?>
					</div>
					<div class="blog-content">
						<?php the_content(); ?>
					</div>
					<div class="wrapp-button">
<?php
						$prev_post = get_adjacent_post(false, '', true);
						if ( ! empty($prev_post) ) {
							echo '<a href="' . get_permalink($prev_post->ID) .
								'" class="btn-orange prev" title="' .
								$prev_post->post_title . '"><span class="fas fa-chevron-left"></span>前の記事へ</a>';
						}
						$next_post = get_adjacent_post(false, '', false);
						if ( ! empty($next_post) ) {
							echo '<a href="' . get_permalink($next_post->ID) .
								'" class="btn-orange next" title="' .
								$next_post->post_title . '"><span class="fas fa-chevron-right"></span>次の記事</a>';
						}
?>
					</div>
				</div>
			</div>
		</div>
	</section>
<?php
	endwhile;
endif;
get_footer();
?>
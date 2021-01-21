<?php
if ( have_posts() ) :
	while ( have_posts() ) :
		the_post();
		$cat_name = '';
		$cats = get_the_category($post->ID);
		if ( count($cats) > 0 && $cats[0]->name != 'Uncategorized' ) {
			$cat_name = $cats[0]->name;
			$cat_link = get_category_link( $cats[0] );
		}
		$img_url  = '';
		$img_id   = get_post_thumbnail_id($post->ID);
		if ( ! empty($img_id) ) {
			$img_url = wp_get_attachment_url( $img_id );
		}
		$bgstyle = '';
		if ( ! empty($img_url) ) {
			$bgstyle = ' style="background-image: url(' . "'" . $img_url . "'" . ');"';
		}
?>
		<div class="blog-item col-md-12">
			<div class="row">
				<div class="col-md-4 blog-left">
					<h2>&lt;themes&gt;/part_article.php</h2>
					<div class="blog-img">
						<div class="blog-img-cricle">
							<div class="img-url" <?php echo $bgstyle; ?> ></div>
						</div>
						<p class="blog-time"><?php echo get_the_time( 'm\月 d\日', $post->ID );
							?><br><?php echo get_the_time( 'Y\年', $post->ID ); ?></p>
					</div>
				</div>
				<div class="col-md-8 blog-right">
					<a href="<?php echo get_permalink($post->ID) ?>"
						title="<?php echo get_the_title($post->ID); ?>"
						><h1 class="text-title"><?php echo get_the_title($post->ID); ?></h1></a>
<?php
					if ( ! empty($cat_name) ) {
?>
					<a href="<?php echo $cat_link; ?>"
						title="Category <?php echo $cat_name; ?>" class="link-cate"
						><span><?php echo $cat_name; ?></span></a>
<?php
					}
?>
					<div class="text-content">
						<p><?php echo get_the_excerpt($post->ID); ?></p>
					</div>
					<a href="<?php echo get_permalink($post->ID) ?>"
						title="<?php echo get_the_title($post->ID); ?>"
						class="btn-border-white">さらに読む</a>
				</div>
			</div>
		</div>
<?php
	endwhile;
endif;
?>

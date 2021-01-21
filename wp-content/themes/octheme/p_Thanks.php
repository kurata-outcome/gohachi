<?php 
	/* Template Name: Thankyou */
	get_header();
	$template_uri = get_template_directory_uri();
?>

<section class="section-thanks">
	<div class="container">
		
		<div class="cover-button text-center">

			<h2>お問い合わせありがとうございました。</h2>

			<a href="<?php echo get_home_url(); ?>" class="btn-green">
				Back to Homepage
			</a>
		</div>

	</div>
</section>
<?php 
	get_footer();
?>
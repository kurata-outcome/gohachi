<?php
	$template_uri = get_template_directory_uri();
	$footer_menu_args = array(
		'theme_location'   => 'secondary',
		'menu_id'          => 'secondary',
		'container'        => false,
		'menu_class'       => 'footer-menu-list',
	);
?>

	<section class="contact-us">
		<div class="container-xxl">
			<div class="row">
				<div class="section-title wow fadeIn">
					<h1 class="title-green">五八建設はリフォーム・土木工事・解体工事など建物のプロフェッショナルです。</h1>
					<p text-caption>最短即日対応の五八建設にお任せください。どうぞお気軽にお問い合わせください。</p>
				</div>
			</div>
			<div class="row">
				<div class="container-flex">
					<div class="col-flex wow fadeIn" style="background-image: url('<?php echo $template_uri; ?>/img/gohachi-tel.jpg');">
						<a href="tel:045-507-9458" class="overlay-green"></a>
						<div class="contact-info">
							<a href="tel:045-507-9458" class="contact-number" title=""><span>045-507-9458</span></a>
							<p>受付日時</br>平日 9:00~18:00</p>
						</div>
					</div>
					<div class="col-flex wow fadeIn" style="background-image: url('<?php echo $template_uri; ?>/img/contact.jpg');">
						<a href="<?php echo home_url('/');?>contact" class="overlay-green"></a>
						<div class="contact-info">
							<a href="<?php echo home_url('/');?>contact" class="text-detail">お問い合わせフォーム</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4 footer-left wow fadeIn">
					<a href="<?php echo home_url('/');?>" title="">
						<img class="logo-footer" src="<?php echo $template_uri; ?>/img/logo-gohachi-02.png" alt="">
					</a>
					<div class="social-contact">
						<div class="social-item like-instagram">
							<img src="<?php echo $template_uri; ?>/img/insta.png" alt="" class="img-icon">
							<a href="https://www.instagram.com/gohachi5058/" target="_blank" rel="noreferrer" title="" class="link-icon-info"><span>INSTAGRAM</span></a>
						</div>
						<div class="social-item like-twitter">
							<img src="<?php echo $template_uri; ?>/img/twitter.png" alt="" class="img-icon">
							<a href="https://twitter.com/gohachi_5858" target="_blank" rel="noreferrer"  title="" class="link-icon-info"><span>Twitter</span></a>
						</div>
					</div>
					<div style="width:250px;margin-bottom:20px;"><a href="https://www.ribilo.com/paint/" target="_blank"><img src="https://www.ribilo.com/paint/img/widget/trophy250.png" alt="外壁塗装の専門業者の紹介サイトリビロペイント" /></a><div style="background-color:#d6bc75;text-align:center;padding:3px 0;font-size:13px;"><a href="https://www.ribilo.com/paint/14/14100" style="color:#fff;">外壁塗装横浜市</a></div></div>
				</div>
				<div class="col-md-8 wow fadeIn">
					<!-- <?php wp_nav_menu( $footer_menu_args ); ?> -->
				</div>
				<div class="col-md-12 copyright">
					Copyright ©株式会社五八建設. All Rights Reserved.
				</div>
			</div>
		</div>
	</footer>
	<?php wp_footer(); ?>
</body>
</html>

<?php 
	/* Template Name: Contact */
	get_header();
	$template_uri = get_template_directory_uri();
?>
	<script src='https://www.google.com/recaptcha/api.js'></script>
	    <section class="header-cover-title" style="background-image: url('<?php echo $template_uri; ?>/img/AdobeStock_165803784_Preview.jpg');">
	        <div class="overlay-green"></div>
	        <div class="container">
	            <h1 class="text-title wow fadeIn">お問い合わせ</h1>
	        </div>
		</section>

		<section class="wrapp-contact">
	        <div class="container-xxl wow fadeIn">
	            <h3 class="text-des">当社へのお問い合わせは、<br/>下記お電話か、フォームよりご連絡ください</h3>
	            <div class="wrapp-contact-detail">
	                <div class="phone-link">
	                    <img src="<?php echo $template_uri; ?>/img/icon-phone.png" alt="" class="img-icon phone-icon">
	                    <a href="tel:045-507-9458" title="">045-507-9458</a>
	                </div>
	                <div class="text-bussiness-open">
	                    <span>平日 9:00~18:00</span>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-lg-7 col-md-10 col-sm-10 col-centered wow fadeIn">

	                	<?php
	                	if ( isset($_SESSION['form']) && isset($_SESSION['form']['result']) ) {
	                		echo '<div class="alert alert-' . ($_SESSION['form']['result'] === FALSE ? 'danger' : 'success') . '">';
	                		echo '<div>' . (empty($_SESSION['form']['msg']) ? 'UNKNOWN Error' : $_SESSION['form']['msg']) . '</div>';
	                		echo '</div>';
	                	}
	                	?>
                    	<form class="contact-form" id="contact" method="POST" enctype="multipart/form-data" 
                    		  action="<?php echo $template_uri; ?>/php/process-contact.php">

	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">お名前 <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md-5">
	                                        <input type="text" class="form-control" placeholder="姓" name="fld_name" required>
	                                    </div>
	                                    <div class="col-md-5">
	                                        <input type="text" class="form-control" placeholder="名" name="fld_lastname" required>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">ふりがな <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md-5">
	                                        <input type="text" class="form-control" placeholder="せい" name="fld_f_name"  required>
	                                    </div>
	                                    <div class="col-md-5">
	                                        <input type="text" class="form-control" placeholder="めい" name="fld_f_lastname" required>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">電話番号 <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md-6">
	                                        <input type="text" name="fld_phone" class="form-control" required>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">メールアドレス <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md col-12">
	                                        <input type="text" class="form-control" name="fld_email" required>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">問い合わせ項目 <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md-6">
	                                        <select class="form-select" id="" name="fld_inquiry">
	                                            <option value="" required>選択してください</option>
	                                            <option value="見積もり">見積もり</option>
	                                            <option value="採用">採用</option>
	                                            <option value="その他">その他</option>
	                                        </select>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">写真添付</label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="custom-upload-box">
	                                        <input type="file" class="form-control btn-upload" name="fld_file" id="contact_upload">
	                                        <label id="contact_upload_label" for="contact_upload" class="custom-upload">
	                                            <span class="prompt">ファイルを選択</span>
	                                        </label>
	                                        <span id="upload_filename" class="file-name">選択されていません</span>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group">
	                            <label class="col-sm-3 col-form-label">問い合わせ内容 <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md col-12">
	                                        <textarea name="fld_message" required></textarea>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row input-group check-group">
	                            <label class="col-sm-3 col-form-label">確認事項 <div class="req"><span>必須</span></div></label>
	                            <div class="col-sm-9">
	                                <div class="row">
	                                    <div class="col-md col-12">
	                                        <div class="form-check">
	                                            <input class="form-check-input" type="checkbox" value="" id="check2" required>
	                                            <label class="form-check-label" for="check2"><a href="<?php echo home_url('/');?>privacy" title="">プライバシーポリシー</a>を確認しました</label>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-12 text-center">

	                        	<?php
	                        	$google_recaptcha_sitekey = get_field('google_recaptcha_sitekey', 'option');
	                        	if ( ! empty($google_recaptcha_sitekey) ) :
	                        	?>
	                        		<div class="g-recaptcha" style="width:304px;margin:auto;margin-bottom: 30px"
	                        			 data-sitekey="<?php echo $google_recaptcha_sitekey; ?>"></div>
	                        	<?php
	                        	endif;
	                        	?>

	                            <button type="submit" class="btn-submit"><i class="fas fa-chevron-right icon-arrow"></i><span>送信する</span></button>
	                        </div>
	                    </form>
	                </div>  
	            </div>  
	        </div>
	    </section>

<?php 
	$_SESSION['form'] = array();
	get_footer();
?>
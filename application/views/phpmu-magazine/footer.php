<div class='flex-container'>
	<div class='flex-item'>
		<img src='https://res.cloudinary.com/killtdj/image/upload/w_600/q_auto/v1620046373/20170830013425_dcsh3v.png'>
		<h4>
			KEMENTERIAN LINGKUNGAN HIDUP DAN KEHUTANAN <br>
			DIREKTORAT JENDERAL KONSERVASI SUMBER DAYA ALAM DAN EKOSISTEM <br>
			BALAI KONSERVASI SUMBER DAYA ALAM SUMATERA SELATAN
		</h4>
		<p>
			Jl. Kol. H . Burlian / Punti Kayu Km 6 No 79. Palembang<br>
			Telepon: (0711) 410948 | Email: bksdasumsel@yahoo.co.id
		</p>
		<div class="widget">
			<div class="text-footer-sosial">Sosial Media :</div>
			<div class="social-bar-mobile">
			<?php
				$sosmed = $this->model_utama->view('identitas')->row_array();
				$pecahd = explode(",", $sosmed['facebook']);
			?>
			<a target="_BLANK" href="<?php echo $pecahd[0]; ?>" class="social-icon"><span class="facebook-footer"><i class="lni lni-facebook"></i></span></a>
			<a target="_BLANK" href="<?php echo $pecahd[1]; ?>" class="social-icon"><span class="twitter-footer"><i class="lni lni-twitter"></i></span></a>
			<a target="_BLANK" href="<?php echo $pecahd[2]; ?>" class="social-icon"><span class="linkedin-footer"><i class="lni lni-instagram-original"></i></span></a>
			<a target="_BLANK" href="<?php echo $pecahd[3]; ?>" class="social-icon"><span class="google-footer"><i class="lni lni-youtube"></i></span></a>
		</div>
	</div>
	</div>
	<div class='flex-item'>
		<h4 class='header_footer'><i class="lni lni-line-spacing"></i> Kategori Berita</h4>
		<?php $kategori = $this->model_utama->view_single('kategori', array('aktif' => 'Y'), 'id_kategori', 'DESC');
		foreach ($kategori->result_array() as $kat)
		{ ?>
			<li>
				<div class='link_kategori'>
					<i class='lni lni-chevron-right'></i><a target='_BLANK' href='<?php echo base_url() . 'kategori/detail/' . $kat['kategori_seo'] ?>'><?php echo $kat['nama_kategori'] ?></a>
				</div>
			</li>
		<?php } ?>

	</div>
	<div class='flex-item'>
		<h4 class='header_footer'><i class="lni lni-instagram"></i> Instagram</h4>
		<div class='ig-wrapper'>
			<?php
				$getProfile = fetchData('https://www.instagram.com/bksda_sumsel/?__a=1');
				$resultProfile = json_decode($getProfile, true);
				$username = $resultProfile['graphql']['user']['username'];
				$fotoProfile = $resultProfile['graphql']['user']['profile_pic_url'];
				// echo "<pre>";
				// print_r($resultProfile['graphql']['user']['edge_owner_to_timeline_media']['edges']);
				// print_r($fotoProfile);
				// echo "</pre>";
			?>
			<div class="ig-header">
				<div class='ig-header-item'>
					<a target="_BLANK" href="https://www.instagram.com/bksda_sumsel/" class="btn-follow">Ikuti +</a>
				</div>
				<div class='ig-header-item'>
					<h4 class="text_username">@bksda_sumsel</h4>
				</div>
			</div>
			<div id="instagram-feed1" class="instagram_feed">
				<?php
				$fields = "id,media_type,media_url,thumbnail_url,timestamp,permalink,caption";
				$token = "IGQVJXMzBvZAzZA6aC1zMWRhRU1hSDQ5bDFONXZAmMC1EcHJnTElfY3dYVk83cHRwRFhIYlpDUVZAFaUQ1M1dVLXhWd2dBWk1iTVVmczktVWpmV2JYbmw1TEVJZAzFQbGFjTzhNemF5eE5WdEtwUFA5LWx3TwZDZD";
				$limit = 9;

				function fetchData($url)
				{
					$ch = curl_init();
					curl_setopt($ch, CURLOPT_URL, $url);
					curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
					curl_setopt($ch, CURLOPT_TIMEOUT, 20);
					$result = curl_exec($ch);
					curl_close($ch);
					return $result;
				}

				$result = fetchData("https://graph.instagram.com/me/media?fields={$fields}&access_token={$token}&limit={$limit}");
				$result_decode = json_decode($result, true);

				foreach ($result_decode["data"] as $post) :

					$caption = $post["caption"];
					$permalink = $post["permalink"];
					$media_type = $post["media_type"];

					if ($media_type == "VIDEO")
					{
						$media_url = $post["thumbnail_url"];
					}
					else
					{
						$media_url = $post["media_url"];
					}
				?>
					<div class="instagram_new">
						<a class="insta-link" href="<?php echo $permalink; ?>" rel="noopener" target="_blank">
							<img src="<?php echo $media_url; ?>" loading="lazy" alt="<?php echo $caption; ?>" class="insta-image">
						</a>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
		<!-- <iframe src="//lightwidget.com/widgets/e53a2a12cb74546686b161f7b683f435.html" scrolling="no" allowtransparency="true" class="lightwidget-widget instagram_widget"></iframe> -->
	</div>
	<div class='flex-item'>
		<h4 class='header_footer'><i class="lni lni-twitter"></i> Twitter</h4>
		<a class="twitter-timeline" data-width="320" data-height="359" href="https://twitter.com/bksda_sumsel?ref_src=twsrc%5Etfw">Tweets by bksdasumsel</a>
	</div>
</div>
<div class="copyright-info">
&copy; Copyright <strong><a href="https://balaiksdasumsel.org">Balai KSDA Sumatera Selatan</a></strong>. 2021
</div>


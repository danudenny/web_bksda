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
		<h4 class='header_footer'><i class="lni lni-link"></i> Link Instansi</h4>
		<?php $link = $this->model_utama->view_single('link_skpd',array('aktif' => 'Y'),'id','ASC');
		foreach ($link->result_array() as $links)
		{ ?>
			<li>
				<div class='link_kategori'>
					<i class='lni lni-chevron-right'></i><a target='_BLANK' href='<?php echo $links['url'] ?>'><?php echo $links['nama'] ?></a>
				</div>
			</li>
		<?php } ?>

	</div>
	<div class='flex-item'>
		<h4 class='header_footer'><i class="lni lni-instagram"></i> Instagram</h4>
		<iframe src="//lightwidget.com/widgets/e53a2a12cb74546686b161f7b683f435.html" scrolling="no" allowtransparency="true" class="lightwidget-widget instagram_widget"></iframe>
	</div>
	<div class='flex-item'>
		<h4 class='header_footer'><i class="lni lni-facebook-oval"></i> Facebook</h4>
		<div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-width="" data-height="340px" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
			<blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote>
		</div>
	</div>
</div>
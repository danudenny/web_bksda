<div class="block">
	<?php $r = $this->model_utama->view_where('kategori',array('sidebar' => 8))->row_array(); ?>
	<h2 class="list-title" style="color: #dd8229;border-bottom: 2px solid #dd8229;"><?php echo "$r[nama_kategori]"; ?></h2>
	<ul class="article-block">
	<?php 
		$kategori5 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,3);			
		foreach ($kategori5->result_array() as $r2x) {
		$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
			echo "<li>
					<div class='article-photo'>";
						if ($r2x['gambar'] ==''){
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:250px; height:250px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
						}else{
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:250px; ' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='' /></a>";
						}
					echo "</div>
					<div class='article-content'>

					</div>
				  </li>";
		}
	?>
	</ul>
	<a href="<?php echo "".base_url()."kategori/detail/$r[kategori_seo]"; ?>" class="more">Read More</a>
</div>

<div class="widget">
	<h3>Berita Populer</h3>
	<div class="widget-articles">
		<ul>
			<li>
				<?php
					$populer = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.status' => 'Y'),'dibaca','DESC',0,5);
					foreach ($populer->result_array() as $r2x) {
					$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
					echo "<li>
							<div class='article-photo'>";
								if ($r2x['gambar'] ==''){
									echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
								}else{
									echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='' /></a>";
								}
							echo "</div>
							<div class='article-content'>
								<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
								<span class='meta'>
									<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], ".tgl_indo($r2x['tanggal'])."</a>
								</span>
							</div>
						  </li>";
					}
				?>
			</li>
		</ul>
	</div>
</div>

<div class="block">
  <h2 style='color:#000; border-bottom: 2px solid #000;' class="list-title">Galeri Foto</h2>
  <div class="latest-galleries">
	  <div class="gallery-widget">
		  <div class="gallery-photo" rel="hover-parent">
			  <a href="#" class="slide-left icon-text"></a>
			  <a href="#" class="slide-right icon-text"></a>
			  <ul rel="4">
				  <?php 
				  	$album = $this->model_utama->view_where_ordering_limit('album',array('aktif' => 'Y'),'id_album','RANDOM',0,4);
					foreach ($album->result_array() as $row) {
					$jumlah = $this->model_utama->view_where('gallery',array('id_album' => $row['id_album']))->num_rows();
					echo "<li> 
							  <a href='".base_url()."albums/detail/$row[album_seo]' class='hover-effect delegate'>
								  <span class='cover'><i></i>
								  <img width='100%' src='".base_url()."asset/img_album/$row[gbr_album]' alt='$row[jdl_album] - (Ada $jumlah foto)'></span>
							  </a>
						  </li>";
					}
				  ?>
			  </ul>
		  </div>
		</div>
	</div>
</div>

<div class="peta_kawasan">
	<div id="feature_infos_bottom">
		<p class="petunjuk"><i class="fa fa-mouse-pointer"></i> Klik pada bagian peta untuk memunculkan informasi dan kawasan konservasi.</p>
	</div>
	<div id="feature_infos">
		<h3 id="info"></h3>
		<p id="desc"></p>
		<div id="img"></div>
		<div id="link_peta"></div>
	</div>
	<div id="map"></div>
</div>
<hr style="margin-bottom: 20px;">

<div class="main-page left">

	<div class="double-block">
		<div class="content-block main right">

		
			<div class="block">
				<div class="featured-block">
					<?php
					$cekslide = $this->model_utama->view_single('berita', array('headline' => 'Y', 'status' => 'Y'), 'id_berita', 'DESC');
					if ($cekslide->num_rows() > 0)
					{
						include "slide.php";
					}
					?>
				</div>
			</div>

			<div class="block-pengumuman">
				<?php $r = $this->model_utama->view_where('kategori', array('sidebar' => 8))->row_array(); ?>
				<h2 class="list-title" style="color: #dd8229;border-bottom: 2px solid #dd8229;"><?php echo "$r[nama_kategori]"; ?></h2>
				<ul class="article-block">
					<?php
					$kategori5 = $this->model_utama->view_join_two('berita', 'users', 'kategori', 'username', 'id_kategori', array('berita.id_kategori' => $r['id_kategori'], 'berita.status' => 'Y'), 'id_berita', 'DESC', 0, 3);
					foreach ($kategori5->result_array() as $r2x)
					{
						$total_komentar = $this->model_utama->view_where('komentar', array('id_berita' => $r2x['id_berita']))->num_rows();
						echo "<li>
					<div class='article-photo'>";
						if ($r2x['gambar'] == '')
						{
							echo "<a href='" . base_url() . "$r2x[judul_seo]' class='hover-effect'><img style='width:100%; height:250px;' src='" . base_url() . "asset/foto_berita/small_no-image.jpg' alt='' /></a>";
						}
						else
						{
							echo "<a href='" . base_url() . "$r2x[judul_seo]' class='hover-effect'><img style='width:100%; ' src='" . base_url() . "asset/foto_berita/$r2x[gambar]' alt='' /></a>";
						}
						echo "</div>
					<div class='article-content'>

					</div>
				  </li>";
					}
					?>
				</ul>
				<a href="<?php echo "" . base_url() . "kategori/detail/$r[kategori_seo]"; ?>" class="more">Read More</a>
			</div>

			<div class="block">
				<div class="block-title">
					<a href="<?php echo base_url(); ?>berita/indeks_berita" class="right">+ Indexs Berita</a>
					<h2>Berita Terbaru</h2>
				</div>
				<div class="block-content">
					<ul class="article-block">
						<?php
						$no = 1;
						$hot = $this->model_utama->view_join_two('berita', 'users', 'kategori', 'username', 'id_kategori', array('status' => 'Y'), 'tanggal', 'DESC', 0, 8);
						foreach ($hot->result_array() as $row)
						{
							$total_komentar = $this->model_utama->view_where('komentar', array('id_berita' => $row['id_berita']))->num_rows();
							$tgl = tgl_indo($row['tanggal']);
							$isi_berita = (strip_tags($row['isi_berita']));
							$isi = substr($isi_berita, 0, 170);
							$isi = substr($isi_berita, 0, strrpos($isi, " "));
							$judul = $row['judul'];
							echo "<li>
							<div style='height:100px; background:#e3e3e3; overflow:hidden; margin-left:10px; float:right' class='article-photo hidden-xs'>
								<a href='" . base_url() . "$row[judul_seo]' class='hover-effect'>";
							if ($row['gambar'] == '')
							{
								echo "<img style='width:180px;' src='" . base_url() . "asset/foto_berita/no-image.jpg' alt='no-image.jpg' /></a>";
							}
							else
							{
								echo "<img style='width:180px;' src='" . base_url() . "asset/foto_berita/$row[gambar]' alt='$row[gambar]' /></a>";
							}
							echo "</a>
							</div>
							<div class='article-photo visible-xs' style='margin-right:10px'>";
							if ($row['gambar'] == '')
							{
								echo "<a class='hover-effect' href='" . base_url() . "$row[judul_seo]'><img style='width:59px; height:42px' src='" . base_url() . "asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
							}
							else
							{
								echo "<a class='hover-effect' href='" . base_url() . "$row[judul_seo].html'><img style='width:59px; height:42px' src='" . base_url() . "asset/foto_berita/$row[gambar]' alt='$row[gambar]' /></a>";
							}
							echo "</div>

							<div class='article-content' style='margin-left:0px'>
								<h2 class='hidden-xs h2-judul'><a title='$row[judul]' href='" . base_url() . "$row[judul_seo]'>$judul</a></h2>
								<h4 class='visible-xs'><a title='$row[judul]' href='" . base_url() . "$row[judul_seo]'>$judul</a></h4>
								<span class='meta'>
									<a href='" . base_url() . "kategori/detail/$row[kategori_seo]'><b>$row[nama_kategori]</b></a>
									<a href='" . base_url() . "$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], " . tgl_indo($row['tanggal']) . "</a>
								</span>
								<p class='hidden-xs'>$isi . . .</p>
							</div>
						</li>";
						}
						?>
					</ul>
				</div>
			</div>

			<!-- <div class="block">
				<div class="block-title" style="background: #dd8229;">
					<h2>Pilihan Redaksi</h2>
				</div>
				<div class="block-content">
					<ul class="article-block">
						<?php
						$pilihan = $this->model_utama->view_join_two('berita', 'users', 'kategori', 'username', 'id_kategori', array('berita.aktif' => 'Y', 'berita.status' => 'Y'), 'tanggal', 'DESC', 0, 5);
						foreach ($pilihan->result_array() as $pi)
						{
							$total_komentar = $this->model_utama->view_where('komentar', array('id_berita' => $pi['id_berita']))->num_rows();
							$tgl = tgl_indo($pi['tanggal']);
							$isi_berita = (strip_tags($pi['isi_berita']));
							$isi = substr($isi_berita, 0, 170);
							$isi = substr($isi_berita, 0, strrpos($isi, " "));
							$judul = $pi['judul'];
							echo "<li>
										<div style='height:100px; background:#e3e3e3; overflow:hidden; margin-left:10px; float:right' class='article-photo hidden-xs'>
											<a href='" . base_url() . "$pi[judul_seo]' class='hover-effect'>";
							if ($pi['gambar'] == '')
							{
								echo "<img style='width:180px;' src='" . base_url() . "asset/foto_berita/no-image.jpg' alt='no-image.jpg' /></a>";
							}
							else
							{
								echo "<img style='width:180px;' src='" . base_url() . "asset/foto_berita/$pi[gambar]' alt='$pi[gambar]' /></a>";
							}
							echo "</a>
										</div>
										<div class='article-photo visible-xs' style='margin-right:10px'>";
							if ($pi['gambar'] == '')
							{
								echo "<a class='hover-effect' href='" . base_url() . "$pi[judul_seo]'><img style='width:59px; height:42px' src='" . base_url() . "asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
							}
							else
							{
								echo "<a class='hover-effect' href='" . base_url() . "$pi[judul_seo].html'><img style='width:59px; height:42px' src='" . base_url() . "asset/foto_berita/$pi[gambar]' alt='$pi[gambar]' /></a>";
							}
							echo "</div>

										<div class='article-content' style='margin-left:0px'>
											<h2 class='hidden-xs h2-judul'><a title='$pi[judul]' href='" . base_url() . "$pi[judul_seo]'>$judul</a></h2>
											<h4 class='visible-xs'><a title='$pi[judul]' href='" . base_url() . "$pi[judul_seo]'>$judul</a></h4>
											<span class='meta'>
												<a href='" . base_url() . "kategori/detail/$pi[kategori_seo]'><b>$pi[nama_kategori]</b></a>
												<a href='" . base_url() . "$pi[judul_seo]'><span class='icon-text'>&#128340;</span>$pi[jam], " . tgl_indo($pi['tanggal']) . "</a>
											</span>
											<p class='hidden-xs'>$isi . . .</p>
										</div>
									</li>";
						}
						?>
					</ul>
				</div>
			</div> -->


		</div>
		<div class="content-block left hidden-xs">
			<?php include "sidebar_kiri.php"; ?>
		</div>
	</div>
</div>
<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan.php"; ?>
</div>

<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan_bawah.php"; ?>
</div>
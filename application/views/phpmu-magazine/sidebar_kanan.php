<div class="widget">
	<h3>Statisik Web</h3>
	<div class="widget-stat">
		<table>
			<tr>
				<td>Jumlah Total Pengunjung </td>
				<td>&nbsp:&nbsp </td>
				<td>
					<?php
						$kunjungan = $this->model_utama->stat_all_sum();
						foreach ($kunjungan->result_array() as $row){
							echo $row[jumlah];
						}
					?>
				</td>
			<tr>
			<tr>
				<td>Jumlah Pengunjung Hari Ini</td>
				<td>&nbsp:&nbsp</td>
				<td> <?php
						$kunjunganHarini = $this->model_utama->stat_today_sum();
						foreach ($kunjunganHarini->result_array() as $row){
							echo $row[hits];
						}
					?>
				</td>
			<tr>
			<tr>
				<td>Jumlah Pengunjung Bulan Ini</td>
				<td>&nbsp:&nbsp</td>
				<td> <?php
						$kunjunganHarini = $this->model_utama->stat_month_sum();
						foreach ($kunjunganHarini->result_array() as $row){
							echo $row[hits];
						}
					?>
				</td>
			<tr>
		</table>
	</div>
</div>

<div class="widget">
	<h3>Temukan juga kami di</h3>
	<div class="widget-social">
		<div class="social-bar">
		<?php
			$sosmed = $this->model_utama->view('identitas')->row_array();
			$pecahd = explode(",", $sosmed['facebook']);
		?>
		<a target="_BLANK" href="<?php echo $pecahd[0]; ?>" class="social-icon"><span class="facebook">Facebook</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[1]; ?>" class="social-icon"><span class="twitter">Twitter</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[2]; ?>" class="social-icon"><span class="linkedin">Instagram</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[3]; ?>" class="social-icon"><span class="google">Youtube</span></a>
		</div>
		<p>Ikuti kami di facebook, twitter, Instagram, Youtube dan dapatkan informasi terbaru dari kami disana.</p>
	</div>
</div>

<div class="widget">
	<h3>Berita Utama</h3>
	<div class="widget-articles">
		<ul>
			<li>
				<?php 
					$terbaru = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.status' => 'Y','berita.utama' => 'Y',),'tanggal','DESC',0,5);
					foreach ($terbaru->result_array() as $r2x) {
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

<div class="widget">
	<h3>Polling</h3>
	<div class="widget-articles">
		<?php
		  $t = $this->model_utama->view_where('poling',array('aktif' => 'Y','status' => 'Pertanyaan'))->row_array();
		  echo " <div style='color:#000; font-weight:bold;'>$t[pilihan] <br></div>";
		  echo "<form method=POST action='".base_url()."polling/hasil'>";
			  $pilih = $this->model_utama->view_where('poling',array('aktif' => 'Y','status' => 'Jawaban'));
			  foreach ($pilih->result_array() as $p) {
			  echo "<input class=marginpoling type=radio name=pilihan value='$p[id_poling]'/>
					<class style=\"color:#666;font-size:12px;\">&nbsp;&nbsp;$p[pilihan]<br />";}
			  echo "<br><center><input style='width: 110px; padding:2px' type=submit class=simplebtn value='PILIH' />
		  </form>
		  <a href='".base_url()."polling'>
		  <input style='width: 110px; padding:2px;' type=button class=simplebtn value='LIHAT HASIL' /></a></center>";
		?>
	</div>
</div>

<div class="widget">
	<h3>Link SKPD Terkait</h3>
	<div class="widget-link">
		<ul>
			<li>
				<?php 
					$linkskpd = $this->model_utama->view_single('link_skpd',array('aktif' => 'Y'),'id','DESC');
					foreach ($linkskpd->result_array() as $r2x) {
					echo "<li>
							<div class='article-photo'>";
								if ($r2x['gambar'] ==''){
									echo "<a href='".base_url()."$r2x[nama]' class='hover-effect'><img style='width:300px; height:50px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
								}else{
									echo "<a href='$r2x[url]' class='hover-effect'><img style='width:300px; height:50px;' src='".base_url()."asset/link_skpd/$r2x[gambar]' alt='' /></a>";
								}
							echo "</div>
						  </li>";
					}
				?>
			</li>
		</ul>
	</div>
</div>

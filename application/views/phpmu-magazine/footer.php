<?php
echo "
<div class='wrapper'>
	<div class='footer-info'>
		<div class='header-logo'>";
			$iden = $this->model_utama->view('identitas')->row_array();
			$logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
			foreach ($logo->result_array() as $row) {
				echo "<a href='".base_url()."'><img style='max-height:120px' src='".base_url()."asset/logo/$row[gambar]'/></a>";
			}
		echo "
		</div

	
		<div class='header-menu'>
			<h3>
			KEMENTERIAN LINGKUNGAN HIDUP DAN KEHUTANAN <br>
			DIREKTORAT JENDRAL KONSERVASI SUMBER DAYA ALAM DAN EKOSISTEM <br>
			BALAI KONSERVASI SUMBER DAYA ALAM SUMATERA SELATAN
			</h3>
			<p>
			Jl. Kol. H . Burlian / Punti Kayu Km 6 No 79. Palembang<br>
			Telepon: (0711) 410948 | Email: bksdasumsel@yahoo.co.id
			</p>
		</div>
		<p style='text-align: center;'>&copy; ".date('Y')." Copyright <b>BKSDA SUMSEL</b>. All Rights reserved.</p>
	</div>
</div>";
?>
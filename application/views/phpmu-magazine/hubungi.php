 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
   integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
   crossorigin=""/>
 <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
   integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
   crossorigin=""></script>
 <style>
     .contact-form-kategori select{
         color: #0b2e13;
     }
 </style>
<div class="full-width">
	<div class="block">
		<div class="block-title">
			<a href="<?php echo base_url(); ?>" class="right">Back to homepage</a>
			<h2>Hubungi Kami</h2>
		</div>
		<div class="block-content">
			
			<div class="map-border">
				<div id="map-hubungi" style="height: 400px">
				</div>
			</div>

			<div class="paragraph-row">
				<div class="column6">
					<?php if (!empty($rows)) {
                        echo "$rows[alamat]";
                    } ?>
				</div>
				<div class="column6">
					<div style="width:370px" id="writecomment">
						<form action="<?php echo base_url(); ?>hubungi/kirim" method="POST">
							<p class="contact-form-user">
								<label for="c_name">Nama<span class="required">*</span></label>
								<input type="text" placeholder="Nama" name='a' id="c_name" required/>
							</p>
							<p class="contact-form-email">
								<label for="c_email">E-mail<span class="required">*</span></label>
								<input type="text" placeholder="E-mail" name='b' id="c_email" required/>
							</p>
                            <p class="contact-form-kategori">
                                <label for="kategori">Kategori<span class="required">*</span></label>
                                <select class="form-control" name='d' id="c_kategori">
                                    <option value=null>Pilih Kategori</option>
                                    <option value='Kebakaran Hutan dan Lahan'>Pelaporan Kebakaran Hutan dan Lahan</option>
                                    <option value='Satwa'>Pelaporan Satwa Langka</option>
                                    <option value='Lainnya'>Lainnya</option>
                                </select>
                            </p>
							<p class="contact-form-message">
								<label for="c_message">Pesan<span class="required">*</span></label>
								<textarea style='width:430px' name='c' placeholder="Pesan anda.." id="c_message" required></textarea>
							</p>
							<p><input type="submit" name="submit" class="styled-button" value="Send a message" onclick="return confirm('Pesan anda ini akan kami balas melalui email ?')"/></p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<script type="text/javascript">
	var map = L.map('map-hubungi', {
		doubleClickZoom: false,
		scrollWheelZoom: false,
		dragging: false,
		touchZoom: false,
		boxZoom: false,
		zoomControl: false
	}).setView([-2.9323135, 104.7154171], 14);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo(map);

	L.marker([-2.9323135, 104.7154171]).addTo(map)
		.bindPopup('Balai Konservasi Sumber Daya Alam.<br> Sumatera Selatan.')
		.openPopup();
</script>
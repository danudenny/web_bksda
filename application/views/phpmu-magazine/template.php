<!DOCTYPE HTML>
<html lang = "en">
<head>
<title><?php echo $title; ?></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="index, follow">
	<meta name="description" content="<?php echo $description; ?>">
	<meta name="keywords" content="<?php echo $keywords; ?>">
	<meta name="author" content="BKSDA Sumatera Selatan">
	<meta name="robots" content="all,index,follow">
	<meta http-equiv="Content-Language" content="id-ID">
	<meta NAME="Distribution" CONTENT="Global">
	<meta NAME="Rating" CONTENT="General">
	<link rel="canonical" href="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
	<?php if ($this->uri->segment(1)=='berita' AND $this->uri->segment(2)=='detail'){ $rows = $this->model_utama->view_where('berita',array('judul_seo' => $this->uri->segment(3)))->row_array();
	   echo '<meta property="og:title" content="'.$title.'" />
			 <meta property="og:type" content="article" />
			 <meta property="og:url" content="'.base_url().''.$this->uri->segment(3).'" />
			 <meta property="og:image" content="'.base_url().'asset/foto_berita/'.$rows['gambar'].'" />
			 <meta property="og:description" content="'.$description.'"/>';
	} ?>
	<link rel="shortcut icon" href="<?php echo base_url(); ?>asset/images/<?php echo favicon(); ?>" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="rss.xml" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/reset.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/main-stylesheet.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/shortcode.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/fonts.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/<?php echo background(); ?>/responsive.css" />
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/background/style.css">
	<link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/slide.css">

	<link rel="stylesheet" href="<?php echo base_url(); ?>template/<?php echo template(); ?>/lightbox/lightbox.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/peta/css/leaflet.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/peta/css/qgis2web.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/peta/css/fontawesome-all.min.css">
	
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/jquery-latest.min.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/jscript/theme-scripts.js"></script>
	<?php if ($this->uri->segment(1)=='main' OR $this->uri->segment(1)==''){ ?>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/js/jssor.slider-23.1.0.mini.js"></script>
	<script type="text/javascript" src="<?php echo base_url(); ?>template/<?php echo template(); ?>/slide/js/slide.js"></script>
	<?php } ?>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	</script>
	<style type="text/css">.the-menu a.active{ color:#fff !important; } </style>
</head>
<body>
<div id='Back-to-top'>
  <img alt='Scroll to top' src='http://members.phpmu.com/asset/css/img/top.png'/>
</div>
<div class="boxed">
	<div class="header">
		<?php include "header.php"; ?>
	</div>

	<div class="content">
		<div class="wrapper">
			<div class="breaking-news">
				<span class="the-title">Breaking News</span>
				<ul>
					<?php
					  $terkini = $this->model_utama->view_where_ordering_limit('berita',array('status' => 'Y'),'id_berita','DESC',0,10);
					  foreach ($terkini->result_array() as $row) {
						echo "<li><a href='$row[judul_seo]'>$row[judul]</a></li>";
					  }
					?>
				</ul>
			</div>

			<center>
			<?php
			if ($this->uri->segment(1)=='main' OR $this->uri->segment(1)==''){
			  $gambaratas = $this->model_utama->view('gambaratas');
			  foreach ($gambaratas->result_array() as $b) {
				$string = $b['gambar'];
				if ($b['gambar'] != ''){
					if(preg_match("/swf\z/i", $string)) {
						echo "<embed width='100%' src='".base_url()."asset/foto_gambaratas/$b[gambar]' quality='high' type='application/x-shockwave-flash'>";
					} else {
						echo "<a href='$b[url]' target='_blank'><img style='margin-bottom:5px' width='100%' src='".base_url()."asset/foto_gambaratas/$b[gambar]' alt='$b[judul]' /></a>";
					}
				}
				if (trim($b['source']) != ''){ echo "$b[source]"; }
			  }
			}
			?>
			</center>

			<?php 
			if ($this->uri->segment(1)=='kategori'){
				$bb = $this->db->query("SELECT * FROM kategori where kategori_seo='".cetak($this->uri->segment(3))."'")->row_array();
				if ($bb['gambar_utama'] != ''){
					if(preg_match("/swf\z/i", $string)) {
						echo "<embed width='100%' src='".base_url()."asset/foto_berita/$bb[gambar_utama]' quality='high' type='application/x-shockwave-flash'>";
					} else {
						echo "<a href='#' target='_blank'><img style='margin-bottom:5px' width='100%' src='".base_url()."asset/foto_berita/$bb[gambar_utama]' alt='$bb[nama_kategori]' /></a>";
					}
				}
			}
			?>


			<div class="main-content">
				<?php echo $contents; ?>
			<div class="clear-float"></div>
			</div>
		</div>
	</div>

	<footer>
		<div class="footer">
			<?php 
				include "footer.php";
				$this->model_utama->kunjungan(); 
			?>
		</div>
	</footer>
</div>
	<!-- Scripts -->
	<script src="<?php echo base_url(); ?>asset/peta/js/qgis2web_expressions.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/leaflet.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/leaflet.rotatedMarker.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/leaflet.pattern.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/leaflet-hash.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/Autolinker.min.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/rbush.min.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/labelgun.min.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/js/labels.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/BENTAYAN454_1.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/DANGKU454_2.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/GUMAI454_3.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/GUNUNGRAYA454_4.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/ISAU454_5.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/MARAS_6.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/PASU454_7.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/PERMISAN_8.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/PUNTIKAYU454_9.js"></script>
	<script src="<?php echo base_url(); ?>asset/peta/data/SERELO454_10.js"></script>
	<script>
		var getUrl = window.location;
		var baseUrl = getUrl .protocol + "//" + getUrl.host + getUrl.pathname;

        var map = L.map('map', {
            zoomControl:true,
            maxZoom:28,
            minZoom:1,
            doubleClickZoom: false,
		    scrollWheelZoom: false,
        }).fitBounds([[-5.00038715863503,101.68596623343623],[-1.6159402759807548,107.37287570122103]]);
        var hash = new L.Hash(map);
        map.attributionControl.setPrefix('<a href="https://github.com/tomchadwin/qgis2web" target="_blank">qgis2web</a> &middot; <a href="https://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> &middot; <a href="https://qgis.org">QGIS</a>');
        var autolinker = new Autolinker({truncate: {length: 30, location: 'smart'}});
        var bounds_group = new L.featureGroup([]);
        function setBounds() {
        }
        map.createPane('pane_OSMStandard_0');
        map.getPane('pane_OSMStandard_0').style.zIndex = 400;
        var layer_OSMStandard_0 = L.tileLayer('http://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            pane: 'pane_OSMStandard_0',
            opacity: 1.0,
            attribution: '<a href="https://www.openstreetmap.org/copyright">© OpenStreetMap contributors, CC-BY-SA</a>',
            minZoom: 1,
            maxZoom: 28,
            minNativeZoom: 0,
            maxNativeZoom: 19
        });
        layer_OSMStandard_0;
        map.addLayer(layer_OSMStandard_0);

        function pop_BENTAYAN454_1(feature, layer) {
			layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_BENTAYAN454_1_0() {
            return {
                pane: 'pane_BENTAYAN454_1',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(229,182,54,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_BENTAYAN454_1');
        map.getPane('pane_BENTAYAN454_1').style.zIndex = 401;
        map.getPane('pane_BENTAYAN454_1').style['mix-blend-mode'] = 'normal';
        var layer_BENTAYAN454_1 = new L.geoJson(json_BENTAYAN454_1, {
            attribution: '',
            interactive: true,
            dataVar: 'json_BENTAYAN454_1',
            layerName: 'layer_BENTAYAN454_1',
            pane: 'pane_BENTAYAN454_1',
            onEachFeature: pop_BENTAYAN454_1,
            style: style_BENTAYAN454_1_0,
        });
        bounds_group.addLayer(layer_BENTAYAN454_1);
        map.addLayer(layer_BENTAYAN454_1);

        function pop_DANGKU454_2(feature, layer) {
			layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_DANGKU454_2_0() {
            return {
                pane: 'pane_DANGKU454_2',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(225,89,137,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_DANGKU454_2');
        map.getPane('pane_DANGKU454_2').style.zIndex = 402;
        map.getPane('pane_DANGKU454_2').style['mix-blend-mode'] = 'normal';
        var layer_DANGKU454_2 = new L.geoJson(json_DANGKU454_2, {
            attribution: '',
            interactive: true,
            dataVar: 'json_DANGKU454_2',
            layerName: 'layer_DANGKU454_2',
            pane: 'pane_DANGKU454_2',
            onEachFeature: pop_DANGKU454_2,
            style: style_DANGKU454_2_0,
        });
        bounds_group.addLayer(layer_DANGKU454_2);
        map.addLayer(layer_DANGKU454_2);

        function pop_GUMAI454_3(feature, layer) {
			layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_GUMAI454_3_0() {
            return {
                pane: 'pane_GUMAI454_3',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(190,207,80,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_GUMAI454_3');
        map.getPane('pane_GUMAI454_3').style.zIndex = 403;
        map.getPane('pane_GUMAI454_3').style['mix-blend-mode'] = 'normal';
        var layer_GUMAI454_3 = new L.geoJson(json_GUMAI454_3, {
            attribution: '',
            interactive: true,
            dataVar: 'json_GUMAI454_3',
            layerName: 'layer_GUMAI454_3',
            pane: 'pane_GUMAI454_3',
            onEachFeature: pop_GUMAI454_3,
            style: style_GUMAI454_3_0,
        });
        bounds_group.addLayer(layer_GUMAI454_3);
        map.addLayer(layer_GUMAI454_3);

        function pop_GUNUNGRAYA454_4(feature, layer) {
			layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_GUNUNGRAYA454_4_0() {
            return {
                pane: 'pane_GUNUNGRAYA454_4',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(152,125,183,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_GUNUNGRAYA454_4');
        map.getPane('pane_GUNUNGRAYA454_4').style.zIndex = 404;
        map.getPane('pane_GUNUNGRAYA454_4').style['mix-blend-mode'] = 'normal';
        var layer_GUNUNGRAYA454_4 = new L.geoJson(json_GUNUNGRAYA454_4, {
            attribution: '',
            interactive: true,
            dataVar: 'json_GUNUNGRAYA454_4',
            layerName: 'layer_GUNUNGRAYA454_4',
            pane: 'pane_GUNUNGRAYA454_4',
            onEachFeature: pop_GUNUNGRAYA454_4,
            style: style_GUNUNGRAYA454_4_0,
        });
        bounds_group.addLayer(layer_GUNUNGRAYA454_4);
        map.addLayer(layer_GUNUNGRAYA454_4);
        function pop_ISAU454_5(feature, layer) {
            layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_ISAU454_5_0() {
            return {
                pane: 'pane_ISAU454_5',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(231,113,72,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_ISAU454_5');
        map.getPane('pane_ISAU454_5').style.zIndex = 405;
        map.getPane('pane_ISAU454_5').style['mix-blend-mode'] = 'normal';
        var layer_ISAU454_5 = new L.geoJson(json_ISAU454_5, {
            attribution: '',
            interactive: true,
            dataVar: 'json_ISAU454_5',
            layerName: 'layer_ISAU454_5',
            pane: 'pane_ISAU454_5',
            onEachFeature: pop_ISAU454_5,
            style: style_ISAU454_5_0,
        });
        bounds_group.addLayer(layer_ISAU454_5);
        map.addLayer(layer_ISAU454_5);
        function pop_MARAS_6(feature, layer) {
            layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_MARAS_6_0() {
            return {
                pane: 'pane_MARAS_6',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(255,158,23,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_MARAS_6');
        map.getPane('pane_MARAS_6').style.zIndex = 406;
        map.getPane('pane_MARAS_6').style['mix-blend-mode'] = 'normal';
        var layer_MARAS_6 = new L.geoJson(json_MARAS_6, {
            attribution: '',
            interactive: true,
            dataVar: 'json_MARAS_6',
            layerName: 'layer_MARAS_6',
            pane: 'pane_MARAS_6',
            onEachFeature: pop_MARAS_6,
            style: style_MARAS_6_0,
        });
        bounds_group.addLayer(layer_MARAS_6);
        map.addLayer(layer_MARAS_6);
        function pop_PASU454_7(feature, layer) {
            layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_PASU454_7_0() {
            return {
                pane: 'pane_PASU454_7',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(141,90,153,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_PASU454_7');
        map.getPane('pane_PASU454_7').style.zIndex = 407;
        map.getPane('pane_PASU454_7').style['mix-blend-mode'] = 'normal';
        var layer_PASU454_7 = new L.geoJson(json_PASU454_7, {
            attribution: '',
            interactive: true,
            dataVar: 'json_PASU454_7',
            layerName: 'layer_PASU454_7',
            pane: 'pane_PASU454_7',
            onEachFeature: pop_PASU454_7,
            style: style_PASU454_7_0,
        });
        bounds_group.addLayer(layer_PASU454_7);
        map.addLayer(layer_PASU454_7);
        function pop_PERMISAN_8(feature, layer) {
            layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_PERMISAN_8_0() {
            return {
                pane: 'pane_PERMISAN_8',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(243,166,178,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_PERMISAN_8');
        map.getPane('pane_PERMISAN_8').style.zIndex = 408;
        map.getPane('pane_PERMISAN_8').style['mix-blend-mode'] = 'normal';
        var layer_PERMISAN_8 = new L.geoJson(json_PERMISAN_8, {
            attribution: '',
            interactive: true,
            dataVar: 'json_PERMISAN_8',
            layerName: 'layer_PERMISAN_8',
            pane: 'pane_PERMISAN_8',
            onEachFeature: pop_PERMISAN_8,
            style: style_PERMISAN_8_0,
        });
        bounds_group.addLayer(layer_PERMISAN_8);
        map.addLayer(layer_PERMISAN_8);
        function pop_PUNTIKAYU454_9(feature, layer) {
            layer.on('click', function (e) {
				document.getElementById("info").innerHTML = feature.properties.FFF;
				document.getElementById("desc").innerHTML = feature.properties.description;
				document.getElementById("img").innerHTML = "<img src=" + baseUrl + "asset/peta/" + feature.properties.image + " width=\"230px\">";
                document.getElementById("link_peta").innerHTML = `<a class="linknya" href=${baseUrl}${feature.properties.link}> Baca Lebih Lanjut</a>`;
				$("#feature_infos").stop();
				$("#feature_infos").fadeIn("fast");
			});
        }

        function style_PUNTIKAYU454_9_0() {
            return {
                pane: 'pane_PUNTIKAYU454_9',
                opacity: 1,
                color: 'rgba(35,35,35,1.0)',
                dashArray: '',
                lineCap: 'butt',
                lineJoin: 'miter',
                weight: 1.0, 
                fill: true,
                fillOpacity: 1,
                fillColor: 'rgba(114,155,111,1.0)',
                interactive: true,
            }
        }
        map.createPane('pane_PUNTIKAYU454_9');
        map.getPane('pane_PUNTIKAYU454_9').style.zIndex = 409;
        map.getPane('pane_PUNTIKAYU454_9').style['mix-blend-mode'] = 'normal';
        var layer_PUNTIKAYU454_9 = new L.geoJson(json_PUNTIKAYU454_9, {
            attribution: '',
            interactive: true,
            dataVar: 'json_PUNTIKAYU454_9',
            layerName: 'layer_PUNTIKAYU454_9',
            pane: 'pane_PUNTIKAYU454_9',
            onEachFeature: pop_PUNTIKAYU454_9,
            style: style_PUNTIKAYU454_9_0,
        });
        bounds_group.addLayer(layer_PUNTIKAYU454_9);
        map.addLayer(layer_PUNTIKAYU454_9);
        setBounds();
	</script>

	<script type='text/javascript'>
	$(function() { $(window).scroll(function() {
	    if($(this).scrollTop()>400) { $('#Back-to-top').fadeIn(); }else { $('#Back-to-top').fadeOut();}});
	    $('#Back-to-top').click(function() {
	        $('body,html')
	        .animate({scrollTop:0},300)
	        .animate({scrollTop:40},200)
	        .animate({scrollTop:0},130)
	        .animate({scrollTop:15},100)
	        .animate({scrollTop:0},70);
	        });
	});

	function jam(){
		var waktu = new Date();
		var jam = waktu.getHours();
		var menit = waktu.getMinutes();
		var detik = waktu.getSeconds();
		 
		if (jam < 10){ jam = "0" + jam; }
		if (menit < 10){ menit = "0" + menit; }
		if (detik < 10){ detik = "0" + detik; }
		var jam_div = document.getElementById('jam');
		jam_div.innerHTML = jam + ":" + menit + ":" + detik;
		setTimeout("jam()", 1000);
	} jam();

	</script>

<script>
$(function(){
    var url = window.location.pathname, 
        urlRegExp = new RegExp(url.replace(/\/$/,'') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation
        $('.the-menu a').each(function(){
            // and test its normalized href against the url pathname regexp
            if(urlRegExp.test(this.href.replace(/\/$/,''))){
                $(this).addClass('active');
            }
        });

});
</script>
</body>
</html>
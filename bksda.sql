-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: bskda2_db
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `id_agenda` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int NOT NULL DEFAULT '1',
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (53,'Kawasan','kawasan','<p>TWA Punti Kayu</p>','TWAPK_3.jpg','Y',3,'2021-04-05','23:12:35','Senin','admin');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background`
--

DROP TABLE IF EXISTS `background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `background` (
  `id_background` int NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_background`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background`
--

LOCK TABLES `background` WRITE;
/*!40000 ALTER TABLE `background` DISABLE KEYS */;
INSERT INTO `background` VALUES (1,'green');
/*!40000 ALTER TABLE `background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id_banner` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berita`
--

DROP TABLE IF EXISTS `berita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `berita` (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int NOT NULL DEFAULT '1',
  `tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM AUTO_INCREMENT=705 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berita`
--

LOCK TABLES `berita` WRITE;
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
INSERT INTO `berita` VALUES (704,47,'admin','Mengenal Ramin (Gonystylus spp)','','','mengenal-ramin-gonystylus-spp','N','N','N','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Gonystylus spp yang nama perdagangannya ‘ramin’ termasuk dalam suku Thymelaeaceae yang keberadaannya di alam mulai langka. Upaya penyelamatan jenis ini dengan memasukkannya dalam Appendix II CITES.<br style=\"box-sizing: inherit;\">Di Pulau Sumatera, jenis kayu ramin dijumpai di kawasan sebelah timur mulai dari Riau hingga Sumatera Selatan (Bangka dan Ogan Komering Ilir). Di pulau Kalimantan, kayu jenis ramin bisa dijumpai di wilayah Kalimantan Barat, Kalimantan Tengah, dan sedikit di Kalimantan Timur.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><br style=\"box-sizing: inherit;\">Kayu jenis ramin telah lama dikenal sebagai penghasil produk kayu komersial dan memiliki harga jual yang cukup mahal sehingga digolongkan dalam kategori kayu indah. Penampakan fisik jenis ramin yang bertekstur halus membuat jenis ini cukup digemari di pasar kayu internasional. Harga jual dari produk jadi kayu ramin di pasar internasional saat ini telah mencapai US $ 1.000 per meter kubik. Tingginya harga jual dan besarnya kebutuhan pasar terhadap jenis kayu ini ternyata membuat maraknya kegiatan penebangan di kawasan hutan rawa gambut.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Produk yang dihasilkan umumnya berbentuk kayu olahan (sawn timber), produk setengah jadi (moulding, dowels) dan produk jadi (furniture, window blinds, snooker cues). Negara pengimpor jenis kayu ini antara lain Italia, Amerika Serikat, Taiwan, Jepang, China, dan Inggris (Shofiana, 2012).<br style=\"box-sizing: inherit;\">Untuk menunjang upaya konservasi ramin diperlukan kemampuan petugas lapangan serta para praktisi konservasi yang handal dalam hal identifikasi jenis. Pengalaman dalam berbagai survei lapangan menunjukkan bahwa seringkali terjadi salah identifikasi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Hal ini terjadi dikarenakan kemiripan penampakan morfologis antara jenis ramin dengan jenis lainnya dari marga maupun suku yang berbeda.<br style=\"box-sizing: inherit;\">Satu spesies yaitu Gonystylus bancanus sering melimpah sebagai spesies utama penyusun hutan rawa (gambut). Dengan ciri akar lutut, kulit batang cokelat kemerahan, beralur dangkal, retak dan bersisik.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kulit dalam kuning kecoklatan. Sedangkan untuk ciri fisik daun adalah daun jorong, atau bundar telur sungsang, panjang 4 – 14, 5 cm, lebar 2 – 7 cm, pangkal membaji hingga membundar, ujung membundar dan melancip-berekor pendek, tebal, tepi bergelombang dan agak membalik ke belakang, gundul, tulang primer beralur dalam di permukaan atas. Pertulangan daun rapat, tidak tampak jelas. Tangkai daun panjang 0,8 – 1,8 cm.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><br style=\"box-sizing: inherit;\">Teknik sederhana untuk mengenali jenis Ramin di lapangan dapat dilihat dari ciri fisiknya, seperti :<br style=\"box-sizing: inherit;\">1). Tekstur kulit berwarna coklat dengan beralur dangkal.<br style=\"box-sizing: inherit;\">2). Daun, untuk di lapangan hal ini sangat sulit karena daun akan berada di tempat yang tinggi dan bila melihat atau mencari daun yang jatuh kemungkinan akan susah karena bercampur dengan daun dari tumbuhan lainnya.<br style=\"box-sizing: inherit;\">3). Adanya akar yang keluar dari tanah berbentuk huruf U terbalik atau sering disebut akar lutut oleh warga lokal setempat.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">M. Dedi Susanto</p>','','Senin','2021-04-05','23:18:19','100131_620.jpg',0,'','Y'),(703,44,'admin','Menguak Keindahan Alam TWA Gunung Permisan','','','menguak-keindahan-alam-twa-gunung-permisan','N','N','N','<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Bangka, Agustus 2018 . Bagi pecinta wisata petualangan, menjelajahi hutan sambil mengamati ekosistem yang ada di dalamnya tentu menjadi aktivitas yang menyenangkan. Indonesia sebagai salah satu negara dengan kawasan hutan yang sangat luas dan menjadi habitat dari berbagai flora dan fauna langka, kerap menjadi salah satu tujuan wisata petualangan yang. Tak terkecuali hutan Taman Wisata Alam (TWA) Gunung Permisan yang ada di Bangka Selatan.</span></p><p><div style=\"text-align: center;\"><img src=\"http://localhost/bksda2/asset/images/TWAGP_7-768x512.jpg\" style=\"font-size: 1rem; width: 768px;\"></div><div style=\"text-align: left;\"><br></div></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kawasan TWA Gunung Permisan memiliki 5 (lima) bukit yaitu Bukit Nenek, Bukit Nangka, Bukit Meninjen Tua, Bukit Meninjen Muda, Bukit Jering. Selain itu terdapat gua sebagai tempat wisata religi oleh beberapa masyarakat sekitar. Potensi jasa lingkungan berupa jasa lingkungan air yaitu terdapat beberapa anak sungai di dalam kawasan. Potensi wisata yang dapat dikembangkan kawasan ini yaitu wisata gua di puncak Bukit Nenek yang sering dikunjungi masyarakat sekitar.</p><div><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Tracking untuk mencapai&nbsp; Puncak Bukit Nenek cukup terjal dengan berjalan kaki ± 1 Jam. Disekeliling track pendakian ditumbuhi berbagai jenis pohon seperti nyatoh (<em style=\"box-sizing: inherit;\">Palaquium</em>&nbsp;spp.), jelutung (<em style=\"box-sizing: inherit;\">Dyera</em>&nbsp;sp.), medang (<em style=\"box-sizing: inherit;\">Cinnamomum</em>&nbsp;spp.), melanding, embacang (<em style=\"box-sizing: inherit;\">Mangifera foetida</em>) dan pelawan (<em style=\"box-sizing: inherit;\">Tristaniopsis merguensis</em>) yang membuat udara sangat segar. Pengunjung yang melakukan tracking pada pagi hari akan menemui kabut dingin nan sejuk di dalam kawasan TWA Gunung Permisan. Selain itu masih banyak dijumpai fauna seperti ekor panjang (<em style=\"box-sizing: inherit;\">Macaca fascicularis</em>), lutung (<em style=\"box-sizing: inherit;\">Trachypithecus</em>&nbsp;sp.), tarsius (<em style=\"box-sizing: inherit;\">Tarsius bancanus</em>), beruk (<em style=\"box-sizing: inherit;\">Macaca nemestrina</em>) dan berbagai jenis burung yang akan menemani perjalanan pengunjung menuju puncak Bukit Nenek. Sesampainya di puncak Bukit Nenek, Pengunjung akan disuguhi pemandangan alam yang sangat indah. Hamparan Hutan di depan puncak Bukit Nenek sangat hijau dan udara yang sangat segar.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Menjelajahi Hutan Taman Wisata Alam Gunung Permisan khususnya di puncak Bukit nenek memang menjadi aktivitas yang menyenangkan. Hutan Indonesia yang kaya, menjadi habitat yang teduh bagi beranekaragam binatang langka. Tidak heran jika para peneliti dan pecinta wisata petualangan, baik dari dalam maupun luar negeri, berbondong-bondong ingin menjamah dan mengagumi hutan Indonesia. Sudah selayaknya masyarakat Indonesia menjadikan hutan sebagai bagian penting dalam kehidupan, dengan selalu menjaganya dan melestarikannya agar tidak rusak.</p></div><p><br></p>','','Senin','2021-04-05','23:09:59','TWAGP_8.jpg',0,'','Y'),(702,48,'admin','Upaya Penyelamatan Paus Terdampar Di Perairan Dangkal Selat Bangka','','','upaya-penyelamatan-paus-terdampar-di-perairan-dangkal-selat-bangka','N','N','N','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><span style=\"box-sizing: inherit; font-weight: 700;\">Ogan Komering Ilir, 27 Januari 2021</span>&nbsp;– Petugas Seksi Konservasi Wilayah III Balai KSDA Sumatera Selatan bersama dengan Pemerintah Kecamatan Tulung Selapan Kabupaten Ogan Komering Ilir (OKI) telah melakukan upaya penyelamatan satwa jenis Paus Sei (Balaenoptera borealis) yang terdampar di perairan laut dangkal Selat Bangka Ogan Komering Ilir Sumatera Selatan sejak tanggal 24 Januari 2021. Informasi adanya Paus terdampar diperoleh dari masyarakat Desa Simpang Tiga Jaya Kecamatan Tulung Selapan Kabupaten Ogan Komering Ilir, Sumatera Selatan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Paus Sei berukuran ± 10 meter dengan berat sekitar 2 ton ditemukan dengan luka sobek dipunggung, berwarna hitam keputihan. Setelah berkoordinasi dengan Camat Tulung Selapan dan berkonsultasi dengan drh. Langgeng, dosen Fakultas Kedokteran Hewan Universitas Sriwijaya penyebab terdamparnya Paus tersebut diduga karena sakit dan terpisah dari kelompoknya ketika melintas di lautan Selat Bangka.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Berdasarkan pemantauan yang dilakukan petugas dan masyarakat setempat, setelah digiring kembali ke perairan pada hari Senin (25/01), Paus tersebut diketahui sudah mengarah ke laut. Namun, pada hari Selasa (26/01), Paus tersebut kembali mengarah ke pantai. Menurut keterangan drh. Langgeng, upaya pertama yang dapat dilakukan jika Paus tersebut kembali yaitu minimal mengusahakan ada air yang menggenangi Paus tersebut. Kondisi luka tersebut akan rentan infeksi, sehingga perlu mencegah myiasis bertelur. Penanganan selanjutnya dapat dilakukan dengan cara membersihkan luka tersebut, bisa menggunakan revanol dan betadine untuk mengantisipasi timbulnya infeksi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Sampai dengan hari Rabu (27/01), Paus sudah lepas ke laut menjauhi daratan. Petugas BKSDA Sumsel bersama dengan unsur kecamatan Tulung Selapan dan desa Simpang Tiga Jaya masih melakukan pemantauan untuk memastikan Paus tersebut sudah benar-benar kembali ke habitat liarnya.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Direktur Jenderal KSDAE Wiratno yang diwakili Kepala Balai KSDA Sumsel menegaskan bahwa “Petugas kami akan tetap memantau, untuk memastikan Paus tersebut telah kembali ke laut dan tidak kembali ke daratan. Apresiasi setinggi-tingginya kami sampaikan kepada<br style=\"box-sizing: inherit;\">semua pihak yang telah berinisiatif dan tetap membangun suasana kondusif di TKP”.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Paus Sei (<em style=\"box-sizing: inherit;\">Balaenoptera borealis</em>) termasuk dalam daftar satwa dilindungi sesuai dengan Peraturan Menteri LHK Nomor P.106/MENLHK/SETJEN/KUM.1/12/2018 serta termasuk dalam Apendiks I CITES.</p><p class=\"has-small-font-size\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 0.8125em; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><span style=\"box-sizing: inherit; font-weight: 700;\">ig : @bksdasumsel<br style=\"box-sizing: inherit;\">fb : Bksda Sumatera Selatan<br style=\"box-sizing: inherit;\">twitter : @bksdasumsel</span></p><p class=\"has-small-font-size\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 0.8125em; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><span style=\"box-sizing: inherit; font-weight: 700;\">serta dimuat di http://ksdae.menlhk.go.id/berita/9153/upaya-penyelamatan-paus-terdampar-di-perairan-dangkal-selat-bangka.html</span></p>','','Senin','2021-04-05','23:07:02','WhatsApp-Image-2021-01-30-at-13_02_20-1-768x608.jpg',0,'','Y'),(701,47,'admin','Menilik Keindahan Anggrek Endemis Sumatra','','','menilik-keindahan-anggrek-endemis-sumatra','N','N','N','<h1 class=\"entry-title\" style=\"box-sizing: inherit; font-size: 1.625rem; margin-right: 0px; margin-bottom: 0.25em; margin-left: 0px; clear: both; line-height: 1.4; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">Sumatra merupakan salah satu hotspot jenis anggrek dunia, memiliki lebih dari 1100 jenis dan banyak diantaranya merupakan jenis anggrek endemis&nbsp;yang tumbuh dari dataran tinggi pegunungan dengan iklim dingin hingga dataran rendah dekat dengan pantai dengan iklim panas.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">#sobatksda, kali ini kita akan mengeksplorasi dua jenis anggrek ikonis Sumatra Selatan, yaitu&nbsp;<em style=\"box-sizing: inherit;\">Paphiopedilum superbiens&nbsp;</em>dan<em style=\"box-sizing: inherit;\">&nbsp;Vanda foetida</em>.<span style=\"box-sizing: inherit; font-weight: 700;\">&nbsp;</span>Balai Konservasi Sumber Daya Alam Sumatera Selatan (BKSDA Sumsel) telah mengupayakan pencegahan kepunahan lokal melalui kegiatan PENYELAMATAN dan RILIS. BKSDA Sumsel bersama dengan masyarakat sekitar kawasan konservasi dan mitra kerjasama telah melakukan penyelamatan flora anggrek dan berhasil mengidentifikasi sebanyak 249 jenis dari 68 genus.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\"><em style=\"box-sizing: inherit;\">Paphiopedilum superbiens</em><em style=\"box-sizing: inherit;\"></em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">Merupakan salah satu jenis anggrek langka endemis&nbsp;Sumatra yang dapat dijumpai di lanskap Provinsi Sumatra Selatan. Jenis ini memiliki keunikan bentuk bunga yang menyerupai sepatu atau kasut sehingga memiliki julukan anggrek kasut. Jenis ini juga memiliki keunikan pada daunnya yang bercorak seperti papan catur. Saat ini, anggrek Paphiopedilum superbiens termasuk dalam daftar status terancam (endangered) IUCN Redlist yang berarti anggrek ini sedang menghadapi resiko tinggi kepunahan di alam liar. Tidak hanya berstatus terancam bahkan anggrek ini berstatus Appendiks I CITES yang berarti anggrek jenis ini tidak bisa diperjual belikan secara bebas baik nasional maupun internasional kecuali dengan izin resmi dari pihak berwenang.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\"><em style=\"box-sizing: inherit;\">Vanda foetida</em><em style=\"box-sizing: inherit;\"></em></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">Merupakan jenis anggrek endemis&nbsp;dan hanya dijumpai di lanskap dataran tinggi Provinsi Sumatra Selatan. Jenis ini merupakan jenis anggrek vanda tercantik karena memiliki warna yang berbeda dari jenis vanda lainya yang berwarna coklat. Vanda foetida memiliki warna dasar putih dengan semburat warna merah muda dengan kelopak bunga membulat serta memiliki bau spesifik seperti sulfur. Jenis ini menyukai habitat yang dingin dengan sirkulasi udara baik serta menyukai matahari langsung.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\"><br></p><p style=\"text-align: center; box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\"><img src=\"http://localhost/bksda2/asset/images/IMG20201117081648-4-1024x1024.jpg\" style=\"width: 1024px;\"></p><p style=\"text-align: left; box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">PENYELAMATAN merupakan solusi, menitikberatkan pada semua jenis flora, khususnya anggrek, pada area yang terdegradasi maupun area yang diprediksi akan hilang baik di dalam maupun di luar kawasan konservasi. Hal ini merupakan tindakan krusial yang wajib dilakukan karena kita tidak dapat memprediksi kapan kawasan tersebut akan beralih fungsi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">RILIS merupakan tujuan akhir dari kegiatan penyelamatan yang dilakukan. Sebelum rilis, kita harus menentukan kandidat jenis yang akan dirilis, survei lokasi rilis dan monitoring flora pasca dirilis. Rilis dimaksudkan agar anggrek dapat berkembang biak secara alami di habitat yang baru guna menstabilkan populasi jenis anggrek di alam.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; font-size: 16px;\">Sampai dengan saat ini, jenis anggrek yang telah berhasil dirilis adalah jenis&nbsp;<em style=\"box-sizing: inherit;\">Vanda foetida</em>&nbsp;di Kawasan Suaka Margasatwa Isau-Isau. BKSDA Sumsel bekerjasama dengan masyarakat sekitar kawasan melakukan kegiatan pra rilis, yang sangat krusial adalah pemilihan lokasi rilis yang harus menyerupai lokasi anggrek tumbuh sebelumnya agar dapat meningkatkan tingkat keberhasilan anggrek untuk bertahan hidup.</p></h1>','','Senin','2021-04-05','23:04:21','IMG20201021145028-8-1024x1024.jpg',0,'','Y'),(700,44,'admin','Sosialisasi Kemitraan Konservasi, Petugas RKW III SM Bentayan Anjang Sana ke Rumah Penduduk','','','sosialisasi-kemitraan-konservasi-petugas-rkw-iii-sm-bentayan-anjang-sana-ke-rumah-penduduk','Y','N','Y','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Petugas Balai KSDA Sumatera Selatan melalui Resor Konservasi Wilayah III SM Bentayan melakukan anjangsana sekaligus sosialisasi kemitraan konservasi kepada masyarakat yang beraktivitas di dalam kawasan Suaka Margasatwa Bentayan, pada Selasa (9/3).</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Pada kesempatan tersebut, Anjas Tuberlani yang juga Kepala Resor menyampaikan bahwa pola kemitraan ini bertujuan untuk memulihkan ekosistem kawasan konservasi dengan melibatkan masyarakat sebagai subyek. Untuk itu, petugas Resor akan melakukan pendampingan dan memfasilitasi proses kemitraan konservasi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Merespon hal tersebut, maka sampai dengan saat ini sejumlah masyarakat mulai aktif mengikutsertakan diri dalam pendataan awal untuk berpartisipasi dalam kegiatan pemulihan ekosistem kawasan SM Bentayan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><em style=\"box-sizing: inherit;\">Sumber : Yusmono, S.Hut., M.Si. – Kepala SKW I Sekayu</em></p>','','Senin','2021-04-05','23:02:48','img7.jpg',0,'','Y'),(699,42,'admin','Sepakat Pelestarian Gajah Sumatera, BKSDA SUmsel Apresiasi Bupati Popo Ali','','','sepakat-pelestarian-gajah-sumatera-bksda-sumsel-apresiasi-bupati-popo-ali','N','N','Y','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">BKSDASUMSEL.ORG – Balai Konservasi Sumber Daya Alam Sumatera Selatan (BKSDA Sumsel) bersama dengan Universitas Muhammadiyah Palembang melalui program Tropical Forest Conservation Act Sumatera (TFCA-Sumatera) menginisiasi sinergi penanggulangan konflik antara manusia dengan gajah liar di wilayah Kabupaten Ogan Komering Ulu Selatan (OKUS). Inisiasi ini mendapat respon baik dari Bupati OKUS, Popo Ali Martopo melalui pertemuan yang digelar pada Rabu (17/3) di Ruang Rapat Terbatas Kantor Bupati OKUS. Pertemuan ini dipimpin langsung oleh Bupati dan Wakil Bupati OKUS dengan dihadiri unsur pemerintahan Kabupaten OKUS terkait, KPH Wilayah VII Mekakau Saka, Koramil, dan Polsek serta 5 Kecamatan dan 18 Desa lingkup Kabupaten OKUS yang wilayahnya berada di sekitar kantong habitat gajah liar yang rawan konflik. Pertemuan tersebut menghasilkan kesepakatan para pihak mengenai pentingnya upaya penyelamatan dan pelestarian Gajah Sumatera (Elephas maximus sumatranus), yang akan ditindaklanjuti dengan pembentukan Satuan Tugas (Satgas) Penanggulangan Konflik antara Manusia dengan Satwa Liar dan penyusunan rencana aksi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Dalam pertemuan yang digelar tersebut, Popo Ali menyampaikan bahwa pemerintahan Kabupaten OKUS memberikan dukungan terhadap kesepakatan yang dihasilkan dan siap memfasilitasi kebutuhan Satgas. Kesepakatan tersebut menjadi momentum penguatan komitmen para pihak dalam melestarikan Gajah sumatera, yang berarti juga menyelamatkan fungsi ekologis habitatnya, salah satunya Suaka Margasatwa Gunung Raya. Masing-masing pihak tentunya tidak dapat bekerja sendiri, sehingga kerjasama multipihak harus diinisiasi agar terbangun kesadaran bersama yang berlanjut dengan aksi bersama di dalam pelestarian Gajah Sumatera, khususnya di wilayah Kabupaten OKUS.</p><p style=\"text-align: center; box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\"><img src=\"http://localhost/bksda2/asset/images/img6.jpg\" style=\"width: 1024px;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\"><br></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Gajah Sumatera (Elephas maximus sumatranus) merupakan satwa endemik Sumatera yang masuk dalam daftar satwa dilindungi melalui Peraturan Menteri Lingkungan Hidup dan Kehutanan Nomor P.106/MENLHK/SETJEN/KUM.1/12/2018 dan daftar merah IUCN (International Union for Conservation of Nature) sebagai satwa terancam punah (critically endangered) serta daftar Appendix I CITES (Convertion on International Trade In Endangered Species of Wild Fauna and Flora).</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Secara umum, masyarakat OKUS menyadari pentingnya peran dan keberadaan Gajah sumatera sebagai satwa dilindungi. Namun demikian, pelbagai peristiwa yang terjadi beberapa waktu ke belakang, seperti yang telah terjadi 3 Kecamatan yaitu Buana Pemaca, Buay Pemaca, dan Mekakau Ilir, bahwa kemunculan gajah di beberapa titik rawan aktivitas masyarakat perlu mendapat perhatian untuk ditangani segera.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Kepala BKSDA Sumsel, Ujang Wisnu Barata, mengapresiasi langkah Bupati OKUS yang telah memberikan fasilitasi dan dukungan dalam membangun “gentlement’s agreement”, sebagai landasan awal bagi semua pihak terkait untuk mengaktualisasikan komitmen dalam mewujudkan harmonisasi antara konservasi keanekaragaman hayati dengan kesejahteraan masyarakat.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">*Julita Pitria – Balai KSDA Sumatera Selatan</p>','','Senin','2021-04-05','22:59:57','img5.jpg',0,'','Y'),(698,41,'admin','SEMARAK HARI BAKTI RIMBAWAN KE-38, BKSDA SUMSEL LAKUKAN PENANAMAN DAN PENYULUHAN','','','semarak-hari-bakti-rimbawan-ke38-bksda-sumsel-lakukan-penanaman-dan-penyuluhan','N','N','N','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Hai #sobatksda, bulan Maret ini kita memiliki hari peringatan besar bagi Rimbawan di seluruh penjuru tanah air, yaitu Hari Bakti Rimbawan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">16 Maret 2021, merupakan peringatan ke-38, yang artinya 38 tahun sudah kita melaksanakan selebrasi sebagai wujud syukur, bakti terhadap alam dan negara.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Dalam sebuah pesan Direktur Jenderal Konservasi Sumber Daya Alam dan Ekosistem, Wiratno, yang disampaikan melalui Amanat Kepala Balai pada Apel Peringatan Hari Bakti Rimbawan ke-38 lingkup Balai Konservasi Sumber Daya Alam Sumatera Selatan (BKSDA Sumsel), “Konservasi adalah jalan hidup yang dipilihkan Tuhan. Jadi kita hanya wajib melaksanakannya dengan sebaiknya-baiknya. Dengan kerja tuntas, kerja ikhlas, dan kerja keras”</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Pada peringatan tahun ini, yang juga merupakan rangkaian Road to Hari Konservasi Alam Nasional (HKAN) 2021, dimana lokasi puncak kegiatan peringatan HKAN tahun 2021 adalah di Kota Kupang, Nusa Tenggara Timur, tepatnya di area Taman Wisata Alam Laut (TWAL) Teluk Kupang dan Pantai Lasiana. Kedua calon lokasi tersebut letaknya merupakan satu hamparan yang saling berhubungan. Dalam kegiatan tersebut, BKSDA Sumsel melaksanakan 2 kegiatan, yaitu penanaman pohon dan penyuluhan pengelolaan sampah rumah tangga.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kegiatan dilaksanakan di Taman Wisata Alam (TWA) Punti Kayu Palembang dan sekitarnya, pada Sabtu (20/3) dengan melibatkan seluruh staf Balai KSDA Sumsel yang berdomisili di Palembang dan perwakilan Dharma Wanita Persatuan BKSDA Sumsel, serta Pemegang Ijin Pengusahaan Pariwisata Alam PT Indosuma Putra Citra.&nbsp; Dalam prosesnya, seluruh kegiatan dapat berjalan dengan baik dan menaati anjuran protokol kesehatan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">PENANAMAN POHON</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kegiatan penanaman pohon dilaksanakan di Blok Pemanfaatan TWA Punti Kayu dengan jumlah bibit sebanyak 150 batang. Jenis yang ditanam terdiri atas tanaman kayu-kayuan dan buah-buahan seperti Ketapang (<em style=\"box-sizing: inherit;\">Terminalia catappa</em>), Mahoni (<em style=\"box-sizing: inherit;\">Swietenia&nbsp;</em>sp.), Sengon (<em style=\"box-sizing: inherit;\">Paraserianthes falcataria</em>), Jelutung (<em style=\"box-sizing: inherit;\">Dyera costulata</em>), Salam (<em style=\"box-sizing: inherit;\">Syzigium polyanthum</em>), dan Nangka (<em style=\"box-sizing: inherit;\">Artocharpus heterophyllus</em>).</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">PENYULUHAN PENGELOLAAN SAMPAH RUMAH TANGGA</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kegiatan penyuluhan dilaksanakan di Kelurahan Srijaya dengan peserta para ibu rumah tangga wilayah setempat yang dikoordinir Dharma Wanita Persatuan BKSDA Sumsel. Ketua Dharma Wanita BKSDA Sumsel menyampaikan apresiasi atas semangat dan partisipasi aktif peserta penyuluhan serta mendorong upaya sinergi pengelolaan sampah rumah tangga agar meningkatkan nilai manfaatnya. Selanjutnya, dalam rangka optimalisasi pengelolaan sampah rumah tangga, BKSDA Sumsel turut menyampaikan dukungan melalui penyediaan tong sampah yang diserahkan langsung oleh Ketua Dharma Wanita Persatuan BKSDA Sumsel.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Salam konservasi! Huu Haa Huu Haa Huu Haa</p>','','Senin','2021-04-05','22:58:42','img4.jpg',0,'','Y'),(697,41,'admin','Virtual Journey, Siswa SAI Palembang Belajar Konservasi Gajah Sumatera di SM Padang Sugihan','','','virtual-journey-siswa-sai-palembang-belajar-konservasi-gajah-sumatera-di-sm-padang-sugihan','Y','Y','Y','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">BKSDASUMSEL.ORG – Balai Konservasi Sumber Daya Alam Sumatera Selatan melalui Resort Konservasi Wilayah XV Pusat Latihan Gajah (RKW XV PLG) Padang Sugihan menerima kunjungan edukasi sejumlah Guru Sekolah Alam Indonesia (SAI) Palembang. Kunjungan tersebut berlangsung selama 3 hari, mulai 16 sampai dengan 18 Maret 2021 bertempat di RKW XV PLG Padang Sugihan dan sekitarnya.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kegiatan yang diberi judul “Virtual Journey : Ekspedisi Suaka Margasatwa Padang Sugihan”, dimaksudkan sebagai sarana pembelajaran virtual bagi siswa/i kelas 4 sampai dengan 6, dengan materi antara lain klasifikasi makhluk hidup, pengenalan ekosistem gambut, dan konservasi gajah sumatera.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Guru SAI Palembang menayangkan siaran langsung tentang habitat dan perilaku aktivitas harian gajah binaan serta diskusi dan tanya jawab antara petugas resor yang diwakili polisi kehutanan, paramedis, dan mahout&nbsp; dengan siswa/i SAI Palembang. Kemudian, dilanjutkan dengan keikutsertaan guru melakukan penanaman pohon jenis sungkai (<em style=\"box-sizing: inherit;\">Peronema canescens</em>), bintaro (<em style=\"box-sizing: inherit;\">Cerbera manghas</em>), dan belangiran (<em style=\"box-sizing: inherit;\">Shorea</em>&nbsp;sp) di PLG Padang Sugihan.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Selain itu, siswa/i juga berinisiatif mengumpulkan donasi bersama dalam bentuk bantuan nutrisi pakan gajah binaan berupa buah-buahan dan bantuan sembako untuk masyarakat desa sekitar di desa Sidomulyo yang dititipkan melalui para guru tersebut.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Terima kasih adik-adik SAI Palembang yang telah bersemangat mengikuti “Virtual Journey”. Semoga masa pandemi COVID-19 dapat segera berakhir, dan adik-adik dapat bercengkerama langsung ke Pusat Latihan Gajah Padang Sugihan, ya!</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">*<em style=\"box-sizing: inherit;\">Dwi Wiprabowo – Balai KSDA Sumatera Selatan</em></p>','','Senin','2021-04-05','22:56:35','img3.jpg',0,'','Y'),(695,46,'admin','Terperangkap Jerat Babi, BKSDA Sumsel Berhasil Evakuasi Beruang Madu','','','terperangkap-jerat-babi-bksda-sumsel-berhasil-evakuasi-beruang-madu','Y','Y','Y','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">BKSDASUMSEL.ORG – Balai KSDA Sumatera Selatan (BKSDA Sumsel) melalui Seksi Konservasi Wilayah (SKW) II Lahat bersama Unit Pidana Khusus (Pidsus) Polres Lahat berhasil mengevakuasi seekor Beruang madu yang terperangkap jerat babi di daerah Talang Kabu, Pagar Agung, Lahat pada Selasa (30/3). Informasi satwa dilindungi yang terjerat tersebut bermula dari laporan yang disampaikan Unit Pidsus Polres Lahat.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Saat tim datang, beruang dewasa berjenis kelamin jantan tersebut dalam kondisi hidup dan terjerat pada bagian tangan kanan. Sedangkan bagian tangan kiri terluka, membengkak serta memar. Lokasi temuan tersebut, kondisi vegetasinya berupa semak belukar dan perkebunan warga. Sampai dengan saat ini, beruang tersebut masih dalam perawatan dan penanganan medis sebelum dilepasliarkan kembali ke habitatnya.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Sebagai langkah antisipatif ke depannya, petugas SKW II Lahat menghimbau masyarakat agar segera melapor ke perangkat desa setempat ataupun call center BKSDA Sumsel apabila menjumpai adanya pergerakan satwa liar, terutama jenis satwa dilindungi sehingga dapat segera diupayakan penyelamatannya.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Yuk, sama-sama kita peduli dan sayangi satwa!</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Jangan lagi pasang jerat, karena itu akan membuat satwa sekarat</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\">Bila tetap pasang jerat, tunggu saja nanti ada aparat</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: \"Libre Franklin\", \"Helvetica Neue\", helvetica, arial, sans-serif;\"><em style=\"box-sizing: inherit;\">Call center 0812-7141-2141</em></p>','Dok : SKW II Lahat','Senin','2021-04-05','22:41:01','img1.jpg',0,'','Y'),(696,41,'admin','Bahas RPJP TN Gunung Maras, BKSDA Sumsel Gelar Konsultasi Publik','','','bahas-rpjp-tn-gunung-maras-bksda-sumsel-gelar-konsultasi-publik','Y','N','Y','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">BKSDASUMSEL.ORG – Provinsi Kepulauan Bangka Belitung merupakan 1 dari 2 wilayah kerja Balai Konservasi Sumber Daya Alam Sumatera Selatan (BKSDA Sumsel). Di Provinsi ini, BKSDA Sumsel mengelola 3 kawasan konservasi yaitu TWA Gunung Permisan, TWA Jering Menduyung, dan TN Gunung Maras. Ketiganya ditetapkan status fungsinya sejak tahun 2016, sehingga sampai dengan saat ini fokus pengelolaan termasuk dalam hal perencanaan kawasan, seperti yang dilakukan pada Kamis (25/3) di kota Pangkalpinang melalui kegiatan “Konsultasi Publik Rencana Penyusunan Pengelolaan Jangka Panjang (RPJP) Taman Nasional (TN) Gunung Maras periode 2021-2030”.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Kegiatan ini dibuka oleh Kepala BKSDA Sumsel, Ujang Wisnu Barata, dengan dihadiri sebanyak 30 orang dari unsur pemerintahan Provinsi Kepulauan Bangka Belitung, Kabupaten Bangka dan Kabupaten Bangka Barat, Kecamatan dan Desa sekitar TN Gunung Maras, UPT Kementerian LHK lingkup Provinsi Kepulauan Bangka Belitung, Universitas Bangka Belitung, Yayasan ALOBI, Kelompok Pecinta Alam setempat serta turut hadir Ketua Komisi III DPRD Kepulauan Bangka Belitung.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Rangkaian acara terdiri atas pemaparan narasumber, Rudijanta Tjahja Nugraha dari Direktorat Kawasan Konservasi dengan materi “Menetapkan Nilai Penting Kawasan dalam Rangka Pengelolaani” dan, Martini dari Bappeda Provinsi Kepulauan Bangka Belitung dengan materi “Perspektif Taman Nasional (TN) Gunung Maras dalam Perencanaan Pembangunan Provinsi Kepulauan Bangka Belitung”. Kemudian, dilanjutkan dengan pembahasan draf RPJP oleh Tim Penyusun beserta diskusi, dan ditutup dengan penandatanganan berita acara Konsultasi Publik.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Apresiasi atas respon para peserta yang luar biasa dalam menyampaikan pendapat dan tanggapan serta memberikan berbagai masukan untuk penyempurnaan draf RPJP.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">Gracias!</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">*<em style=\"box-sizing: inherit;\">Sriayu Setiawati – Staf Balai KSDA Sumatera Selatan</em></p>','','Senin','2021-04-05','22:55:18','img2.jpg',0,'','Y');
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download` (
  `id_download` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id_gallery` int NOT NULL AUTO_INCREMENT,
  `id_album` int NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (238,30,'admin','Lautan Penonton','lautan-penonton','Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n',''),(237,30,'admin','Mengenang WS. Rendra','mengenang-ws-rendra','Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n',''),(240,31,'admin','Doa Bersamaaa','doa-bersamaaa','<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n',''),(239,30,'admin','Semangat Kantata','semangat-kantata','Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n',''),(236,30,'admin','Iwan Fals','iwan-fals','Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n',''),(235,30,'admin','Iwan dan Oemar Bakrie','iwan-dan-oemar-bakrie','Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n',''),(234,30,'admin','Bento...Bento..!!','bentobento','Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n',''),(232,29,'admin','Karpet Raksasa dari Bunga 008','karpet-raksasa-dari-bunga-008','sdasdasd',''),(233,30,'admin','Sujud Syukur','sujud-syukur','Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n',''),(231,29,'admin','Karpet Raksasa dari Bunga 007','karpet-raksasa-dari-bunga-007','',''),(230,29,'admin','Karpet Raksasa dari Bunga 006','karpet-raksasa-dari-bunga-006','',''),(229,29,'admin','Karpet Raksasa dari Bunga 005','karpet-raksasa-dari-bunga-005','',''),(228,29,'admin','Karpet Raksasa dari Bunga 004','karpet-raksasa-dari-bunga-004','',''),(227,29,'admin','Karpet Raksasa dari Bunga 003','karpet-raksasa-dari-bunga-003','',''),(225,29,'admin','Karpet Raksasa dari Bunga 001','karpet-raksasa-dari-bunga-001','',''),(226,29,'admin','Karpet Raksasa dari Bunga 002','karpet-raksasa-dari-bunga-002','',''),(224,28,'admin','Favorit','favorit','Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n',''),(223,28,'admin','Suasana Pasar Asemka','suasana-pasar-asemka','Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n',''),(222,28,'admin','Petasan','petasan','Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n',''),(221,28,'admin','Merah Marun','merah-marun','Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n',''),(220,28,'admin','Menata Cincin','menata-cincin','Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n',''),(219,28,'admin','Suvenir','suvenir','Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n',''),(218,28,'admin','Seorang Wanita Pedagang','seorang-wanita-pedagang','Seorang wanita sedang menunggu kios aksesorisnya.\r\n',''),(217,28,'admin','Suasana Pasar','suasana-pasar','Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n',''),(216,28,'admin','Pedagang','pedagang','Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n',''),(254,1,'admin','Screenshot 1 ','screenshot-1-','Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ',''),(261,53,'admin','Punti Kayu','punti-kayu','','TWAPK_1-768x512.jpg'),(262,53,'admin','Punti Kayu','punti-kayu','','TWAPK_4-768x511.jpg'),(263,53,'admin','Punti Kayu','punti-kayu','','TWAPK_2-768x512.jpg'),(264,53,'admin','Punti Kayu','punti-kayu','','TWAPK_5-768x512.jpg');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambaratas`
--

DROP TABLE IF EXISTS `gambaratas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gambaratas` (
  `id_gambaratas` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_gambaratas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambaratas`
--

LOCK TABLES `gambaratas` WRITE;
/*!40000 ALTER TABLE `gambaratas` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambaratas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gambartengah`
--

DROP TABLE IF EXISTS `gambartengah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gambartengah` (
  `id_gambartengah` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gambartengah`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gambartengah`
--

LOCK TABLES `gambartengah` WRITE;
/*!40000 ALTER TABLE `gambartengah` DISABLE KEYS */;
/*!40000 ALTER TABLE `gambartengah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halamanstatis`
--

DROP TABLE IF EXISTS `halamanstatis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `halamanstatis` (
  `id_halaman` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halamanstatis`
--

LOCK TABLES `halamanstatis` WRITE;
/*!40000 ALTER TABLE `halamanstatis` DISABLE KEYS */;
INSERT INTO `halamanstatis` VALUES (53,'Visi & Misi','visi--misi','<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><b>Visi</b></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\">“Terwujudnya Indonesia yang Berdaulat, Mandiri dan Berkepribadian&nbsp;Berlandaskan Gotong Royong”.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><span style=\"font-size: 1rem;\"><b>Misi</b></span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><b></b></p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5em; margin-left: 0px; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(51, 51, 51); font-family: &quot;Libre Franklin&quot;, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif;\"><li style=\"box-sizing: inherit;\">Mewujudkan keamanan nasional yang mampu menjaga kedaulatan wilayah, menopang kemandirian ekonomi dengan mengamankan sumber daya maritim, dan mencerminkan kepribadian Indonesia sebagai negara&nbsp;kepulauan;</li><li style=\"box-sizing: inherit;\">Mewujudkan masyarakat maju, berkeseimbangan dan demokratis berlandaskan negara hukum;</li><li style=\"box-sizing: inherit;\">Mewujudkan politik luar negeri bebas-aktif dan memperkuat jati diri&nbsp;sebagai negara maritim;</li><li style=\"box-sizing: inherit;\">Mewujudkan kualitas hidup manusia Indonesia yang tinggi, maju dan sejahtera;</li><li style=\"box-sizing: inherit;\">Mewujudkan bangsa yang berdaya-saing;</li><li style=\"box-sizing: inherit;\">Mewujudkan Indonesia menjadi negara maritim yang mandiri, maju,&nbsp;kuat, dan berbasiskan kepentingan nasional; serta;</li><li style=\"box-sizing: inherit;\">Mewujudkan masyarakat yang berkepribadian dalam kebudayaan.&nbsp;</li></ol>','2021-04-05','','admin',1,'22:34:56','Senin'),(52,'Tentang Kami BKSDA Sumsel','tentang-kami-bksda-sumsel','<p>BKSDA</p>','2021-04-05','','admin',2,'22:25:24','Senin'),(54,'Organisasi','organisasi','<p>Struktur Organisasi</p>','2021-04-05','','admin',4,'22:35:27','Senin'),(55,'Publikasi','publikasi','','2021-04-25','','admin',1,'21:55:06','Minggu');
/*!40000 ALTER TABLE `halamanstatis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header` (
  `id_header` int NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES (31,'Header3','','header3.jpg','2011-04-06'),(32,'Header2','','header1.jpg','2011-04-06'),(33,'Header1','','header2.jpg','2011-04-06');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hubungi`
--

DROP TABLE IF EXISTS `hubungi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hubungi` (
  `id_hubungi` int NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pesan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubungi`
--

LOCK TABLES `hubungi` WRITE;
/*!40000 ALTER TABLE `hubungi` DISABLE KEYS */;
/*!40000 ALTER TABLE `hubungi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identitas`
--

DROP TABLE IF EXISTS `identitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identitas` (
  `id_identitas` int NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identitas`
--

LOCK TABLES `identitas` WRITE;
/*!40000 ALTER TABLE `identitas` DISABLE KEYS */;
INSERT INTO `identitas` VALUES (1,'BKSDA Sumatera Selatan','admin@bksdasumsel.org','https://bksdasumsel.org/','https://www.facebook.com/bksda.s.selatan, \r\nhttps://twitter.com/bksdasumsel, \r\nhttps://www.instagram.com/bksdasumsel','','081271412141','BKSDA Sumatera Selatan (Balai Konservasi Sumber Daya Alam) ','balai, konservasi, sumber, daya, alam, sda, sumatera, selatan, gajah, harimau, hewan, langka, flora, fauna','20170830013425.png','https://www.google.com/maps/place/BKSDA+Sumsel/@-2.948127,104.7292324,17z/data=!3m1!4b1!4m5!3m4!1s0x2e3b74378315c839:0xe583894170f8fae0!8m2!3d-2.948127!4d104.7314211');
/*!40000 ALTER TABLE `identitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katajelek`
--

DROP TABLE IF EXISTS `katajelek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `katajelek` (
  `id_jelek` int NOT NULL,
  `kata` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jelek`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katajelek`
--

LOCK TABLES `katajelek` WRITE;
/*!40000 ALTER TABLE `katajelek` DISABLE KEYS */;
INSERT INTO `katajelek` VALUES (4,'sex','','s**'),(2,'bajingan','','b*******'),(3,'bangsat','','b******'),(5,'fuck','admin','f**k'),(6,'pantat','admin','p****t');
/*!40000 ALTER TABLE `katajelek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int NOT NULL,
  `gambar_utama` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (36,'Komunitas','admin','komunitas','Y',9,''),(40,'Pengumuman','admin','pengumuman','Y',8,''),(41,'Kegiatan','admin','kegiatan','Y',6,''),(42,'Tokoh','admin','tokoh','Y',10,''),(44,'Kawasan','admin','kawasan','Y',11,''),(46,'Fauna','admin','fauna','Y',7,''),(47,'Flora','admin','flora','Y',13,''),(48,'Satwa Dilindungi','admin','satwa-dilindungi','Y',5,'');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komentar`
--

DROP TABLE IF EXISTS `komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `komentar` (
  `id_komentar` int NOT NULL,
  `id_berita` int NOT NULL,
  `nama_komentar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komentar`
--

LOCK TABLES `komentar` WRITE;
/*!40000 ALTER TABLE `komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komentarvid`
--

DROP TABLE IF EXISTS `komentarvid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `komentarvid` (
  `id_komentar` int NOT NULL,
  `id_video` int NOT NULL,
  `nama_komentar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komentarvid`
--

LOCK TABLES `komentarvid` WRITE;
/*!40000 ALTER TABLE `komentarvid` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentarvid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_skpd`
--

DROP TABLE IF EXISTS `link_skpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_skpd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `gambar` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_skpd`
--

LOCK TABLES `link_skpd` WRITE;
/*!40000 ALTER TABLE `link_skpd` DISABLE KEYS */;
INSERT INTO `link_skpd` VALUES (5,'Kementerian LHK','New_Project_(1).png','https://www.menlhk.go.id/','Y');
/*!40000 ALTER TABLE `link_skpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logo`
--

DROP TABLE IF EXISTS `logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logo` (
  `id_logo` int NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logo`
--

LOCK TABLES `logo` WRITE;
/*!40000 ALTER TABLE `logo` DISABLE KEYS */;
INSERT INTO `logo` VALUES (15,'20170830013425.png');
/*!40000 ALTER TABLE `logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `id_parent` int NOT NULL DEFAULT '0',
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (172,170,'Suaka Margasatwa','#','Ya','Bottom',8),(13,149,'Visi & Misi','halaman/detail/visi--misi','Ya','Bottom',4),(116,0,'Hubungi Kami','hubungi','Ya','Top',2),(119,0,'Peraturan','#','Ya','Bottom',9),(149,0,'Profil','#','Ya','Bottom',3),(173,0,'Publikasi','halaman/detail/publikasi','Ya','Bottom',15),(187,119,'Peraturan Lainnya','#','Ya','Bottom',13),(181,119,'Peraturan Pemerintah','#','Ya','Bottom',10),(182,119,'Undang Undang','#','Ya','Bottom',11),(183,119,'Peraturan Menteri','#','Ya','Bottom',12),(15,0,'Perizinan','#','Ya','Bottom',14),(170,0,'Kawasan Konservasi','#','Ya','Bottom',6),(171,170,'Taman Nasional','#','Ya','Bottom',7),(112,149,'Organisasi','halaman/detail/organisasi','Ya','Bottom',5),(113,0,'Tentang Kami','halaman/detail/tentang-kami-bksda-sumsel','Ya','Top',1),(188,0,'Galeri','#','Ya','Bottom',16);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_alamat`
--

DROP TABLE IF EXISTS `mod_alamat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mod_alamat` (
  `id_alamat` int NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_alamat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_alamat`
--

LOCK TABLES `mod_alamat` WRITE;
/*!40000 ALTER TABLE `mod_alamat` DISABLE KEYS */;
INSERT INTO `mod_alamat` VALUES (1,'<p><strong>Haloo!</strong>, kami BKSDA Sumatera Selatan<br>\r\n<br><b>BKSDA SUMATERA SELATAN</b><br></p>\r\n');
/*!40000 ALTER TABLE `mod_alamat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mod_ym`
--

DROP TABLE IF EXISTS `mod_ym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mod_ym` (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_ym`
--

LOCK TABLES `mod_ym` WRITE;
/*!40000 ALTER TABLE `mod_ym` DISABLE KEYS */;
/*!40000 ALTER TABLE `mod_ym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modul`
--

DROP TABLE IF EXISTS `modul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modul` (
  `id_modul` int NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modul`
--

LOCK TABLES `modul` WRITE;
/*!40000 ALTER TABLE `modul` DISABLE KEYS */;
INSERT INTO `modul` VALUES (2,'Manajemen User','admin','manajemenuser','','','Y','user','Y',0,''),(18,'Berita','admin','listberita','','','Y','user','Y',0,''),(71,'Background Website','admin','background','','','N','admin','N',0,''),(10,'Manajemen Modul','admin','manajemenmodul','','','Y','user','Y',0,''),(31,'Kategori Berita ','admin','kategorikategori','','','Y','user','Y',0,''),(33,'Jajak Pendapat','admin','jajakpendapat','','','Y','user','Y',0,''),(34,'Tag Berita','admin','tagberita','','','Y','user','Y',0,''),(35,'Komentar Berita','admin','komentarberita','','','Y','user','Y',0,''),(41,'Agenda','admin','agenda','','','Y','user','Y',0,''),(43,'Berita Foto','admin','album','','','Y','user','Y',0,''),(44,'Galeri Berita Foto','admin','gallery','','','Y','user','Y',0,''),(45,'Template Website','admin','templatewebsite','','','Y','user','Y',0,''),(46,'Sensor Kata','admin','sensorkomentar','','','Y','user','Y',0,''),(61,'Identitas Website','admin','identitaswebsite','','','Y','user','Y',0,''),(57,'Menu Website','admin','menuwebsite','','','Y','user','Y',0,''),(59,'Halaman Baru','admin','halamanbaru','','','Y','user','Y',0,''),(62,'Video','admin','video','','','Y','user','Y',0,''),(63,'Playlist Video','admin','playlist','','','Y','user','Y',0,''),(64,'Tag Video','admin','tagvideo','','','Y','user','Y',0,''),(65,'Komentar Video','admin','komentarvideo','','','Y','user','Y',0,''),(66,'Logo Website','admin','logowebsite','','','Y','user','Y',0,''),(67,'Iklan Sidebar','admin','iklansidebar','','','N','admin','N',0,''),(68,'Iklan Home','admin','iklanhome','','','N','admin','N',0,''),(69,'Iklan Atas','admin','iklanatas','','','N','admin','N',0,''),(70,'Pesan Masuk','admin','pesanmasuk','','','Y','user','Y',0,''),(72,'Sekilas Info','admin','sekilasinfo','','','N','admin','N',0,''),(73,'Yahoo Messanger','admin','ym','','','N','admin','N',0,''),(74,'Download Area','admin','download','','','Y','admin','Y',0,''),(75,'Alamat Kontak','admin','alamat','','','Y','admin','Y',0,'');
/*!40000 ALTER TABLE `modul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasanggambar`
--

DROP TABLE IF EXISTS `pasanggambar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pasanggambar` (
  `id_pasanggambar` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `source` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_pasanggambar`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasanggambar`
--

LOCK TABLES `pasanggambar` WRITE;
/*!40000 ALTER TABLE `pasanggambar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pasanggambar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL,
  `jdl_playlist` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_playlist`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poling`
--

DROP TABLE IF EXISTS `poling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poling` (
  `id_poling` int NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poling`
--

LOCK TABLES `poling` WRITE;
/*!40000 ALTER TABLE `poling` DISABLE KEYS */;
INSERT INTO `poling` VALUES (3,'Cukup','Jawaban','admin',0,'Y'),(2,'Bagus','Jawaban','admin',0,'Y'),(1,'Apakah Web BKSDA Sumsel ini sudah bagus?','Pertanyaan','admin',0,'Y'),(4,'Kurang','Jawaban','admin',0,'Y');
/*!40000 ALTER TABLE `poling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekilasinfo`
--

DROP TABLE IF EXISTS `sekilasinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sekilasinfo` (
  `id_sekilas` int NOT NULL,
  `info` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekilasinfo`
--

LOCK TABLES `sekilasinfo` WRITE;
/*!40000 ALTER TABLE `sekilasinfo` DISABLE KEYS */;
INSERT INTO `sekilasinfo` VALUES (0,'Kegiatan ','2021-04-05','img3.jpg','Y');
/*!40000 ALTER TABLE `sekilasinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistik`
--

DROP TABLE IF EXISTS `statistik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistik`
--

LOCK TABLES `statistik` WRITE;
/*!40000 ALTER TABLE `statistik` DISABLE KEYS */;
INSERT INTO `statistik` VALUES ('::1','2021-04-26',42,'1619372582'),('::1','2021-04-25',139,'1619369984'),('::1','2021-04-22',152,'1619100232'),('::1','2021-04-06',66,'1617708608'),('119.110.72.130','2015-06-03',4,'1433302761'),('89.145.95.2','2015-06-03',1,'1433302690'),('66.249.71.147','2015-06-07',46,'1433696370'),('66.249.71.130','2015-06-07',30,'1433696150'),('66.249.71.164','2015-06-07',37,'1433696154'),('173.252.74.113','2015-06-07',8,'1433694061'),('173.252.74.117','2015-06-07',3,'1433676319'),('66.249.64.57','2015-06-07',1,'1433674283'),('173.252.88.89','2015-06-07',5,'1433677999'),('173.252.88.86','2015-06-07',2,'1433677597'),('173.252.74.119','2015-06-07',7,'1433694862'),('66.249.79.117','2015-06-07',1,'1433674983'),('173.252.88.84','2015-06-07',2,'1433676738'),('173.252.74.115','2015-06-07',3,'1433676460'),('173.252.74.114','2015-06-07',2,'1433694204'),('173.252.74.118','2015-06-07',3,'1433676180'),('173.252.74.112','2015-06-07',5,'1433695314'),('173.252.88.85','2015-06-07',2,'1433677804'),('173.252.88.90','2015-06-07',1,'1433676251'),('173.252.74.116','2015-06-07',5,'1433695249'),('173.252.88.87','2015-06-07',2,'1433677488'),('173.252.88.88','2015-06-07',1,'1433677370'),('66.249.79.130','2015-06-07',1,'1433694848'),('66.220.156.116','2015-06-07',2,'1433696197'),('66.249.67.104','2015-06-07',1,'1433696147'),('66.220.156.112','2015-06-07',2,'1433696173'),('66.220.146.22','2015-06-07',1,'1433696162'),('66.249.67.117','2015-06-07',1,'1433696288'),('66.220.156.114','2015-06-07',1,'1433696309'),('66.220.156.117','2015-06-08',3,'1433711204'),('66.249.71.164','2015-06-08',32,'1433779112'),('66.220.146.25','2015-06-08',2,'1433736854'),('66.220.156.116','2015-06-08',2,'1433709422'),('66.249.71.147','2015-06-08',29,'1433748751'),('66.220.156.112','2015-06-08',4,'1433715007'),('66.220.146.20','2015-06-08',1,'1433696744'),('66.249.71.130','2015-06-08',38,'1433777391'),('66.220.156.118','2015-06-08',2,'1433712628'),('66.220.146.27','2015-06-08',1,'1433712556'),('66.220.146.26','2015-06-08',1,'1433712746'),('66.249.67.104','2015-06-08',4,'1433746797'),('66.220.146.22','2015-06-08',1,'1433714244'),('66.220.156.115','2015-06-08',2,'1433714821'),('66.249.67.117','2015-06-08',2,'1433780504'),('120.176.251.49','2015-06-08',2,'1433737104'),('66.220.156.119','2015-06-08',1,'1433737457'),('66.249.71.147','2015-06-09',3,'1433836081'),('66.249.71.130','2015-06-09',4,'1433835126'),('66.249.67.104','2015-06-09',1,'1433788622'),('66.249.71.164','2015-06-09',1,'1433823064'),('66.249.71.130','2015-06-10',5,'1433953790'),('66.249.67.117','2015-06-10',1,'1433911605'),('66.249.71.164','2015-06-10',3,'1433954890'),('66.249.71.147','2015-06-10',2,'1433953573'),('66.249.71.147','2015-06-11',1,'1433957808'),('66.249.71.164','2015-06-11',2,'1433990805'),('68.180.228.104','2015-06-11',1,'1433975257'),('66.249.71.130','2015-06-11',1,'1433991891'),('36.68.28.19','2015-06-14',5,'1434224041'),('120.164.46.127','2015-06-14',2,'1434239557'),('66.249.67.248','2015-06-15',1,'1434362861'),('104.193.10.50','2015-06-15',3,'1434372762'),('104.193.10.50','2015-06-16',2,'1434454308'),('36.80.234.114','2015-06-16',4,'1434443273'),('173.252.74.115','2015-06-16',1,'1434443264'),('173.252.74.114','2015-06-16',1,'1434443279'),('119.110.72.130','2015-06-16',1,'1434467216'),('124.195.116.71','2015-06-17',3,'1434551738'),('120.184.130.21','2015-06-27',1,'1435386862'),('66.249.84.246','2015-06-27',1,'1435387150'),('120.176.176.106','2015-06-28',7,'1435461088'),('66.220.158.114','2015-06-28',1,'1435461007'),('66.249.84.129','2015-06-28',1,'1435466083'),('66.249.84.246','2015-06-29',2,'1435563211'),('66.249.84.252','2015-06-29',1,'1435563206'),('66.249.84.246','2015-06-30',3,'1435677685'),('66.249.84.252','2015-06-30',1,'1435645799'),('66.249.84.252','2015-07-01',1,'1435710707'),('66.249.84.129','2015-07-01',1,'1435711780'),('120.177.18.200','2015-07-02',1,'1435824891'),('::1','2015-11-25',15,'1448407930'),('::1','2015-12-01',12,'1448944568'),('::1','2015-12-03',9,'1449138520'),('::1','2015-12-05',26,'1449279360'),('::1','2015-12-07',4,'1449442678'),('::1','2015-12-08',8,'1449532582'),('::1','2015-12-13',31,'1449974628'),('::1','2015-12-18',9,'1450418535'),('::1','2015-12-21',10,'1450654644'),('::1','2015-12-24',3,'1450917714'),('::1','2015-12-25',4,'1451037761'),('::1','2015-12-26',5,'1451086546'),('::1','2016-01-01',1,'1451626224'),('::1','2016-01-12',2,'1452564572'),('::1','2016-01-16',7,'1452913899'),('::1','2016-01-17',150,'1453036730'),('::1','2016-07-24',24,'1469318037'),('::1','2016-07-29',1,'1469767572'),('::1','2016-07-31',1,'1469936872'),('::1','2016-08-01',14,'1470019073'),('::1','2016-08-12',4,'1470940786'),('::1','2016-08-14',3,'1471191885'),('::1','2016-08-22',5,'1471851644'),('::1','2016-08-26',4,'1472207940'),('::1','2016-08-29',9,'1472475500'),('::1','2016-08-30',1,'1472531831'),('::1','2016-09-13',4,'1473760584'),('::1','2016-09-16',7,'1473998550'),('::1','2016-09-17',3,'1474076080'),('::1','2016-09-20',4,'1474335445'),('::1','2016-09-21',5,'1474470987'),('::1','2016-09-26',8,'1474866854'),('::1','2016-11-21',20,'1479719811'),('::1','2016-11-22',26,'1479795839'),('::1','2016-12-24',1,'1482592503'),('::1','2016-12-23',2,'1482451494'),('::1','2016-12-20',7,'1482205377'),('::1','2016-12-14',4,'1481717872'),('::1','2016-12-13',24,'1481593512'),('::1','2016-12-09',1,'1481243159'),('::1','2016-12-03',3,'1480741491'),('::1','2016-11-28',32,'1480303392'),('::1','2016-11-27',2,'1480224412'),('::1','2016-11-24',403,'1479984680'),('::1','2016-11-23',2,'1479913316'),('::1','2017-01-03',9,'1483421812'),('::1','2017-01-04',2,'1483534977'),('::1','2017-01-05',3,'1483627230'),('::1','2017-01-14',1,'1484352852'),('::1','2017-01-17',3,'1484663823'),('::1','2017-01-25',12,'1485359750'),('::1','2017-01-26',37,'1485414680'),('::1','2017-01-27',70,'1485508785'),('::1','2017-01-28',1,'1485567010'),('::1','2017-02-04',1,'1486213804'),('::1','2017-02-09',14,'1486659480'),('::1','2017-02-10',3,'1486684650'),('::1','2017-02-11',11,'1486773431'),('::1','2017-02-12',6,'1486869838'),('::1','2017-02-13',5,'1486995163'),('::1','2017-02-15',3,'1487123924'),('::1','2017-02-21',1,'1487659967'),('::1','2017-02-23',7,'1487832476'),('::1','2017-02-26',4,'1488064851'),('::1','2017-03-13',44,'1489366890'),('::1','2017-03-17',24,'1489744337'),('::1','2017-03-20',1,'1489988038'),('::1','2017-03-25',1,'1490413626'),('::1','2017-03-29',7,'1490744633'),('::1','2017-04-02',1,'1491122695'),('::1','2017-04-06',56,'1491462329'),('::1','2017-04-07',59,'1491524075'),('::1','2017-04-09',20,'1491711058'),('::1','2017-04-11',9,'1491877995'),('::1','2017-04-12',124,'1492006218'),('::1','2017-04-13',53,'1492088580'),('::1','2017-05-14',133,'1494767093'),('::1','2017-05-20',167,'1495299592'),('::1','2017-05-21',234,'1495359950'),('::1','2018-04-19',1,'1524111568'),('::1','2018-04-21',1,'1524249582'),('::1','2018-04-24',19,'1524509093'),('::1','2018-05-04',13,'1525441129'),('::1','2018-05-05',36,'1525494921'),('::1','2018-05-06',5,'1525614861'),('::1','2018-05-11',15,'1525998298'),('::1','2018-05-18',4,'1526611139'),('::1','2018-05-19',6,'1526701697'),('::1','2018-05-20',13,'1526833607'),('::1','2018-05-22',13,'1526947912'),('::1','2018-05-23',16,'1527056425'),('::1','2018-05-31',1,'1527743948'),('::1','2018-06-01',2,'1527815549'),('::1','2018-06-03',191,'1528045141'),('::1','2018-06-04',100,'1528127678'),('::1','2019-05-18',28,'1558141438'),('::1','2019-06-30',2,'1561872220'),('::1','2019-07-01',1,'1561950236'),('::1','2019-07-02',1,'1562028708'),('::1','2019-07-08',1,'1562544054'),('::1','2019-07-13',1,'1562978601'),('::1','2019-07-14',243,'1563094093'),('::1','2019-07-15',213,'1563173043'),('::1','2019-07-16',3,'1563231376'),('::1','2019-07-17',9,'1563323606'),('::1','2019-07-18',4,'1563407947'),('::1','2019-08-27',2,'1566889548'),('::1','2019-11-14',100,'1573723243'),('::1','2019-11-15',1,'1573815541'),('::1','2019-11-16',92,'1573912524'),('::1','2019-11-17',14,'1573997167'),('::1','2019-11-18',380,'1574068697'),('::1','2019-11-19',12,'1574148729'),('::1','2019-11-20',5,'1574240913'),('::1','2019-11-21',1,'1574291940'),('::1','2019-11-24',3,'1574552073'),('::1','2020-02-09',3,'1581212463'),('::1','2021-04-05',38,'1617639666');
/*!40000 ALTER TABLE `statistik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id_tag` int NOT NULL,
  `nama_tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagvid`
--

DROP TABLE IF EXISTS `tagvid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagvid` (
  `id_tag` int NOT NULL,
  `nama_tag` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagvid`
--

LOCK TABLES `tagvid` WRITE;
/*!40000 ALTER TABLE `tagvid` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagvid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_comment` (
  `id_komentar` int NOT NULL,
  `reply` int NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id_templates` int NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (22,'Template Full WIdth','admin','Denny Danuwijaya','phpmu-magazine','Y'),(24,'Template Boxed Width','admin','Denny Danuwijaya','phpmu-standar','N');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648','Admin BKSDA Sumsel','admin@bskdasumsel.org','','20170830013425.png','admin','N','q173s8hs1jl04st35169ccl8o7'),('dewi','82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b','Dewiiit Safitri','dewi.safitri@gmail.com','081267778899','','kontributor','N','ed1d859c50262701d92e5cbf39652792-20170120090507'),('arsen','dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0','Muhammad Arsenio','muhammad.arsenio@gmail.com','081267773333','','kontributor','N','f76ad5ee772ac196cbc09824e24859ee');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_modul`
--

DROP TABLE IF EXISTS `users_modul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_modul` (
  `id_umod` int NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int NOT NULL,
  PRIMARY KEY (`id_umod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_modul`
--

LOCK TABLES `users_modul` WRITE;
/*!40000 ALTER TABLE `users_modul` DISABLE KEYS */;
INSERT INTO `users_modul` VALUES (1,'ed1d859c50262701d92e5cbf39652792-20170120090507',70),(2,'ed1d859c50262701d92e5cbf39652792-20170120090507',65),(3,'ed1d859c50262701d92e5cbf39652792-20170120090507',63),(4,'f76ad5ee772ac196cbc09824e24859ee',70),(5,'f76ad5ee772ac196cbc09824e24859ee',65),(6,'f76ad5ee772ac196cbc09824e24859ee',63),(7,'ed1d859c50262701d92e5cbf39652792-20170120090507',18),(8,'ed1d859c50262701d92e5cbf39652792-20170120090507',66),(9,'ed1d859c50262701d92e5cbf39652792-20170120090507',33),(10,'3460d81e02faa3559f9e02c9a766fcbd-20170124215625',18),(11,'ed1d859c50262701d92e5cbf39652792-20170120090507',41),(12,'6bec9c852847242e384a4d5ac0962ba0-20170406140423',18),(13,'fa7688658d8b38aae731826ea1daebb5-20170521103501',18),(14,'cfcd208495d565ef66e7dff9f98764da-20180421112213',18);
/*!40000 ALTER TABLE `users_modul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id_video` int NOT NULL,
  `id_playlist` int NOT NULL,
  `username` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dilihat` int NOT NULL DEFAULT '1',
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26  0:46:40

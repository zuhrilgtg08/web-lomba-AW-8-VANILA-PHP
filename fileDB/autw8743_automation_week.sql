-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 11:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autw8743_automation_week`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksiupload`
--

CREATE TABLE `aksiupload` (
  `id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aksiupload`
--

INSERT INTO `aksiupload` (`id`, `status`) VALUES
(1, 'off'),
(2, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `jenis_lomba` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id_admin`, `email`, `pass`, `nama`, `level`, `jenis_lomba`) VALUES
(1, 'adminplc@gmail.com', 'dbd6d8851f8be5ebf082d030f19f3582', 'adminplc', 'admin_plc', 'plc'),
(2, 'adminbendahara@gmail.com', '65777e8abc44f18ebc4c8d2ced7c3f5b', 'Bendahara', 'admin_bendahara', 'bendahara'),
(3, 'adminlkti@gmail.com', '46d1b74547832bb1d6ee4ebd1b8f8946', 'admin lkti', 'admin_lkti', 'lkti'),
(4, 'adminpeserta@gmail.com', '19a493a258d3c54f17a680071ca00dc9', 'ADMIN PESERTA', 'admin_peserta', 'admin'),
(5, 'adminffr@gmail.com', '3b316091c5e96a025b790355c1183540', 'adminffr', 'admin_ffr', 'ffr');

-- --------------------------------------------------------

--
-- Table structure for table `login_peserta`
--

CREATE TABLE `login_peserta` (
  `id_peserta` int(11) NOT NULL,
  `nama_tim` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nama_anggota1` varchar(255) NOT NULL,
  `nama_anggota2` varchar(255) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `jenis_lomba` varchar(100) NOT NULL,
  `bidanglomba` varchar(255) NOT NULL,
  `judul_abstrak` varchar(500) NOT NULL,
  `demo` varchar(10) NOT NULL,
  `proses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_peserta`
--

INSERT INTO `login_peserta` (`id_peserta`, `nama_tim`, `nama`, `nama_anggota1`, `nama_anggota2`, `sekolah`, `email`, `telp`, `pass`, `jenis_lomba`, `bidanglomba`, `judul_abstrak`, `demo`, `proses`) VALUES
(3, 'adi', 'ADI', 'windah', 'basudara', 'smkn2 surabaya', 'adirahmad607@gmail.com', '08311846487', 'd548758154031f1561f957bfaeb578cc', 'plc', 'Maritim', 'PEMANFAATAN TEKNOLOGI AI (ARTIFICIAL INTELLIGENCE) DALAM BENTUK MESIN LEARNING SEBAGAI SOLUSI ALTERNATIF UNTUK PENANGANAN SAMPAH DI PERAIRAN INDONESIA', 'Ya', 0),
(4, 'Butuh Liburan', 'Sigit Ali Fandi', 'Joko Setiawan ', '', 'SMK Negeri 1 Cerme', 'sigitfandi12@smk.belajar.id', '088226257242', '1e232069a1f925186843b895f7398a36', 'plc', '', '', '', 4),
(5, 'Elektro Skandry', 'Ihwal Billah Syuhudtama', 'Ricki Rahadi Putra', '', 'SMKN 1 Driyorejo', 'iiihwaaal@gmail.com', '083115387025', 'f3756a43543331eb6d2502e41aba0b32', 'plc', '', '', '', 4),
(6, 'Yoman ', 'MUKHAMMAD AUFA ALAUDDIN', 'Anggota 1 : MUKHAMMAD AUFA ALAUDDIN , Anggota 2 : RAHMAN RIZKIA AMADANI', '', 'SMK NEGERI 1 CERME GRESIK', 'aufakeren6@gmail.com', '0895414110601', 'e85b1649d609b62d25492de8319107bc', 'plc', '', '', '', 4),
(7, 'ACUMALAKA AMIMIR', 'Narendra Bagaskara Pratama Putra', 'Muhammad Zakiyudin', '', 'SMK NEGERI 3 SURABAYA', 'mzakiyudin77@gmail.com', '089528434601', '3223960c9361300d352ba8b03c3185df', 'plc', '', '', '', 4),
(8, 'MS_EVO', 'MEILINDA ARIFAH', 'DIMAS DEI SYAWAL DANI', 'ELFIRA CITRA AYU UTAMI', 'MAN KOTA SURABAYA', 'malindarifah2006@gmail.com', '0881036004340', 'bdcf6ad4f48230270829db15668939d2', 'ffr', '', '', '', 4),
(9, 'Sembarang Team', 'Roihan Adrio Hibban', 'Yoga Adi Santoso', '', 'SMKN 7 SURABAYA', 'roihanhibban@gmail.com', '082333591350', 'dfabe41c242de7e53d8c979ef9b00bdd', 'plc', '', '', '', 4),
(10, 'kun fayakun', 'Sri Rohayati ', '', '', 'SMKS YABHINKA CILEGON ', 'vanaptri31@gmail.com', '083841807481', 'b2c314ce95b8d67f90343539f9a66dee', 'lkti', '', '', '', 0),
(11, 'Skangood', 'Muhammad Satria Putra Dwi Andika', '', '', 'SMKN1DRIYOREJO', 'muhammadsatriaputradwiandika@gmail.com', '81217829572', 'ec9f0ac1f6e417dea775ae5c3e5791a9', 'ffr', '', '', '', 2),
(12, 'MEKANES', 'MUCHAMMAD IFAN AFANDI', 'MUCHAMMAD IQBAL CHAFIDZ', '', 'SMKN 1 BANGIL', 'ifanafandi1412@gmail.com', '085784087251', 'd307e22b5e49773115f28854fb857f73', 'plc', '', '', '', 4),
(13, 'AUTOMIC', 'GIBRAN ZAKY NADIANSYAH', 'AKHMAD ARIF SAIFUDDIN', '', 'SMKN 3 SURABAYA', 'nadiansyahgibranzaky@gmail.com', '085731593917', 'd193918a8e801722d36db68704258e23', 'plc', '', '', '', 4),
(14, 'MASAKO', 'M. SULTAN FAIRUZ AL-GHIFARI', 'M. Ilham Zhamir', 'Faizah Mauludatul Romadhani', 'MA UNGGULAN NURIS', 'alghifarisultan1936@gmail.com', '081333832484', 'b6d4127533dd625f42e054074aca568c', 'lkti', 'Teknologi', 'PENGARUH PENGGUNAAN MULTI TRAP PEST BERBASIS TEKNOLOGI IoT DALAM PENGENDALIAN  HAMA PADI (Oryza sativa L.)', '', 2),
(15, 'Afdhol Team', 'Alief Hafid Fatin Hidayatullah ', '', '', 'MAN 2 NGANJUK', 'maulanarizkyhamzah@gmail.com', '081553354021', '3424477ba1dc1b5607d6f8c09aab8576', 'ffr', '', '', '', 2),
(16, 'stmj', 'ricki', 'Reno surya permana', '', 'SMKN 1 JENANGAN', 'renosurya175@gmail.com', '085334766712', 'a891c5150ebf3fd6a293e5ca1f0b17a4', 'plc', '', '', '', 4),
(17, 'Elco Skanding', 'Fathur Rozi', 'Moh. Faqafi Suki', '', 'SMKN 1 GENDING', 'titl.smkn1gending@gmail.com', '085608801560', '60a55bca9a06696c919e4558dc2edc05', 'plc', '', '', '', 4),
(18, 'JANAKA', 'Daffa Mudzaky Anwar', 'Arjuna Sam Ilyas', '', 'SMK Negeri 5 Surabaya', 'daffamudzakyanwar@gmail.com', '087754577270', '5d6cfd9a449370aa054457a415f05359', 'plc', '', '', '', 4),
(19, 'MANFAH ', 'Lukman Hakim Al-bashar ', 'Lutfi Muhammad Irfansyach', 'Rehan Afif Ardiansyah ', 'SMKN 1 Jenangan Ponorogo', 'lukman.af.08@gmail.com', '0895339026811', '0c60924e68361bedadaca279275fdb93', 'ffr', '', '', '', 4),
(20, 'Heather', 'Siti Rodhia Sari', 'Qiroatul Nur Jannah', 'Ubaidatil Khilmiyah', 'MA ABIL HASAN ASY SYADZILY KREMBUNG SIDOARJO', 'hijrahwulandariwulan@gmail.com', '089687785986', '084884d94b87554b03e39f1cf4e7c0bd', 'lkti', 'Ekonomi Kreatif', 'Ekspansi Ekonomi Di Era Modernisasi', 'Ya', 4),
(21, 'JEA No Machy', 'Dzaky Fitroh Aji Pratama', 'Erfansyah', 'Restu Adjie Priatmoko', 'SMK NEGERI 1 SINGOSARI', 'adjiee246@gmail.com', '082141270537', '30be751ca6e5ffa381d5f52c4d80be49', 'ffr', '', '', '', 4),
(22, 'Skomda', 'Salsabila Annisa', 'Frista Berliana Dewanti', 'Saskia Deswanda Riyanto', 'SMK Telkom Sidoarjo', 'saskiadeswanda@gmail.com', '081230147300', '6e8ead8c5d7478208935a51cce6d4cbc', 'ffr', '', '', '', 4),
(23, 'S3by', 'Thoriq Romadhoni ', 'Amelia Rosita ', '', 'SMKN 3 Surabaya ', 'thoriq2710@gmail.com', '089687295022', '1e94abd0039e021a59d89ba74fc10830', 'plc', '', '', '', 4),
(24, 'ALLISA TEAM', 'Alystya Seno Kusumawardani', 'Lia Farihatus Sa&#039;diyah', 'Salma Nabila', 'MAN 1 LAMONGAN', 'alystyasenokusumawardhani@gmail.com', '085807217229', 'e172dd95f4feb21412a692e73929961e', 'lkti', 'Sosial Budaya', 'LA-Creation: Pengenalan Budaya Lamongan Melalui Metode Augmented Reality Sebagai Upaya Interpretasi dan Promosi Budaya di Era Milenial', '', 2),
(25, 'YPM 1', 'Ivanda Nathapandara', 'Mochammad Faiz Fachrudin', '', 'SMK YPM 1 TAMAN', 'ivandanatha13@gmail.com', '08992124831', '8cf5810b5b2dcc868031be56262caf11', 'plc', '', '', '', 4),
(26, 'Starbaks alpha ', 'Dewi purnamasari', 'Fazza Arfiansyah ', 'M. Rizky Nur Wahid', 'Smks taruna bakti Kertosono', 'dedewcans20@gmail.com', '085706004136', 'd4ea67342de9ab25c46ad33e926132ba', 'lkti', 'Pendidikan', 'IMPLEMENTASI JELAJAH BUMI DAN ANTARIKSA VIRTUAL SEBAGAI MEDIA PEMBELAJARAN DENGAN TEKNOLOGI VIRTUAL REALITY BERBASIS ANDROID', '', 2),
(27, 'INERSIA', 'Satria Utama Pinandhita Ardiansyah', 'Muhammad Alldo Falrezky', 'Roby Jericho Satriyana', 'SMA Negeri 1 Sidoarjo', 'satriautamapa@gmail.com', '081249890241', 'a1de8cc1d9b8bbf66329de2c25cf8bc2', 'ffr', '', '', '', 4),
(28, 'AKSATRIYA', 'AHMAD HABIBII TSAANII', '', '', 'MA UNGGULAN AMANATUL UMMAH PROGRAM MADRASAH BERTARAF INTERNASIONAL', 'ahmadhabibitsaanii@gmail.com', '085895756899', '45676608aa9271b1b775064338491468', 'lkti', '', '', '', 0),
(29, 'SMART TRASH TEAM ', 'WAHYU WIJAYA KUSUMA', 'INTAN ARINA FAHMIDAH', 'RARA FIDYA ASTARI', 'SMA AL - ISLAM KRIAN', 'wahyuwijayakusuma2604@gmail.com', '085748473387', '4a9dd36b7dc79e25f98fa95d4eb074f5', 'lkti', 'Teknologi', 'SMART TRASH', 'Ya', 4),
(30, 'Late Afternoon', 'Ubaidatil Khilmiyah', 'Siti Rodhia Sari', 'Qiroatul Nur Jannah', 'MA ABIL HASAN ASY SYADZILY KREMBUNG SIDOARJO', 'miahilmi813@gmail.com', '089687785986', 'd7dee59b6ae864507b867172a171ffcb', 'lkti', 'Ekonomi Kreatif', 'PENGARUH POTENSI BUDIDAYA RUMPUT LAUT TERHADAP PEREKONOMIAN MASYARAKAT DESA KUPANG KECAMATAN JABON KABUPATEN SIDOARJO', 'Ya', 4),
(31, 'Mecamec', 'Ahmad Miyamto', '', '', 'SMKN 1 Udanawu Blitar', 'kangabdian25@gmail.com', '081546864775', '0cfbf932f2b2643f7850bfdfbf2e8b2d', 'ffr', '', '', '', 0),
(32, 'squad suskes', 'Achmad Virgiawan Listian ', '', '', 'smk rajasa', 'sukrisakti@gmail.com', '087863295996', '417e238e3f8c30aa00076c3a74e0a150', 'plc', '', '', '', 2),
(33, 'Starbaks Beta', 'Fazza Arfiansyah', 'M. Rizky Nur Wahid', 'Dewi Purnamasari', 'SMK Taruna Bakti Kertosono', 'fazzaarfiansyah10@gmail.com', '085646441655', '62451a7ae47d38a75295bf9a060d48d4', 'lkti', 'Teknologi', 'SISTEM ABSENSI SISWA BERBASIS TELEGRAM DAN RFID', 'Ya', 4),
(34, 'Rjs TITL 1', 'Fachry Akbar Maulido', '', '', 'SMK RAJASA Surabaya', 'fzhy01@gmail.com', '088226059699', '080018da9648970722315b5885b0bf1a', 'plc', '', '', '', 2),
(35, 'TEI RAJIN', 'Isadana Deva Maulana', '', '', 'SMKN 1 BLITAR', 'isadanadevamaulana@gmail.com', '0895383015994', '0ec817e626106b38a600a240602f01c0', 'ffr', '', '', '', 2),
(36, 'lessoh', 'MUHAMMAD WISOLUSSOLIHIN	', 'Moh Dwi Afrizal Wahyudi', '', 'SMKN 1 TAPEN', 'muhammad.wisolussolihin21@smk.belajar.id', '085807271211', '11b072795096bd032ab63219ae226eff', 'lkti', 'Teknologi', 'Gloxymetri - Rancang Bangun Alat Pengukur Kadar Gula Darah Non- Invasive', 'Ya', 4),
(37, 'EAST EROS', 'Rangga Bachtiar Irviansyah', 'Griselda Tatya Amiprodjo', 'Muhammad Faiq Maulana', 'SMK NEGERI 2 SURABAYA', 'griseldatatyaamiprodjo@gmail.com', '081357866188', '8885248dc1929958eac344b8dbf89639', 'ffr', '', '', '', 4),
(38, 'tes', 'ted', '', '', 'tes', 'tes@gmail.com', '1234', 'c46335eb267e2e1cde5b017acb4cd799', 'lkti', '', '', '', 0),
(39, 'VORT3 ONE', 'MOCH AZIZI', 'MOCH HAFIZ AP', 'MUHAMMAD AGIL AL DJUFRI', 'SMK NEGERI 3 SURABAYA', 'dadang.setyo90@gmail.com', '085748090605', '2775295a0d1a4b0d901506e386f39b2d', 'lkti', 'Pendidikan', 'IMPLEMENTASI RUMAH PINTAR PADA PROJECT BASED LEARNING BERBASIS IOT DAN AUGMENTED REALITY', '', 2),
(40, 'VORT3 TWO', 'Ahmad Nur Salim', 'ALIFYA NAURA AZ ZAHRA GIANDAH SYAHPUTRI', 'MOHAMMAD IBNU SALIM', 'SMK NEGERI 3 SURABAYA ', 'nurs4941@gmail.com', '081216376821', '02c2c532c26dbe1dcd9fab90e55289b8', 'lkti', 'Ekonomi Kreatif', 'Pengelolahan E Waste dengan Program 3R dan Technopreneurship Mendukung Tujuan Pembangunan Berkelanjutan', 'Ya', 4),
(41, 'RESTU DOA IBU BERKAH', 'AMANDA PUJA NUR AINI', 'DETA PUSPA NOVELIA', 'ANYA MEYDITNA ARYATNA', 'SMK NEGERI 2 SURABAYA', 'amandaaini15@gmail.com', '085892577388', '746037b6f9399a18724330f75d5c02b4', 'lkti', 'Teknologi', 'Inovasi Teknologi Internet of Things (IoT) dalam Meningkatkan Keselamatan dan Keamanan Operasional Kapal Laut', '', 2),
(42, 'Rizki', 'Fauzan ', '', '', 'Sman 5 ', 'arjunebayutristanto@gmail.com', '082141413725', '8bce4faaeda6e33c9aafd3575eec38c6', 'ffr', '', '', '', 0),
(43, 'ELECTRICI-TEAM', 'Ziddan Heriansyah', 'Muhammad Iqbal ', 'Ahmad Husain ', 'SMK Negeri 1 Paringin', 'ziddanheriansyah41@gmail.com', '082358522273', 'daefcab8905fbb083a68bf0e770e52c3', 'lkti', 'Teknologi', 'SIMEMODINO 2.3 (Sistem Pengatur dan Monitoring Debit Air Berbasis Arduino)', 'Ya', 4),
(44, 'Ghbb', 'Cbnkmk', '', '', 'Fjkbm', 'muhfetriansyah@gmail.com', '085706377098', '25f9e794323b453885f5181f1b624d0b', 'lkti', '', '', '', 0),
(45, 'EAST AFET', 'Teddy Dimas Suprapto', 'Alypasha Fadhillah Ilham', 'Pandega Surya Abditama', 'SMK Negeri 2 Surabaya', 'ayahdimdim@gmail.com', '081335031116', '9a97cf98c6997cfd872440db25d63c7b', 'ffr', '', '', '', 4),
(46, 'Pekerja Ajaib', 'ULFA EKA YULIANTI ', '', '', 'SMKN 1 SINGOSARI ', 'ueka37229@gmail.com', '083148842288', 'a958c1547b22c2237da24f39735ee45b', 'lkti', '', '', '', 0),
(47, 'Smkn 3 jbg ', 'Zufian Ari ', 'Jhon Kevin Ricardo', '', 'SMKN 3 JOMBANG ', 'zufianaribahtiar099@gmail.com', '083852624910', 'f62a49cf9d6927dc00acb54930e7be30', 'plc', '', '', '', 4),
(48, 'Twins skanega', 'AWLIYA TEJO ABDULLAH', 'ARIF TEJO ABDULLAH', '', 'SMKN 3 JOMBANG', 'ayaktejo13@gmail.com', '083129542910', '6509b80b757a3c4253df300a132b7e9d', 'plc', '', '', '', 4),
(49, 'IoT Genius', 'M.Niko Nur Cahyono', 'DAVID NARISMA YUDHA', '', 'SMKN 1 Nglegok', 'mnikonurcahyono50@gmail.com', '085859734296', 'f13473c1c635279b69058a9c6dab954a', 'lkti', 'Teknologi', 'SURABAYA SMART SOLUTIONS FOR SUSTAINABILITY (REVOLUTIONIZING URBAN LIVING WITH IoT INNOVATION FOR AIR QUALITY, HEAT MITIGATION, AND POLLUTION MANAGEMENT)', 'Ya', 4),
(50, 'Woww Vibes ', 'Ulfa Nurlaila Rizka ', 'Latifah Azmul Fauzi ', 'Sylvia Ananda Riawan ', 'MAN 1 NGANJUK ', 'latifah210523@gmail.com', '082236532056', 'dc727f46088056be651034c944858702', 'lkti', 'Ekonomi Kreatif', 'OPEN MINDED IPTEK DALAM RANGKA INOVASI EKONOMI MASYARAKAT DIGITAL ', 'Ya', 4),
(51, 'TOI BLUE', 'Ganreva Ilham Pratama', '', '', 'SMKN 1 KEDIRI', 'wildansalam0@gmail.com', '081258846887', '70fe496aa1e0bc811199ff4c1c3865f3', 'plc', '', '', '', 2),
(52, 'Alpa Bravo', 'AKBAR ZIDAN ARGANATA PRATAMA', 'AQILA HIBRIZA ZWETA', 'HAMID AMRU ASSIFA&#039;', 'MAN 2 NGANJUK', 'aqilahibrizaz@gmail.com', '085336904128', '375bf345d510acd1ffcc70e6b984f694', 'ffr', '', '', '', 4),
(53, 'SMEKDA 1', 'SADEWO', 'JULIAN DAFA PUTRA KRISTIAWAN', '', 'SMKN 2 SURABAYA', 'sadewo625@gmail.com', '089523597549', '9bfe055b8b1d778d4454963205d4b6db', 'plc', '', '', '', 4),
(54, 'The Terrible One', 'Muhammad Ubaidillah', 'Muhammad Fawwas Sambaega', '', 'SMK PGRI 1 Gresik', 'mixedracoon@gmail.com', '081357223992', '09203e27251b00cedbbe7c46ad9d267d', 'plc', '', '', '', 4),
(55, 'ALARiC', 'Muamal Ardiansyah ', '', '', 'SMKN 7 Surabaya', 'ardians4673@gmail.com', '081913052537', '8f0b523120a4c1b38df6451c29f8557f', 'plc', '', '', '', 2),
(56, 'DOA IBU', 'ACHMAD AFANDI', 'TAUFIK HIDAYAT', '', 'SMKN 1 BANGIL', 'achmadafandi680@gmail.com', '083164042590', '8e67d36bbd6c02050d8fdef4009e14c8', 'plc', '', '', '', 4),
(57, 'ELECTRICAL YANI', 'PUTHUT LINTANG TRENGGONO ', 'MUHAMMAD DAVA SYAHRONI ', '', 'SMK AHMAD YANI PROBOLINGGO ', 'puthutlintang037@gmail.com', '085934828642', 'b833ef35c88bce3468463b7552b63f9a', 'plc', '', '', '', 4),
(58, 'Toi 2 SMKN 1 KEDIRI', 'Lutfi Dwiki Nur Azizi ', '', '', 'SMKN 1 KEDIRI', 'lutfidwiki039@gmail.com', '087877156952', 'd8f433cab31baaf4a6da79889d3682f3', 'plc', '', '', '', 2),
(59, 'BUBADIBAKO', 'SALMAN', '', '', 'SMKN 1 KOTA KEDIRI', 'afifsalman03@gmail.com', '081645434064', '152c377a784d275cc8e41e79a8cbfd87', 'plc', '', '', '', 2),
(60, 'ON1CE TEAM', 'Handika Prasetya ', 'Kharismawan Putra Ramadhani ', '', 'SMKN 1 CERME', 'handikaprasetya216@gmail.com', '081913803413', '0e1dcb10091e44e082e45f102bc69798', 'plc', '', '', '', 4),
(61, 'New Experience', 'Akhmad Dwi Kurniawan ', '', '', 'SMKN 1 JETIS ', 'akhmaddk86@gmail.com', '081559950030', '5d27342e437fafd8bc479e03561e80f6', 'plc', '', '', '', 2),
(62, 'Gold Hector', 'Nazril Aditya Pratama', 'Naysila Amanda Rifai', 'Nur Hanidah Agustin', 'SMA NEGERI MOJOAGUNG', 'nazriladitya021@gmail.com', '085736023630', 'e162d26ae3b16865476d074732af04bb', 'ffr', '', '', '', 4),
(63, 'Swastamita Tim', 'Radina Zayyani', 'Meilani Elisa Dewi', '', 'SMA NEGERI 1 BABADAN', 'radinazayyani@gmail.com', '081231628857', '846bc6691fc717aa3f6ecb6d99f04b56', 'lkti', 'Sosial Budaya', 'EKSISTENSI TRADISI BUCENG PURAK DALAM KEGIATAN GREBEG SURO DI KABUPATEN PONOROGO', 'Tidak', 4),
(64, 'sejatim', 'Seva', 'egi', '', 'SMK PGRI SINGOSARI', 'sevaeldima@gmail.com', '087798471465', '9dccc0c4733742a35cfd0601b15282ad', 'plc', '', '', '', 4),
(65, 'KTM', 'Erwin Ardiansyah', '', '', 'SMKN 7 SURABAYA', 'farrelabhim@gmail.com', '088217071453', 'dfc26417d4f852d252e78b632bf9ea13', 'plc', '', '', '', 2),
(66, 'Always Bismillah ', 'Dhimas Maulana Ramadhani ', 'Mochammad risq aulia prakoso', '', 'SMKS PGRI Singosari ', 'dhimasrama24@gmail.com', '085731255405', 'e5d6017150e31c6b7e81b17e225f0e75', 'plc', '', '', '', 4),
(67, 'Auto Cells Smeksa', 'Yudha Tri Pradana', '', '', 'SMKN 1 Nganjuk', 'yudhapradana3112@gmail.com', '085732822877', 'b3d59cbc2568a628f2eec362946f35df', 'plc', '', '', '', 2),
(68, 'Anak حلال', 'Fickri Hamzah Firmansyah ', '', '', 'SMK YPM 1 TAMAN', 'fickrihamzah111@gmail.com', '089699861281', 'd2304ee5efe5be3a345d9db74af10f66', 'plc', '', '', '', 2),
(69, 'CARIPENGALAMAN', 'FACHRIZAL ADZANI FADLAN', 'MUHAMMAD SUGIYANTO ', '', 'SMKN 7 SURABAYA ', 'muhammadsugiyanto803@gmail.com', '083854952049', 'e8351e47a0a6d7336dc450c5559ac791', 'plc', '', '', '', 3),
(70, 'TheRushers', 'Muhamad Khoirul Fatah Al Hakim', '', '', 'SMK DWIJABHAKTI 1 JOMBANG', 'fatahkhoirul18@gmail.com', '085748041518', '9f23843ef9412a4fd383dc14aa6144c5', 'plc', '', '', '', 2),
(71, 'Electric force', 'Naufaliano saputra', '', '', 'SMKN 1 KEDIRI', 'reyhanadjie7@gmail.com', '085706128653', '0006262a9d90897d2f3a480695a42bef', 'plc', '', '', '', 2),
(74, 'STUDENT BOIS', 'Vicky Ardiansyah', 'Anas Bhell Tangwe', '', 'SMKS PGRI SINGOSARI', 'ardiansyahvicky72@gmail.con', '081803482623', '0ffbfeb3763462d16398d6462b5ef8fb', 'plc', '', '', '', 3),
(75, 'Eagle one team ', 'Doni Saputra ', 'Muhammad Fachry Hamid Alfarizi ', '', 'SMKS TUREN ', 'fahrialfarizi2006@gmail.com', '081249491529', 'bfaaf6b8af9d39284e120c94b529c6df', 'plc', '', '', '', 4),
(76, 'Nous', 'Rayhan Nazir Adnan', '', '', 'SMKn 1 Singosari', 'rayhannadnan234@gmail.com', '082136045505', 'e5abfacf14c00a8c7b5d700f26e3495c', 'plc', '', '', '', 4),
(77, 'Tim SMEKDA 2', 'ADITYA TRI AGUNG SEPTIAN NUGRAHA ', 'HAKAN MAULANA YAZID ZIDANE', '', 'SMKN 2 SURABAYA', 'ditadit2005@gmail.com', '0882002863742', '457d2fbf4316f7c79f9ecdefa9dddeef', 'plc', '', '', '', 4),
(78, 'BIMA CAKRA', 'SANDI CAHYONO', 'ARYANDHIKA PRASETYO', '', 'SMKN KLAKAH', 'mahbubgusti@gmail.com', '08998789905', '0eb412ded761d1d46c3b5cb648317af0', 'plc', '', '', '', 4),
(79, 'KantriNyell', 'Rayhan iqbal pramono', 'Achmad fauzan akbar', '', 'SMKS PGRI SINGOSARI', 'achmadfauzan2715@gmail.com', '085746974109', '80638217d794508f6d313e2dbde51cf3', 'plc', '', '', '', 2),
(80, 'Skangood', 'Muhammad Iqbal Roif ', 'Muhammad Satria Putra Dwi Andika ', 'Radityansyah Merino', 'SMKN1DRIYOREJO ', 'dwi640479@gmail.com', '81217829572', 'ec9f0ac1f6e417dea775ae5c3e5791a9', 'ffr', '', '', '', 4),
(81, 'K24 IS WELL', 'BIMA RENDRA ZAIN WAHID ', '', '', 'SMKN 1 KEDIRI ', 'bimaedun17@gmail.com', '089622620009', '497ed4c8f02d3d5a8b81fd6c58621550', 'ffr', '', '', '', 2),
(82, 'Gold Maris', 'Muhammad Hero Naufal', '', '', 'SMA Negeri Mojoagung', 'heronaufal223@gmail.com', '081217131366', 'd89de2e74853ff28e553b92b7f75a135', 'ffr', '', '', '', 2),
(83, 'EAST TIMUN', 'NURDIYANTORO KUSUMA', '', '', 'SMKN 2 SURABAYA', 'nurdiyantorokusuma@gmail.com', '08993513871', 'a28033feb3e776eb3f2954896586e765', 'ffr', '', '', '', 2),
(84, 'ElektroDynamos', 'Mirza Candra Lesmana', '', '', 'SMKN 5 Surabaya', 'higmatiar.maulana@gmail.com', '089699301064', '1983785ae0921a8367b569f20e8e2498', 'plc', '', '', '', 2),
(86, 'Blitzkrieg ', 'Muhammad Fahim Rifqi Rostyanta ', '', '', 'SMK Negeri 1 Ceme', 'rifqirostyanta@gmail.com', '085335334480', 'be06983e2bbec8b1036fb43864169eee', 'plc', '', '', '', 2),
(87, 'TWO PERSON ', 'SUSILO ', '', '', 'SMKN  1 CERME ', 'czero3133@gmail.com', '082139233248', '70429244ff82a173c68c0ff6eab22a05', 'plc', '', '', '', 0),
(88, 'Kusuma abadi', 'ILYAS RAKA KUSUMA', '', '', 'SMKN1CERME', 'kusumaraka01@gmail.com', '081252835971', '87f7bac70504b9ab6a113766e761341b', 'plc', '', '', '', 2),
(89, 'Masih Pemula ', 'Mukhamad Rayhan Azril Nugroho ', '', '', 'SMKN 1 JETIS ', 'rayhanazril196@gmail.com', '08983619877', 'fc657873252b0037b7ecfaf860e83bb0', 'plc', '', '', '', 2),
(90, 'Palvo2 ', 'Mirza Daud Raharjo ', '', '', 'SMK teknik pal Surabaya ', 'mirzadika1908@gmail.com', '081357687281', '097c17baafb2e84e0e3f46544cf11e1b', 'plc', '', '', '', 2),
(91, 'Gold garaga', 'Syailah ahmad', 'Mukhammad zefa hadiyan mazaya', 'Faisal rahmad adam kholid', 'Sman mojoagung', 'zefahadiyab@gmail.com', '081554663483', '40794525871eceb4b9df5aefbce2359a', 'ffr', '', '', '', 4),
(92, 'EAST-TIMUN', 'NURDIYANTORO KUSUMA', '', '', 'SMK NEGERI 2 SURABAYA', 'raihanriski1414@gmail.com', '089676805489', 'd62046a8518b1d0fcb16ca2edd71dfd7', 'ffr', '', '', '', 0),
(93, 'GOLD DREAM', 'LOIS FERNANDO', 'Rania Putri Aurellia', 'Siti Chairunnisa', 'SMA NEGERI MOJOAGUNG', 'loisfernando677@gmail.com', '087864007680', '355f76fa7e4d3ea526d7629d29288293', 'ffr', '', '', '', 4),
(94, 'Battlebots', 'Mochammad Bashori Alwi', '', '', 'SMKN PASIRIAN ', 'moh.Bashorialwi19@gmail.com', '087782774731', '1cb5e6489fa7fd60aecb30810598916e', 'ffr', '', '', '', 2),
(95, 'GOLD STAR', 'ACHMAD ABBRAR RAHMATULLAH', '', '', 'SMA NEGERI MOJOAGUNG ', 'acmadabbrar@gmail.com', '082140635293', '6b34c098b069dd32ae01a6878f4f1f6a', 'ffr', '', '', '', 0),
(96, 'EAST JAVA', 'Muhammad Adiib Fahmi ', '', '', 'SMK NEGERI 2 SURABAYA ', 'madiibfahmi27@gmail.com', '088217223022', 'd216374baa59bb5e177b3f2bce38aa3f', 'ffr', '', '', '', 2),
(97, 'Mavericks ', 'Susilo ', '', '', 'SMKN 1 Cerme', 'pelajarsusilo@gmail.com', '082139233248', '40bc66264dd0df3db830a0eb4175da30', 'plc', '', '', '', 2),
(98, 'PALVO 1', 'Indra Aji Firmansya ', 'Setiyo Wahyu Nur Firmansyah ', '', 'SMK TEKNIK PAL SURABAYA', 'ajiindra057@gmail.com', '089681249244', 'b6fbe7bd6cf5a179514d136022920025', 'plc', '', '', '', 4),
(99, 'ALCATROZ', 'ANIFAH ATUS FITRIYAH', '', '', 'SMKN 1 CERME', 'atus28@gmail.com', '085746909873', 'a42b5404ecbcb0a2feb0aac8c4c9df9d', 'plc', '', '', '', 2),
(100, 'Pemula', 'Achmad Fabi Rozaki', '', '', 'SMKN 7 Surabaya ', 'achmadfabirozaki07@gmail.com', '0895342026046', '7c78acb20bc30c7f10eee60e3578825e', 'plc', '', '', '', 0),
(101, 'All About Technology', 'Richard Rafianto Putra Utama', '', '', 'SMKN 1 Singosari', 'richardrafian@gmail.com', '085816535525', 'feed0175ef420768326183ecae00257d', 'plc', '', '', '', 2),
(102, 'MEGASHIPS', 'IDI PRASETYO ', '', '', 'SMK NEGERI 3 BOYOLANGU ', 'idiputra70@gmail.com', '082228832878', '2807c6e04f7a6b743a2fbf356d30135c', 'ffr', '', '', '', 2),
(103, 'TnE', 'ELGAR YOGA PRATAMA', '', '', 'SMKN 1 JETIS', 'elgaryogapratama4@gmail.com', '081217566299', '8012469c3a8b15b3523303260839540c', 'plc', '', '', '', 2),
(104, 'PEMBURU HOREG', 'Aldy Susanto', 'Aldy Susanto', '', 'SMKN 1 Cerme', 'aldybidex04@gmail.com', '085707567048', 'a43f60f6292c5f64d38dbe97c213c767', 'plc', '', '', '', 4),
(105, 'Maxine', 'Nailah Alya Mukhbita Putri Hariyanto', '', '', 'SMK NEGERI 1 JETIS', 'Nailahhariyanto10@gmail.com', '0895346357378', 'dc3b5e5a64c2f4b6e35e683a7cf4eb6b', 'plc', '', '', '', 2),
(106, 'Rabota', 'Muh.Candra Maulana', 'Lubab Muhammad Anil Barqiy', '', 'SMK Muhammadiyah 1 Gresik', 'fendimaulana1827@gmail.com', '085730137493', 'e807793c41e90f7d542a110860a58aed', 'plc', '', '', '', 4),
(107, 'E-stroom', 'M. Aditya Rizky Ramadhan', '', '', 'SMK Muhammadiyah 1 Gresik', 'aa3401037@gmail.com', '085745964575', 'b9814bdf1ad6d85b997b317987862659', 'plc', '', '', '', 2),
(108, 'LIMITLESS TECNOLOGY', 'RAYHAN ZIANUR RAHMAN', '', '', 'SMKN 1 SINGOSARI ', 'rayhanzr10@gmail.com', '089530416012', '5421c50e8d34b94cdb75ab397b5e2766', 'plc', '', '', '', 2),
(109, 'The Circuit Breakers', 'Rasya Yasin Arafat', '', '', 'SMK DWIJA BHAKTI 1 JOMBANG', 'rasyayasin226@gmail.com', '085707717649', 'f7e16e25871f92d50d170fcb7fc9664a', 'plc', '', '', '', 2),
(110, 'WelcomeSense', 'Afriza Nur Hamzah', '', '', 'SMK Dwija Bhakti 1 Jombang', 'shadowinvinity@gmail.com', '082330776456', '50a5a1832809833c90da5823df0d56bf', 'plc', '', '', '', 1),
(111, 'GOLD STAR', 'ACMAD ABBRAR RAHMATULLAH', 'Tika Fitrotun Nasicha', 'Rifqya Dwi Juanita', 'SMA NEGERI MOJOAGUNG', 'acmadabbar@gmail.con', '082140635293', '6b34c098b069dd32ae01a6878f4f1f6a', 'ffr', '', '', '', 4),
(112, 'WelcomeSense', 'Afriza Nur Hamzah', '', '', 'SMK Dwija Bhakti 1 Jombang', 'afrizanur14@gmail.com', '082330776456', '82969108f6a37acda69ad756a166e431', 'plc', '', '', '', 2),
(113, 'EAST HIKARA', 'Farid Habibie', '', '', 'SMKN 2 SURABAYA', 'lenovoamd69@gmail.com', '08989730265', '9b2e1380d1139638f38a5ab533d70f25', 'ffr', '', '', '', 0),
(114, 'tiara', 'aku', '', '', 'ppns', 'terly@student.ppns.ac.id', '081', 'b6c359cc2b19d05c7d54d928452fc1e0', 'lkti', 'Maritim', 'kldjks', 'Tidak', 4),
(115, 'ULFA EKA YULIANTI ', 'Ulfa Eka Yulianti ', '', '', 'SMKN 1 SINGOSARI ', 'ulfaeka007@gmail.com', '083148842288', 'a958c1547b22c2237da24f39735ee45b', 'lkti', 'Teknologi', 'PENGEMBANGAN ALAT PENGOLAH SISA SAMPAH MAKANAN MENJADI PUPUK ORGANIK', 'Ya', 4),
(116, 'COSMIC FEAR MAN 2 NGANJUK', 'SATRIA ILHAM PAMUJI', '', '', 'MAN 2 NGANJUK', 'satilham81@gmail.com', '085730029935', '4b3d27e03fcaf0c179ead21d6e4d7367', 'lkti', '', '', 'Ya', 4),
(117, 'Artanto', 'Ahmad Hazzufarilhaq Hartanto', '', '', 'SMA Al-Islam Krian', 'ahmadhazzufarilhaqhartanto@gmail.com', '085235036633', '1617e32e016b9c8f3ab56876a3e2aa42', 'plc', '', '', '', 0),
(118, 'Palvoyage', 'Viorel Akiko Manggala Ary Putra', 'M. RIJAL FI AUNILLAH', 'M. RAMADHAN ZAKY AL HASAN', 'SMK Teknik PAL Surabaya', 'viorelakiko6@gmail.com', '081234344560', '7203a3737f8a31e4a4daf0c8c8e444c7', 'lkti', 'Transportasi dan Logistik', 'PEMANFAATAN SUNGAI SEBAGAI SARANA ALTERNATIF DALAM MENANGGULANGI KEMACETAN DI KOTA SURABAYA MELALUI WATERBUS BERBASIS AI (ARTIFICIAL INTELLEGENCE)', 'Ya', 4),
(119, 'NAWASENA', 'Rommy Firman Junaedi ', '', '', 'SMK Negeri 1 Singosari ', 'rommyfirman1705@gmail.com', '082287848668', '713aca4ade6e504cc18ceede488135cb', 'lkti', 'Teknologi', 'Pengembangan Paving Block Limbah Kain ', 'Ya', 4),
(120, 'MONUSCAR', 'ATHI SAYYIDAH', '', '', 'MAS PERGURUAN MUALLIMAT CUKIR JOMBANG', 'athihasanbukhori@gmail.com', '081231300758', '769d94e7f03c079b26418bdc8837ae05', 'lkti', 'Pendidikan', 'MONUSCAR: Media Pembelajaraan Model Kooperatif Tipe TGT Sebagai Pengenalan Ragam Budaya Nusantara untuk Siswa SD/MI', 'Ya', 4),
(121, 'Aksata', 'Septi Ana Putri', 'Nadine Syahira Pasha', 'Nayshilla Dwi Putri Atmajaya', 'MAN 2 NGANJUK', 'nayshillatmajaya1737@gmail.com', '085258084141', '3f9a3b5499be1ca29ce7218cdfb14eaf', 'lkti', 'Teknologi', 'AUTONOMOUS ROBOBOAT  SEBAGAI ALAT PENDETEKSI KUALITAS AIR UNTUK MENGETAHUI KOMUNITAS JENIS IKAN YANG HIDUP DI PERAIRAN NUSANTARA ', 'Ya', 4),
(122, 'LAK', 'NIZAMUL MULUK ', '', '', 'SMKN 7 Surabaya ', 'nizamulm83@gmail.com', '085604108331', '7e391f967299c696aa776dddb54402e5', 'plc', '', '', '', 0),
(123, 'CAROX SMANSA', 'Bagus Setiawan Ardiansyah ', 'Eka Oktavia Anggraini', 'Yasmin Tsabitha Arifanti', 'SMAN 1 Pamekasan ', 'bagussetiawanardiansyah@gmail.com', '085234407059', 'b81d218c7d50d2d3ad41f99d3a5c72ef', 'lkti', 'Teknologi', 'INOVASI SISTEM IRIGASI DAN MONITORING SEMAIAN HIDROPONIK BERBASIS INTERNET OF THINGS DALAM UPAYA MEMINIMALISIR GAGAL PANEN PADA TAHAP SEMAI ', 'Ya', 4),
(124, 'SMANIDHA JUARA ', 'Nadin Nurma Pitaloka ', 'Nur Fadillah ', '', 'SMAN 1 BADEGAN ', 'nadinnurma822@gmail.com', '085895780574', '7d1404b7735f338e89ffb3c5e0a90559', 'lkti', 'Ekonomi Kreatif', 'Transformasi Otomasi Lampu Penjor Merak Sebagai Strategi Menaikkan Tingkat Ekonomi Masyarakat di Ponorogo ', '', 2),
(125, 'Kun Fayakun ', 'Gusti Ananda Firdaus ', 'Rivana Diala Putri', 'Sri Rohayati ', 'SMKS YABHINKA CILEGON ', 'tusifanabila@gmail.com', '089502145843', '8fbad3598da7b320cfdee89a4822f0d7', 'lkti', 'Teknologi', 'Kemajuan Teknologi ', 'Tidak', 4),
(126, 'Ayla Team', 'Ayunda Puspa Fathma Azzahra', 'Laili Syafaidah', '', 'MAN 1 LAMONGAN', 'ayunda895758@gmail.com', '085714803963', '637f83d749295850005ff2a603c6053e', 'lkti', 'Teknologi', 'ARPA (Air Purifier from Water Hyacinth): Filter Udara Ruangan Pemanfaatan Hama Eceng Gondok dan Limbah Kertas sebagai Arang  Aktif dan Bioadsorben dengan Monitoring berbasis IoT Menggunakan Sensor MQ-135', 'Ya', 4),
(127, 'CUCUR Team', 'Ayu Zaliyanti ', 'Muhammad Kevin Mulki Hakim', 'Habib Yazdaniar', 'MAN 1 Lamongan ', 'kevinmulkih@gmail.com', '085715606629', 'cd1f384bd334c08255a0a9a2227c47f3', 'lkti', 'Pendidikan', 'PROMAB (Proper Major Application): Inovasi Sinergitas Sosial Aplikasi Tepat Jurusan Berbasis VR (Virtual Reality) guna Mempermudah Calon Mahasiswa Dalam Menentukan Program Studi', 'Ya', 4),
(128, 'NINE STAR TEAM', 'Randi Khansa Yafi Khalid ', 'Yoga Pratama', 'Inesyarifki Joandhita Agustin', 'SMK NU Maarif Kudus', 'randikhansayafikhalid@gmail.com', '085799518237', 'e984201e80f1ae32e9fcf044d75f807c', 'lkti', 'Teknologi', 'Smart Reminder Vehicle Tax System', 'Ya', 4),
(129, 'Viejo Team', 'Dimas Ardiansyah', 'Muhammad Yanuar Dwiki Adkha', 'Muhammad Zahri Firdaus Said', 'SMK NU Maarif Kudus ', 'zanuarjepara7@gmail.com', '08976319147', '74523fc183526da7ba1a8d1d51afbf7b', 'lkti', 'Teknologi', 'VEHICLE RENTAL SECURITY SYSTEM', 'Ya', 4),
(130, 'LISTRIK SMKNICE', 'Sulthon Umami', 'M Ashab.A.S ', '', 'SMKN 1 CERME GRESIK ', 'sulthonumami@gmail.com', '081392026103', 'a1021ee4c2bdbe18d143a4486bee569c', 'lkti', 'Maritim', 'SAFETY NAVIGATION SISTEM (SSNS) SISTEM KESELAMATAN BERLAYAR UNTUK NELAYAN KECIL DI LUMPUR, GRESIK.', 'Ya', 4),
(131, 'VORT3 ONE', 'Mochammad Azizi', 'Muhammad Agil Aldjufri', 'Mochammad Hafiz Arizal Putra', 'SMKN 3 Surabaya', 'azizikalibokor@gmail.com', '088210831511', 'c5d6b1838f616a661b19910e1a09f229', 'lkti', 'Pendidikan', 'IMPLEMENTASI RUMAH PINTAR PADA PROJECT BASED LEARNING BERBASIS IOT DAN AUGMENTED REALITY', 'Ya', 4),
(132, 'Briliant People', 'Ardiansyah Dion Saputra', 'Muh Abdul Lathif', 'Muhammad Rifa&#039;i', 'SMK NU Maarif Kudus', 'diondionn99@gmail.com', '895342269922', '3a3b461beb79c24a20872de13eeec3e6', 'lkti', 'Teknologi', 'Remote Rice Sprinkler With Solar Panel', 'Ya', 4),
(134, 'Badafir', 'M. Bagas Nashrur Rajaba', 'Firman Maulana', 'Ahmad Dani Pranowo', 'SMK Muhammadiyah 1 Gresik', 'bagasnashrur@gmail.com', '085755759753', 'e807f1fcf82d132f9bb018ca6738a19f', 'lkti', 'Maritim', 'SMART ATFENTURES – IoT BASED (automatic agricultural fertilizer production with a hybrid solar tracker electrical system – IoT based)', 'Ya', 4),
(135, 'GoldenBoys', 'Ahmad Rafli Putra Maulana', 'Muhammad Rizky Prasetyo', 'Muhammad Nabil Firansyah', 'SMK Muhammadiyah 1 Gresik', 'nabilfiransyah4@gmail.com', '085733847670', 'e6456d2ae1bd736b1e6fd96ab3d81978', 'lkti', 'Teknologi', 'ABSTRAK_AW6_Ahmad Rafli Putra Maulana_SMK Muhammadiyah 1 Gresik_Agrohidro Asic (AgroHidro uses Artificial Sun and IoT Control)', 'Ya', 4),
(136, 'KASSOH', 'MUH. AS’ADI RIDHO AS SAFI’I', 'MUHAMMAD EGY FIRMANSYAH', 'FENDI AHZANUL HABIBI', 'SMKN 1 TAPEN', 'ridhoassadi22@gmail.com', '085755823704', '11b072795096bd032ab63219ae226eff', 'lkti', 'Ekonomi Kreatif', 'PENERAPAN DATA MINING DENGAN MENGGUNAKAN ALGORITMA APRIORI DALAM PREDIKSI PENJUALAN BARANG', 'Ya', 4),
(137, 'ABS ', 'Dicky Febrian Candrawinata', '', '', 'SMKN 7 SURABAYA', 'dickycandrawinata68@gmail.com', '085707491608', '6ea0163b4d4012c769d0f564f7f2a6ba', 'plc', '', '', '', 2),
(138, 'Prunus Serrulata', 'Dafa Maulana Muhammad', '', '', 'SMK Negeri 1 Singosari', 'anafidia0101@gmail.com', '081232594027', '7b0ba7ded4ab2473a36fe051f6212fc7', 'ffr', '', '', '', 2),
(139, 'ASTRAJINGGA', 'ANNISA RAHMANIA', 'UMI DIYAH AYU PITALOKA', '', 'SMA NEGERI 1 BADEGAN', 'pitalokadiyah226@gmail.com', '6282233458491', 'b3ff1f199d9b1d8165b2ece77bda28ec', 'lkti', 'Ekonomi Kreatif', 'MENGEMBANGKAN JIWA KREATIF INTERPRENEUR DENGAN KOMPONEN ROBOTIKA', 'Tidak', 4),
(140, 'Trio Edukator Inovatif', 'Ahmad Badarudin', 'Daffa Mufrizal Rifa&#039;i', 'Karisma Sihwilujeng', 'MAN 2 Ponorogo', 'ahmadbadarudin716@gmail.com', '088235751354', 'f493c2ab5f610298342556183097a1aa', 'lkti', 'Pendidikan', 'EduFocus: Konsep Aplikasi Berbasis Android Untuk Membentuk Masa Depan Pendidikan Melalui Personalisasi Pembelajaran', 'Tidak', 4),
(141, 'KIR Skanepra', 'Mohammad Puji Fareliyanto', 'Aisah Putri Milinda', 'Ghaitsa Hilyatannisa Mabruri', 'SMK Negeri 1 Prajekan', 'farelmalolo54@gmail.com', '085648162098', 'ee3a14ffed806449e4d1a9e431166ddc', 'lkti', 'Teknologi', 'ICONTING APPS ( Inovation Control of stunting) sebagai upaya pencegahan stunting pada ibu hamil untuk penurunan angka stunting di kabupaten bondowoso', 'Ya', 2),
(142, 'aremasy', 'Putri Khumairoh ', 'Dina Fira Ramadani', 'Amelia Khusnul Khotimah ', 'MA Masyhudiyah ', 'putrikhmrh@gmail.com', '083831794250', '778f57c1d7eb35663dc65159e79a002d', 'lkti', 'Ekonomi Kreatif', 'CARA SEHAT DETOKSIFIKASI TUBUH DENGAN ESDAMBU (Es Krim Daun Bambu)', 'Ya', 4),
(143, 'SPICHEMSA', 'BAYU ADI CAHYONOI', 'MUHAMMAD RAMADHANI', 'EKKY FIRMASYAH PUTRA', 'SMKN 1 PASURUAN', 'bayuac307@gmail.com', '083845257573', 'b313001aadb159fdd29a56f2e5ae3dbc', 'lkti', 'Teknologi', 'PENGOLAHAN LIMBAH CAIR KANTIN SEKOLAH MENGGUNAKAN KARBON AKTIF TONGKOL JAGUNG UNTUK BUDIDAYA SAYURAN BERBASIS IOT', 'Ya', 4),
(144, 'arespa', 'zahra firdausi', 'Rendyka Candra Kurniawan', 'Yola Nur Aida', 'sman 4 kediri', 'zhrafrda37@gmail.com', '085731714553', '2f95144b3bb49249de48984bc59ce482', 'lkti', 'Sosial Budaya', 'BAHASA ASING MENYEBABKAN EKSISTENSI BUDAYA ASAL MEMUDAR', 'Ya', 4),
(145, 'Ubed Team', 'Diovani Aji Agustiar', 'Muhammad Iqbal Pratama', 'Muhammad Aviv Dwi Suhariyanto', 'SMK Islam Krembung', 'danangpriyasudanat@gmail.com', '082257653872', '70148acb44ec247a72a9500b0aa4ad59', 'lkti', 'Teknologi', 'Desain pembangkit listrik tenaga ombak dan arus bawah laut Untuk masyarakat pesisir Indonesia', 'Tidak', 4),
(146, 'EAST_TIGHFAR', 'ANTANANDA REKSADJENDRA DIMASING BAGAVAGITA ', 'BAYU ROMADHON SAPUTRA ', 'MUHAMMAD ALMER NUR ZHAFAR', 'SMKN 2 SURABAYA ', 'antananda1220@gmail.com', '089696217000', '790b997edb9177197b36bd70d2673127', 'ffr', '', '', '', 3),
(147, 'enTARan', 'Ahmad Nabál Falah', '', '', 'SMAN 03 SIdoarjo', 'ahmadnabalfalah@gmail.com', '082333237484', '6fe90c8eb1f3ee410c97f62d09471e37', 'ffr', '', '', '', 2),
(148, 'testing', 'testing', '', '', 'testing', 'tersting@gmail.com', '084848484848', 'ae2b1fca515949e5d54fb22b8ed95575', 'plc', '', '', '', 4),
(149, 'Dewaruci ', 'Ali Nur Ramadhan ', '', '', 'SMAN 3 Sidoarjo ', 'alinurramadhan02@gmail.com', '089612554092', '3d77b46415bee84ef5404e467c6eb6df', 'ffr', '', '', '', 2),
(150, 'D2N', 'Deyfa Tivasyah A. ', '', '', 'SMAN 3 SIDOARJO', 'deyfativasyaharisandi18@gmail.com', '081234618018', 'f40f4e89ffefff5e59042964a1b2a7a2', 'ffr', '', '', '', 2),
(151, 'Restoe Boemi', 'Satria Bimasakti', '', '', 'SMAN 3 SIDOARJO ', 'satriabimandra@gmail.com', '085707466708', '7f123685af3299853f7da8fb3d822ee5', 'ffr', '', '', '', 2),
(152, 'ENTE', 'Rayhan Maulana Saputra', '', '', 'SMKN 1 JETIS', 'rayhanmaulama@gmail.com', '085733602714', 'a3aa262e12081831ecff51a187678ce1', 'plc', '', '', '', 0),
(153, 'Squat sukses', 'Achmad virgiawan listian', '', '', 'SMK Rajasa ', 'conectinggg@gmail.com', '08887161306', '4b2f3a00afd985bc13f8eb9f309684cd', 'plc', '', '', '', 0),
(154, 'Arunika', 'Rangga surya wardani', '', '', 'SMKN 1Jetis', 'ranggasuryawardani@gmail.com', '085706767601', '37992ffad7c9a48e004308fa9792bd71', 'plc', '', '', '', 0),
(155, 'The Circuit Breakers', 'Rasya Yasin Arafat ', '', '', 'SMK DWIJA BHAKTI ', 'bagasputrarahmansyah667@gmail.com', '085707717649', '7d0c4ff976fd35b5041e8bd2ae8ce490', 'plc', '', '', '', 0),
(156, 'duochoco', 'Nadine ', '', '', 'smkn 1 Jetis ', 'nadinewahyudi42@gmail.com', '085807258851', '2df12b38150ca1a26cf08ba3602cdab3', 'plc', '', '', '', 0),
(157, 'testing2', 'testing2', '', '', 'testing2', 'testing2@gmail.com', '08515151515', 'a119e534072584a0ea88cdea4664aecd', 'plc', '', '', '', 0),
(158, 'Elco Skanding', 'FATHUR ROZI', '', '', 'SMKN 1 GENDING', 'fathur13rozi@gmail.com', '083138003372', '9cc743bab7fa181e1308a2f512ee7192', 'plc', '', '', '', 0),
(159, 'TheRushers', 'Muhamad Khoirul Fatah Al Hakim', '', '', 'SMK DWIJABHAKTI 1 JOMBANG', 'alhakimkhoirulfatah@gmail.com', '085748041518', 'b8dc5ca9897a87810dc0a9ff8ffbc1e4', 'plc', '', '', '', 0),
(160, 'Student Bois', 'Vicky Ardiansyah', '', '', 'SMKS PGRI SINGOSARI', 'ardiansyahvicky72@gmail.com', '088994106537', '0ffbfeb3763462d16398d6462b5ef8fb', 'plc', '', '', '', 0),
(161, 'KantriNyell', 'Rayhan iqbal pramono', '', '', 'SMKS PGRI Singosari', 'rayhaniqbal110@gmail.com', '083846371569', '8fce36010e8d9db61f74f866334f8373', 'plc', '', '', '', 0),
(162, 'MAVERICKS', 'SUSILO', '', '', 'SMKN 1 CERME GRESIK', 'rd163277@gmail.com', '087716388964', '4cc7c5e12cd71d1b41b459d3a55feda7', 'plc', '', '', '', 0),
(163, 'aswas', 'asas', '', '', 'asas', 'e80f596593e330@crankymonkey.info', '232323', 'cc0c82a48d615986a187156dbcfef237', 'lkti', '', '', '', 0),
(164, 'ghaudad', 'sjdkfnfslsmn', '', '', 'bsjsjdb', 'ariyantomohamad.1234@gmail.com', '083830593567', 'ab31831d66ba31d0df215adb4ee0b658', 'lkti', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman_lkti`
--

CREATE TABLE `pengumuman_lkti` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman_plc`
--

CREATE TABLE `pengumuman_plc` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bukti`
--

CREATE TABLE `tb_bukti` (
  `id` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `nama_tim` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama_ketua` varchar(200) NOT NULL,
  `bukti` varchar(500) NOT NULL,
  `buktikartu` varchar(500) NOT NULL,
  `buktifollow` varchar(500) NOT NULL,
  `buktitwiboon` varchar(500) NOT NULL,
  `fileabstrak` varchar(500) NOT NULL,
  `filepaper` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_bukti`
--

INSERT INTO `tb_bukti` (`id`, `id_peserta`, `nama_tim`, `email`, `nama_ketua`, `bukti`, `buktikartu`, `buktifollow`, `buktitwiboon`, `fileabstrak`, `filepaper`) VALUES
(4, 4, 'Butuh-Liburan', 'sigitfandi12@smk.belajar.id', 'Sigit Ali Fandi', 'admin/filebukti/Butuh-Liburan/WhatsApp Image 2023-10-26 at 17.52.366949.jpeg', 'admin/filebukti/Butuh-Liburan/kartupelajar_3318.pdf', 'admin/filebukti/Butuh-Liburan/followinstagram_9121.png', 'admin/filebukti/Butuh-Liburan/uploadtwibbon_6706.png', '', ''),
(5, 6, 'Yoman-', 'aufakeren6@gmail.com', 'MUKHAMMAD AUFA ALAUDDIN', 'admin/filebukti/Yoman-/IMG_22374464.png', 'admin/filebukti/Yoman-/kartupelajar_5276.pdf', 'admin/filebukti/Yoman-/followinstagram_3220.png', 'admin/filebukti/Yoman-/uploadtwibbon_6910.png', '', ''),
(6, 8, 'MS_EVO', 'malindarifah2006@gmail.com', 'MEILINDA ARIFAH', 'admin/filebukti/MS_EVO/IMG-20231025-WA00225025.jpg', 'admin/filebukti/MS_EVO/kartupelajar_2760.pdf', 'admin/filebukti/MS_EVO/followinstagram_7396.png', 'admin/filebukti/MS_EVO/uploadtwibbon_1318.png', '', ''),
(7, 9, 'Sembarang-Team', 'roihanhibban@gmail.com', 'Roihan Adrio Hibban', 'admin/filebukti/Sembarang-Team/Screenshot_2023-10-26-07-33-02-455_com.gojek.gopay2618.jpg', 'admin/filebukti/Sembarang-Team/kartupelajar_2619.pdf', 'admin/filebukti/Sembarang-Team/followinstagram_4243.jpg', 'admin/filebukti/Sembarang-Team/uploadtwibbon_1168.jpg', '', ''),
(8, 7, 'ACUMALAKA-AMIMIR', 'mzakiyudin77@gmail.com', 'Narendra Bagaskara Pratama Putra', 'admin/filebukti/ACUMALAKA-AMIMIR/IMG-20231027-WA00873885.jpg', 'admin/filebukti/ACUMALAKA-AMIMIR/kartupelajar_7852.pdf', 'admin/filebukti/ACUMALAKA-AMIMIR/followinstagram_1251.png', 'admin/filebukti/ACUMALAKA-AMIMIR/uploadtwibbon_9575.png', '', ''),
(9, 12, 'MEKANES', 'ifanafandi1412@gmail.com', 'MUCHAMMAD IFAN AFANDI', 'admin/filebukti/MEKANES/IMG-20231028-WA00101716.jpg', 'admin/filebukti/MEKANES/kartupelajar_6617.jpeg', 'admin/filebukti/MEKANES/followinstagram_5066.jpeg', 'admin/filebukti/MEKANES/uploadtwibbon_3242.jpeg', '', ''),
(10, 13, 'AUTOMIC', 'nadiansyahgibranzaky@gmail.com', 'GIBRAN ZAKY NADIANSYAH', 'admin/filebukti/AUTOMIC/Screenshot_20231028-1000388848.jpg', 'admin/filebukti/AUTOMIC/kartupelajar_4838.docx', 'admin/filebukti/AUTOMIC/followinstagram_5063.jpg', 'admin/filebukti/AUTOMIC/uploadtwibbon_7608.jpg', '', ''),
(11, 5, 'Elektro-Skandry', 'iiihwaaal@gmail.com', 'Ihwal Billah Syuhudtama', 'admin/filebukti/Elektro-Skandry/IMG-20231028-WA00006825.jpg', 'admin/filebukti/Elektro-Skandry/kartupelajar_3751.pdf', 'admin/filebukti/Elektro-Skandry/followinstagram_6960.jpg', 'admin/filebukti/Elektro-Skandry/uploadtwibbon_3479.jpg', '', ''),
(12, 17, 'Elco-Skanding', 'titl.smkn1gending@gmail.com', 'Fathur Rozi', 'admin/filebukti/Elco-Skanding/Screenshot_20231028_1845159229.jpg', 'admin/filebukti/Elco-Skanding/kartupelajar_5862.pdf', 'admin/filebukti/Elco-Skanding/followinstagram_1147.jpg', 'admin/filebukti/Elco-Skanding/uploadtwibbon_1155.jpg', '', ''),
(13, 16, 'stmj', 'renosurya175@gmail.com', 'ricki', 'admin/filebukti/stmj/Screenshot_2023-10-28-18-53-40-508_com.shopee.id1010.jpg', 'admin/filebukti/stmj/kartupelajar_3734.pdf', 'admin/filebukti/stmj/followinstagram_3945.jpg', 'admin/filebukti/stmj/uploadtwibbon_2503.jpg', '', ''),
(14, 18, 'JANAKA', 'daffamudzakyanwar@gmail.com', 'Daffa Mudzaky Anwar', 'admin/filebukti/JANAKA/IMG-20231028-WA00016845.jpg', 'admin/filebukti/JANAKA/kartupelajar_7680.pdf', 'admin/filebukti/JANAKA/followinstagram_1872.jpg', 'admin/filebukti/JANAKA/uploadtwibbon_8762.jpg', '', ''),
(17, 19, 'MANFAH-', 'lukman.af.08@gmail.com', 'Lukman Hakim Al-bashar ', 'admin/filebukti/MANFAH-/4287990a-1662-4b79-9e96-2a0d0e175e928169.jpeg', 'admin/filebukti/MANFAH-/kartupelajar_6418.pdf', 'admin/filebukti/MANFAH-/followinstagram_8552.PNG', 'admin/filebukti/MANFAH-/uploadtwibbon_7311.png', '', ''),
(18, 20, 'Heather', 'hijrahwulandariwulan@gmail.com', 'Siti Rodhia Sari', 'admin/filebukti/Heather/bukti pembayaran lkti tim heather7968.jpeg', 'admin/filebukti/Heather/kartupelajar_2940.pdf', 'admin/filebukti/Heather/followinstagram_2298.jpeg', 'admin/filebukti/Heather/uploadtwibbon_9371.jpeg', 'admin/filebukti/Heather/abstrak_2140.pdf', 'admin/filebukti/Heather/fullpaper_3559.pdf'),
(19, 21, 'JEA-No-Machy', 'adjiee246@gmail.com', 'Dzaky Fitroh Aji Pratama', 'admin/filebukti/JEA-No-Machy/Screenshot_20231028-2304086218.jpg', 'admin/filebukti/JEA-No-Machy/kartupelajar_5217.pdf', 'admin/filebukti/JEA-No-Machy/followinstagram_4681.jpg', 'admin/filebukti/JEA-No-Machy/uploadtwibbon_4633.jpg', '', ''),
(20, 22, 'Skomda', 'saskiadeswanda@gmail.com', 'Salsabila Annisa', 'admin/filebukti/Skomda/IMG-20231029-WA00319288.jpg', 'admin/filebukti/Skomda/kartupelajar_8152.jpg', 'admin/filebukti/Skomda/followinstagram_9346.jpg', 'admin/filebukti/Skomda/uploadtwibbon_6088.jpg', '', ''),
(21, 23, 'S3by', 'thoriq2710@gmail.com', 'Thoriq Romadhoni ', 'admin/filebukti/S3by/Screenshot_2023-10-29-16-31-30-153_com.shopee.id6947.pdf', 'admin/filebukti/S3by/kartupelajar_5894.pdf', 'admin/filebukti/S3by/followinstagram_7958.jpg', 'admin/filebukti/S3by/uploadtwibbon_3055.jpg', '', ''),
(22, 26, 'Starbaks alpha ', 'dedewcans20@gmail.com', 'Dewi purnamasari', '', 'admin/filebukti/Starbaks alpha /kartupelajar_6361.pdf', 'admin/filebukti/Starbaks alpha /followinstagram_4409.pdf', 'admin/filebukti/Starbaks alpha /uploadtwibbon_1563.pdf', 'admin/filebukti/Starbaks alpha /abstrak_4207.pdf', ''),
(23, 24, 'ALLISA TEAM', 'alystyasenokusumawardhani@gmail.com', 'Alystya Seno Kusumawardani', '', 'admin/filebukti/ALLISA TEAM/kartupelajar_2958.pdf', 'admin/filebukti/ALLISA TEAM/followinstagram_3300.png', 'admin/filebukti/ALLISA TEAM/uploadtwibbon_2854.jpg', 'admin/filebukti/ALLISA TEAM/abstrak_7974.pdf', ''),
(24, 27, 'INERSIA', 'satriautamapa@gmail.com', 'Satria Utama Pinandhita Ardiansyah', 'admin/filebukti/INERSIA/view8393.jpeg', 'admin/filebukti/INERSIA/kartupelajar_5186.pdf', 'admin/filebukti/INERSIA/followinstagram_5154.png', 'admin/filebukti/INERSIA/uploadtwibbon_5214.docx', '', ''),
(25, 30, 'Late Afternoon', 'miahilmi813@gmail.com', 'Ubaidatil Khilmiyah', 'admin/filebukti/Late-Afternoon/bukti pembayaran lkti tim late afternoon6470.jpeg', 'admin/filebukti/Late Afternoon/kartupelajar_5899.pdf', 'admin/filebukti/Late Afternoon/followinstagram_2807.jpeg', 'admin/filebukti/Late Afternoon/uploadtwibbon_1026.jpeg', 'admin/filebukti/Late Afternoon/abstrak_1158.pdf', 'admin/filebukti/Late-Afternoon/fullpaper_2126.pdf'),
(26, 29, 'SMART TRASH TEAM ', 'wahyuwijayakusuma2604@gmail.com', 'WAHYU WIJAYA KUSUMA', 'admin/filebukti/SMART-TRASH-TEAM-/inbound30524040024031586654765.jpg', 'admin/filebukti/SMART TRASH TEAM /kartupelajar_9633.pdf', 'admin/filebukti/SMART TRASH TEAM /followinstagram_1602.jpg', 'admin/filebukti/SMART TRASH TEAM /uploadtwibbon_2279.jpg', 'admin/filebukti/SMART TRASH TEAM /abstrak_4384.pdf', 'admin/filebukti/SMART-TRASH-TEAM-/fullpaper_5181.pdf'),
(27, 33, 'Starbaks Beta', 'fazzaarfiansyah10@gmail.com', 'Fazza Arfiansyah', 'admin/filebukti/Starbaks-Beta/IMG-20231111-WA00081236.jpg', 'admin/filebukti/Starbaks Beta/kartupelajar_7773.pdf', 'admin/filebukti/Starbaks Beta/followinstagram_6849.jpeg', 'admin/filebukti/Starbaks Beta/uploadtwibbon_4067.jpeg', 'admin/filebukti/Starbaks Beta/abstrak_6217.pdf', 'admin/filebukti/Starbaks-Beta/fullpaper_8169.pdf'),
(28, 32, 'squad-suskes', 'sukrisakti@gmail.com', 'Achmad Virgiawan Listian ', 'admin/filebukti/squad-suskes/WhatsApp Image 2023-10-29 at 23.19.348618.jpeg', '', '', '', '', ''),
(29, 34, 'Rjs-TITL-1', 'fzhy01@gmail.com', 'Fachry Akbar Maulido', 'admin/filebukti/Rjs-TITL-1/IMG-20231029-WA00207688.jpg', '', '', '', '', ''),
(30, 36, 'lessoh', 'muhammad.wisolussolihin21@smk.belajar.id', 'MUHAMMAD WISOLUSSOLIHIN	', 'admin/filebukti/lessoh/BAYAR4110.jpg', 'admin/filebukti/lessoh/kartupelajar_4977.pdf', 'admin/filebukti/lessoh/followinstagram_7999.jpg', 'admin/filebukti/lessoh/uploadtwibbon_4717.jpg', 'admin/filebukti/lessoh/abstrak_6368.pdf', 'admin/filebukti/lessoh/fullpaper_1999.pdf'),
(31, 37, 'EAST-EROS', 'griseldatatyaamiprodjo@gmail.com', 'Rangga Bachtiar Irviansyah', 'admin/filebukti/EAST-EROS/inbound88714363182274127042669.jpg', 'admin/filebukti/EAST-EROS/kartupelajar_8952.pdf', 'admin/filebukti/EAST-EROS/followinstagram_9793.png', 'admin/filebukti/EAST-EROS/uploadtwibbon_6567.png', '', ''),
(32, 40, 'VORT3 TWO', 'nurs4941@gmail.com', 'Ahmad Nur Salim', 'admin/filebukti/VORT3-TWO/Transfer atas nama Ahmad Nur Salim_AW6_Ahmad Nur Salim_SMK Negeri 3 Surabaya_Pengelolahan E-Waste dengan Program 3R dan Technopreneurship Mendukung Tujuan Pembangunan Berkelanjutan1408.jpg', 'admin/filebukti/VORT3 TWO/kartupelajar_5864.pdf', 'admin/filebukti/VORT3 TWO/followinstagram_3384.jpeg', 'admin/filebukti/VORT3 TWO/uploadtwibbon_1527.jpeg', 'admin/filebukti/VORT3 TWO/abstrak_8700.pdf', 'admin/filebukti/VORT3-TWO/fullpaper_3906.pdf'),
(33, 39, 'VORT3 ONE', 'dadang.setyo90@gmail.com', 'MOCH AZIZI', '', 'admin/filebukti/VORT3 ONE/kartupelajar_6174.pdf', 'admin/filebukti/VORT3 ONE/followinstagram_1437.jpeg', 'admin/filebukti/VORT3 ONE/uploadtwibbon_8825.jpeg', 'admin/filebukti/VORT3 ONE/abstrak_6720.pdf', ''),
(34, 43, 'ELECTRICI-TEAM', 'ziddanheriansyah41@gmail.com', 'Ziddan Heriansyah', 'admin/filebukti/ELECTRICI-TEAM/Bukti Pembayaran_SIMEMODINO 2.3_SMK Negeri 1 Paringin9459.jpeg', 'admin/filebukti/ELECTRICI-TEAM/kartupelajar_8000.pdf', 'admin/filebukti/ELECTRICI-TEAM/followinstagram_2949.jpg', 'admin/filebukti/ELECTRICI-TEAM/uploadtwibbon_8442.jpg', 'admin/filebukti/ELECTRICI-TEAM/abstrak_8972.pdf', 'admin/filebukti/ELECTRICI-TEAM/fullpaper_2926.pdf'),
(35, 45, 'EAST-AFET', 'ayahdimdim@gmail.com', 'Teddy Dimas Suprapto', 'admin/filebukti/EAST-AFET/inbound11887268425476059125620.jpg', 'admin/filebukti/EAST-AFET/kartupelajar_6536.pdf', 'admin/filebukti/EAST-AFET/followinstagram_8387.jpg', 'admin/filebukti/EAST-AFET/uploadtwibbon_7771.jpg', '', ''),
(36, 41, 'RESTU DOA IBU BERKAH', 'amandaaini15@gmail.com', 'AMANDA PUJA NUR AINI', '', 'admin/filebukti/RESTU DOA IBU BERKAH/kartupelajar_5204.jpeg', 'admin/filebukti/RESTU DOA IBU BERKAH/followinstagram_7090.jpeg', 'admin/filebukti/RESTU DOA IBU BERKAH/uploadtwibbon_7455.jpeg', 'admin/filebukti/RESTU DOA IBU BERKAH/abstrak_2749.pdf', ''),
(37, 47, 'Smkn-3-jbg-', 'zufianaribahtiar099@gmail.com', 'Zufian Ari ', 'admin/filebukti/Smkn-3-jbg-/Screenshot_20231101-1120348684.png', 'admin/filebukti/Smkn-3-jbg-/kartupelajar_6528.pdf', 'admin/filebukti/Smkn-3-jbg-/followinstagram_8715.jpg', 'admin/filebukti/Smkn-3-jbg-/uploadtwibbon_6095.jpg', '', ''),
(38, 48, 'Twins-skanega', 'ayaktejo13@gmail.com', 'AWLIYA TEJO ABDULLAH', 'admin/filebukti/Twins-skanega/Screenshot_20231101_1127518387.jpg', 'admin/filebukti/Twins-skanega/kartupelajar_1262.pdf', 'admin/filebukti/Twins-skanega/followinstagram_1378.jpg', 'admin/filebukti/Twins-skanega/uploadtwibbon_4890.jpg', '', ''),
(39, 14, 'MASAKO', 'alghifarisultan1936@gmail.com', 'M. SULTAN FAIRUZ AL-GHIFARI', '', 'admin/filebukti/MASAKO/kartupelajar_6292.pdf', 'admin/filebukti/MASAKO/followinstagram_8444.pdf', 'admin/filebukti/MASAKO/uploadtwibbon_2757.pdf', 'admin/filebukti/MASAKO/abstrak_8698.pdf', ''),
(40, 52, 'Alpa-Bravo', 'aqilahibrizaz@gmail.com', 'AKBAR ZIDAN ARGANATA PRATAMA', 'admin/filebukti/Alpa-Bravo/IMG-20231028-WA00244694.jpg', 'admin/filebukti/Alpa-Bravo/kartupelajar_1190.jpg', 'admin/filebukti/Alpa-Bravo/followinstagram_3862.jpg', 'admin/filebukti/Alpa-Bravo/uploadtwibbon_3545.jpg', '', ''),
(41, 53, 'SMEKDA-1', 'sadewo625@gmail.com', 'SADEWO', 'admin/filebukti/SMEKDA-1/IMG-20231019-WA00574899.jpg', 'admin/filebukti/SMEKDA-1/kartupelajar_4294.pdf', 'admin/filebukti/SMEKDA-1/followinstagram_9907.jpg', 'admin/filebukti/SMEKDA-1/uploadtwibbon_7144.jpg', '', ''),
(42, 51, 'TOI-BLUE', 'wildansalam0@gmail.com', 'Ganreva Ilham Pratama', 'admin/filebukti/TOI-BLUE/bukti pembayaran6538.pdf', '', '', '', '', ''),
(43, 55, 'ALARiC', 'ardians4673@gmail.com', 'Muamal Ardiansyah ', 'admin/filebukti/ALARiC/IMG_20231027_195117_6562140.jpg', '', '', '', '', ''),
(44, 54, 'The-Terrible-One', 'mixedracoon@gmail.com', 'Muhammad Ubaidillah', 'admin/filebukti/The-Terrible-One/IMG-20231019-WA00003876.jpg', 'admin/filebukti/The-Terrible-One/kartupelajar_1898.pdf', 'admin/filebukti/The-Terrible-One/followinstagram_8910.jpg', 'admin/filebukti/The-Terrible-One/uploadtwibbon_1410.jpg', '', ''),
(45, 57, 'ELECTRICAL-YANI', 'puthutlintang037@gmail.com', 'PUTHUT LINTANG TRENGGONO ', 'admin/filebukti/ELECTRICAL-YANI/IMG-20231027-WA00109656.jpg', 'admin/filebukti/ELECTRICAL-YANI/kartupelajar_6988.pdf', 'admin/filebukti/ELECTRICAL-YANI/followinstagram_6166.jpg', 'admin/filebukti/ELECTRICAL-YANI/uploadtwibbon_7709.jpg', '', ''),
(46, 56, 'DOA-IBU', 'achmadafandi680@gmail.com', 'ACHMAD AFANDI', 'admin/filebukti/DOA-IBU/IMG-20231026-WA00184476.jpg', 'admin/filebukti/DOA-IBU/kartupelajar_1223.pdf', 'admin/filebukti/DOA-IBU/followinstagram_5927.webp', 'admin/filebukti/DOA-IBU/uploadtwibbon_4162.jpg', '', ''),
(47, 58, 'Toi-2-SMKN-1-KEDIRI', 'lutfidwiki039@gmail.com', 'Lutfi Dwiki Nur Azizi ', 'admin/filebukti/Toi-2-SMKN-1-KEDIRI/Screenshot_2023-10-03-08-34-37-444_id.dana7378.jpg', '', '', '', '', ''),
(48, 60, 'ON1CE-TEAM', 'handikaprasetya216@gmail.com', 'Handika Prasetya ', 'admin/filebukti/ON1CE-TEAM/IMG-20231020-WA00088124.jpg', 'admin/filebukti/ON1CE-TEAM/kartupelajar_8791.pdf', 'admin/filebukti/ON1CE-TEAM/followinstagram_3474.jpg', 'admin/filebukti/ON1CE-TEAM/uploadtwibbon_5762.png', '', ''),
(49, 61, 'New-Experience', 'akhmaddk86@gmail.com', 'Akhmad Dwi Kurniawan ', 'admin/filebukti/New-Experience/IMG_20231019_1838147255.jpg', '', '', '', '', ''),
(50, 59, 'BUBADIBAKO', 'afifsalman03@gmail.com', 'SALMAN', 'admin/filebukti/BUBADIBAKO/IMG-20231002-WA00158941.jpg', '', '', '', '', ''),
(51, 62, 'Gold-Hector', 'nazriladitya021@gmail.com', 'Nazril Aditya Pratama', 'admin/filebukti/Gold-Hector/Bukti Pembayaran_Gold Hector7989.pdf', 'admin/filebukti/Gold-Hector/kartupelajar_5323.pdf', 'admin/filebukti/Gold-Hector/followinstagram_3203.jpg', 'admin/filebukti/Gold-Hector/uploadtwibbon_5172.jpg', '', ''),
(52, 65, 'KTM', 'farrelabhim@gmail.com', 'Erwin Ardiansyah', 'admin/filebukti/KTM/bukti pembayaran lomba plc8713.jpeg', '', '', '', '', ''),
(53, 67, 'Auto-Cells-Smeksa', 'yudhapradana3112@gmail.com', 'Yudha Tri Pradana', 'admin/filebukti/Auto-Cells-Smeksa/IMG-20231025-WA00213880.jpg', '', '', '', '', ''),
(54, 68, 'Anak ????', 'fickrihamzah111@gmail.com', 'Fickri Hamzah Firmansyah ', 'admin/filebukti/Anak-????/IMG-20231029-WA00029721.jpg', '', '', '', '', ''),
(55, 69, 'CARIPENGALAMAN', 'muhammadsugiyanto803@gmail.com', 'FACHRIZAL ADZANI FADLAN', 'admin/filebukti/CARIPENGALAMAN/IMG-20231026-WA00333645.jpg', 'admin/filebukti/CARIPENGALAMAN/kartupelajar_3232.pdf', 'admin/filebukti/CARIPENGALAMAN/followinstagram_4334.jpg', 'admin/filebukti/CARIPENGALAMAN/uploadtwibbon_8013.jpg', '', ''),
(56, 70, 'TheRushers', 'fatahkhoirul18@gmail.com', 'Muhamad Khoirul Fatah Al Hakim', 'admin/filebukti/TheRushers/IMG-20231025-WA00045483.jpg', '', '', '', '', ''),
(57, 66, 'Always-Bismillah-', 'dhimasrama24@gmail.com', 'Dhimas Maulana Ramadhani ', 'admin/filebukti/Always-Bismillah-/IMG-20231101-WA00046725.jpg', 'admin/filebukti/Always-Bismillah-/kartupelajar_8266.pdf', 'admin/filebukti/Always-Bismillah-/followinstagram_9293.jpg', 'admin/filebukti/Always-Bismillah-/uploadtwibbon_4128.png', '', ''),
(58, 71, 'Electric-force', 'reyhanadjie7@gmail.com', 'Naufaliano saputra', 'admin/filebukti/Electric-force/Screenshot_2023-10-25-18-31-30-85_743e33170befb8303cd6da83c10dfea86854.jpg', '', '', '', '', ''),
(59, 72, 'KantriNyell', 'rayhaniqbal110@gmail.com', 'Rayhan iqbal pramono', 'admin/filebukti/KantriNyell/IMG-20231101-WA00135188.jpg', 'admin/filebukti/KantriNyell/kartupelajar_6093.jpg', 'admin/filebukti/KantriNyell/followinstagram_6948.jpg', 'admin/filebukti/KantriNyell/uploadtwibbon_3674.jpg', '', ''),
(60, 74, 'STUDENT-BOIS', 'ardiansyahvicky72@gmail.con', 'Vicky Ardiansyah', 'admin/filebukti/STUDENT-BOIS/7A1D172E-FB5E-4123-A2DC-ADBC4C34CE7A1624.jpeg', 'admin/filebukti/STUDENT-BOIS/kartupelajar_6428.jpeg', 'admin/filebukti/STUDENT-BOIS/followinstagram_7584.jpeg', 'admin/filebukti/STUDENT-BOIS/uploadtwibbon_7133.jpeg', '', ''),
(61, 73, 'AMIMIR-ACUMALAKA', 'insiduis77@gmail.com', 'M. Zakiyudin ', 'admin/filebukti/AMIMIR-ACUMALAKA/IMG-20231101-WA00166790.jpg', '', '', '', '', ''),
(62, 76, 'Nous', 'rayhannadnan234@gmail.com', 'Rayhan Nazir Adnan', 'admin/filebukti/Nous/IMG-20231028-WA00031636.jpg', 'admin/filebukti/Nous/kartupelajar_4647.pdf', 'admin/filebukti/Nous/followinstagram_1907.jpg', 'admin/filebukti/Nous/uploadtwibbon_9757.jpg', '', ''),
(63, 75, 'Eagle-one-team-', 'fahrialfarizi2006@gmail.com', 'Doni Saputra ', 'admin/filebukti/Eagle-one-team-/IMG-20231015-WA00201853.jpg', 'admin/filebukti/Eagle-one-team-/kartupelajar_8329.jpg', 'admin/filebukti/Eagle-one-team-/followinstagram_4860.jpg', 'admin/filebukti/Eagle-one-team-/uploadtwibbon_6837.jpg', '', ''),
(64, 25, 'YPM-1', 'ivandanatha13@gmail.com', 'Ivanda Nathapandara', 'admin/filebukti/YPM-1/IMG-20231029-WA00004731.jpg', 'admin/filebukti/YPM-1/kartupelajar_5168.pdf', 'admin/filebukti/YPM-1/followinstagram_9181.jpg', 'admin/filebukti/YPM-1/uploadtwibbon_3390.jpg', '', ''),
(65, 64, 'sejatim', 'sevaeldima@gmail.com', 'Seva', 'admin/filebukti/sejatim/IMG-20231101-WA00122689.jpg', 'admin/filebukti/sejatim/kartupelajar_8646.jpg', 'admin/filebukti/sejatim/followinstagram_8848.jpg', 'admin/filebukti/sejatim/uploadtwibbon_5960.jpg', '', ''),
(69, 77, 'Tim-SMEKDA-2', 'ditadit2005@gmail.com', 'ADITYA TRI AGUNG SEPTIAN NUGRAHA ', 'admin/filebukti/Tim-SMEKDA-2/IMG-20231019-WA00113931.jpg', 'admin/filebukti/Tim-SMEKDA-2/kartupelajar_1282.pdf', 'admin/filebukti/Tim-SMEKDA-2/followinstagram_5241.jpeg', 'admin/filebukti/Tim-SMEKDA-2/uploadtwibbon_2328.pdf', '', ''),
(70, 35, 'TEI-RAJIN', 'isadanadevamaulana@gmail.com', 'Isadana Deva Maulana', 'admin/filebukti/TEI-RAJIN/IMG-20231029-WA03952258.jpg', '', '', '', '', ''),
(71, 11, 'Skangood', 'muhammadsatriaputradwiandika@gmail.com', 'Muhammad Satria Putra Dwi Andika', 'admin/filebukti/Skangood/IMG-20231028-WA0001(1)2157.jpg', '', '', '', '', ''),
(72, 78, 'BIMA-CAKRA', 'mahbubgusti@gmail.com', 'SANDI CAHYONO', 'admin/filebukti/BIMA-CAKRA/BUKTI TRANSFER4309.jpg', 'admin/filebukti/BIMA-CAKRA/kartupelajar_8374.pdf', 'admin/filebukti/BIMA-CAKRA/followinstagram_3940.zip', 'admin/filebukti/BIMA-CAKRA/uploadtwibbon_6905.zip', '', ''),
(73, 79, 'KantriNyell', 'achmadfauzan2715@gmail.com', 'Rayhan iqbal pramono', 'admin/filebukti/KantriNyell/IMG-20231101-WA00284627.jpg', '', '', '', '', ''),
(74, 80, 'Skangood', 'dwi640479@gmail.com', 'Muhammad Iqbal Roif ', 'admin/filebukti/Skangood/Screenshot_20231028-0907466542.png', 'admin/filebukti/Skangood/kartupelajar_7938.pdf', 'admin/filebukti/Skangood/followinstagram_7655.png', 'admin/filebukti/Skangood/uploadtwibbon_6052.jpg', '', ''),
(75, 15, 'Afdhol-Team', 'maulanarizkyhamzah@gmail.com', 'Alief Hafid Fatin Hidayatullah ', 'admin/filebukti/Afdhol-Team/WhatsApp Image 2023-10-28 at 15.21.212318.jpeg', '', '', '', '', ''),
(76, 82, 'Gold-Maris', 'heronaufal223@gmail.com', 'Muhammad Hero Naufal', 'admin/filebukti/Gold-Maris/IMG-20231028-WA00137047.jpg', '', '', '', '', ''),
(77, 81, 'K24-IS-WELL', 'bimaedun17@gmail.com', 'BIMA RENDRA ZAIN WAHID ', 'admin/filebukti/K24-IS-WELL/IMG-20231013-WA00022434.jpg', '', '', '', '', ''),
(78, 83, 'EAST-TIMUN', 'nurdiyantorokusuma@gmail.com', 'NURDIYANTORO KUSUMA', 'admin/filebukti/EAST-TIMUN/IMG-20231029-WA00189450.jpg', '', '', '', '', ''),
(79, 84, 'ElektroDynamos', 'higmatiar.maulana@gmail.com', 'Mirza Candra Lesmana', 'admin/filebukti/ElektroDynamos/WhatsApp Image 2023-10-28 at 10.19.03 PM8114.jpeg', '', '', '', '', ''),
(80, 85, 'SEJATIM', 'hendrwanegi269@gmail.com', 'Ahmad Maulana Seva Eldima', 'admin/filebukti/SEJATIM/IMG-20231101-WA00023893.jpg', '', '', '', '', ''),
(81, 86, 'Blitzkrieg-', 'rifqirostyanta@gmail.com', 'Muhammad Fahim Rifqi Rostyanta ', 'admin/filebukti/Blitzkrieg-/IMG-20231025-WA00174113.jpg', '', '', '', '', ''),
(82, 86, 'Blitzkrieg-', 'rifqirostyanta@gmail.com', 'Muhammad Fahim Rifqi Rostyanta ', 'admin/filebukti/Blitzkrieg-/IMG-20231025-WA00176690.jpg', '', '', '', '', ''),
(83, 88, 'Kusuma-abadi', 'kusumaraka01@gmail.com', 'ILYAS RAKA KUSUMA', 'admin/filebukti/Kusuma-abadi/IMG-20231028-WA00276722.jpg', '', '', '', '', ''),
(84, 89, 'Masih-Pemula-', 'rayhanazril196@gmail.com', 'Mukhamad Rayhan Azril Nugroho ', 'admin/filebukti/Masih-Pemula-/IMG-20231030-WA00003691.jpg', '', '', '', '', ''),
(85, 90, 'Palvo2-', 'mirzadika1908@gmail.com', 'Mirza Daud Raharjo ', 'admin/filebukti/Palvo2-/IMG-20231020-WA00182756.jpg', '', '', '', '', ''),
(86, 91, 'Gold-garaga', 'zefahadiyab@gmail.com', 'Syailah ahmad', 'admin/filebukti/Gold-garaga/IMG-20231027-WA00205324.jpg', 'admin/filebukti/Gold-garaga/kartupelajar_2240.pdf', 'admin/filebukti/Gold-garaga/followinstagram_9229.jpg', 'admin/filebukti/Gold-garaga/uploadtwibbon_5175.jpg', '', ''),
(87, 94, 'Battlebots', 'moh.Bashorialwi19@gmail.com', 'Mochammad Bashori Alwi', 'admin/filebukti/Battlebots/IMG-20231102-WA00042601.jpg', '', '', '', '', ''),
(88, 96, 'EAST-JAVA', 'madiibfahmi27@gmail.com', 'Muhammad Adiib Fahmi ', 'admin/filebukti/EAST-JAVA/IMG-20231029-WA00378832.jpg', '', '', '', '', ''),
(89, 93, 'GOLD-DREAM', 'loisfernando677@gmail.com', 'LOIS FERNANDO', 'admin/filebukti/GOLD-DREAM/IMG-20231102-WA00477217.jpg', 'admin/filebukti/GOLD-DREAM/kartupelajar_7539.pdf', 'admin/filebukti/GOLD-DREAM/followinstagram_3791.jpg', 'admin/filebukti/GOLD-DREAM/uploadtwibbon_5916.jpg', '', ''),
(90, 97, 'Mavericks-', 'pelajarsusilo@gmail.com', 'Susilo ', 'admin/filebukti/Mavericks-/IMG-20231029-WA00024029.jpg', '', '', '', '', ''),
(91, 98, 'PALVO-1', 'ajiindra057@gmail.com', 'Indra Aji Firmansya ', 'admin/filebukti/PALVO-1/IMG202310201037167423.jpg', 'admin/filebukti/PALVO-1/kartupelajar_9116.jpg', 'admin/filebukti/PALVO-1/followinstagram_7961.jpg', 'admin/filebukti/PALVO-1/uploadtwibbon_5792.jpg', '', ''),
(92, 99, 'ALCATROZ', 'atus28@gmail.com', 'ANIFAH ATUS FITRIYAH', 'admin/filebukti/ALCATROZ/IMG-20231102-WA00165549.jpg', '', '', '', '', ''),
(93, 102, 'MEGASHIPS', 'idiputra70@gmail.com', 'IDI PRASETYO ', 'admin/filebukti/MEGASHIPS/IMG-20231102-WA00252928.jpg', '', '', '', '', ''),
(94, 103, 'TnE', 'elgaryogapratama4@gmail.com', 'ELGAR YOGA PRATAMA', 'admin/filebukti/TnE/IMG-20231029-WA00255496.jpg', '', '', '', '', ''),
(95, 104, 'PEMBURU-HOREG', 'aldybidex04@gmail.com', 'Aldy Susanto', 'admin/filebukti/PEMBURU-HOREG/Screenshot_20231029_0839475812.jpg', 'admin/filebukti/PEMBURU-HOREG/kartupelajar_9574.jpg', 'admin/filebukti/PEMBURU-HOREG/followinstagram_4916.jpg', 'admin/filebukti/PEMBURU-HOREG/uploadtwibbon_6572.jpg', '', ''),
(96, 105, 'Maxine', 'Nailahhariyanto10@gmail.com', 'Nailah Alya Mukhbita Putri Hariyanto', 'admin/filebukti/Maxine/IMG-20231029-WA00212992.jpg', '', '', '', '', ''),
(97, 106, 'Rabota', 'fendimaulana1827@gmail.com', 'Muh.Candra Maulana', 'admin/filebukti/Rabota/IMG-20231102-WA00118881.jpg', 'admin/filebukti/Rabota/kartupelajar_6193.pdf', 'admin/filebukti/Rabota/followinstagram_4219.jpg', 'admin/filebukti/Rabota/uploadtwibbon_2787.jpg', '', ''),
(98, 107, 'E-stroom', 'aa3401037@gmail.com', 'M. Aditya Rizky Ramadhan', 'admin/filebukti/E-stroom/IMG-20231102-WA00032002.jpg', '', '', '', '', ''),
(99, 101, 'All-About-Technology', 'richardrafian@gmail.com', 'Richard Rafianto Putra Utama', 'admin/filebukti/All-About-Technology/IMG-20231029-WA00106247.jpg', '', '', '', '', ''),
(100, 108, 'LIMITLESS-TECNOLOGY', 'rayhanzr10@gmail.com', 'RAYHAN ZIANUR RAHMAN', 'admin/filebukti/LIMITLESS-TECNOLOGY/WhatsApp Image 2023-10-28 at 18.01.341671.jpeg', '', '', '', '', ''),
(101, 109, 'The-Circuit-Breakers', 'rasyayasin226@gmail.com', 'Rasya Yasin Arafat', 'admin/filebukti/The-Circuit-Breakers/IMG-20231025-WA00024816.jpg', '', '', '', '', ''),
(103, 111, 'GOLD-STAR', 'acmadabbar@gmail.con', 'ACMAD ABBRAR RAHMATULLAH', 'admin/filebukti/GOLD-STAR/IMG-20231028-WA00529258.jpg', 'admin/filebukti/GOLD-STAR/kartupelajar_9327.pdf', 'admin/filebukti/GOLD-STAR/followinstagram_5579.jpg', 'admin/filebukti/GOLD-STAR/uploadtwibbon_6013.jpg', '', ''),
(104, 63, 'Swastamita Tim', 'radinazayyani@gmail.com', 'Radina Zayyani', 'admin/filebukti/Swastamita-Tim/IMG-20231108-WA00228242.jpg', 'admin/filebukti/Swastamita Tim/kartupelajar_5118.pdf', 'admin/filebukti/Swastamita Tim/followinstagram_8170.jpeg', 'admin/filebukti/Swastamita Tim/uploadtwibbon_8424.jpeg', 'admin/filebukti/Swastamita Tim/abstrak_5016.pdf', 'admin/filebukti/Swastamita-Tim/fullpaper_1628.pdf'),
(105, 112, 'WelcomeSense', 'afrizanur14@gmail.com', 'Afriza Nur Hamzah', 'admin/filebukti/WelcomeSense/IMG-20231025-WA00094502.jpg', '', '', '', '', ''),
(109, 49, 'IoT Genius', 'mnikonurcahyono50@gmail.com', 'M.Niko Nur Cahyono', 'admin/filebukti/IoT-Genius/bukti pembayaran6240.jpeg', 'admin/filebukti/IoT Genius/kartupelajar_3071.pdf', 'admin/filebukti/IoT Genius/followinstagram_5392.jpeg', 'admin/filebukti/IoT Genius/uploadtwibbon_3275.jpeg', 'admin/filebukti/IoT Genius/abstrak_4327.pdf', 'admin/filebukti/IoT-Genius/fullpaper_9600.pdf'),
(110, 118, 'Palvoyage', 'viorelakiko6@gmail.com', 'Viorel Akiko Manggala Ary Putra', 'admin/filebukti/Palvoyage/Gambar WhatsApp 2023-11-14 pukul 00.35.54_c47fb93a9541.jpg', 'admin/filebukti/Palvoyage/kartupelajar_2481.pdf', 'admin/filebukti/Palvoyage/followinstagram_9125.jpg', 'admin/filebukti/Palvoyage/uploadtwibbon_6250.jpg', 'admin/filebukti/Palvoyage/abstrak_5205.pdf', 'admin/filebukti/Palvoyage/fullpaper_1304.pdf'),
(111, 119, 'NAWASENA', 'rommyfirman1705@gmail.com', 'Rommy Firman Junaedi ', 'admin/filebukti/NAWASENA/Transfer atas nama HAKIM CEL_AW6_Rommy Firman Junaedi_SMK Negeri 1 Singosari_Pengembangan Paving Block Limbah Kain4610.pdf', 'admin/filebukti/NAWASENA/kartupelajar_4326.pdf', 'admin/filebukti/NAWASENA/followinstagram_5252.jpg', 'admin/filebukti/NAWASENA/uploadtwibbon_3497.jpg', 'admin/filebukti/NAWASENA/abstrak_6835.pdf', 'admin/filebukti/NAWASENA/fullpaper_3020.pdf'),
(112, 120, 'MONUSCAR', 'athihasanbukhori@gmail.com', 'ATHI SAYYIDAH', 'admin/filebukti/MONUSCAR/WhatsApp Image 2023-11-08 at 12.34.53_1a92c8fb6723.jpg', 'admin/filebukti/MONUSCAR/kartupelajar_7902.pdf', 'admin/filebukti/MONUSCAR/followinstagram_6960.jpg', 'admin/filebukti/MONUSCAR/uploadtwibbon_6404.jpg', 'admin/filebukti/MONUSCAR/abstrak_5420.pdf', 'admin/filebukti/MONUSCAR/fullpaper_1293.pdf'),
(113, 122, 'LAK', 'nizamulm83@gmail.com', 'NIZAMUL MULUK ', 'admin/filebukti/LAK/Screenshot_20231026-0740593661.jpg', '', '', '', '', ''),
(114, 123, 'CAROX SMANSA', 'bagussetiawanardiansyah@gmail.com', 'Bagus Setiawan Ardiansyah ', 'admin/filebukti/CAROX-SMANSA/Yasmin Tsabitha Arifanti_AW6_Bagus Setiawan Ardiansyah_SMAN 1 Pamekasan_Inovasi Sistem Irigasi dan Monitoring Semaian Hidroponik7950.jpg', 'admin/filebukti/CAROX SMANSA/kartupelajar_5736.pdf', 'admin/filebukti/CAROX SMANSA/followinstagram_1516.pdf', 'admin/filebukti/CAROX SMANSA/uploadtwibbon_2682.pdf', 'admin/filebukti/CAROX SMANSA/abstrak_9030.pdf', 'admin/filebukti/CAROX-SMANSA/fullpaper_3914.pdf'),
(115, 124, 'SMANIDHA JUARA ', 'nadinnurma822@gmail.com', 'Nadin Nurma Pitaloka ', 'admin/filebukti/SMANIDHA-JUARA-/Screenshot_2023-11-08-20-05-14-10_e8205ec1cda7e9657fadf502be9b7b785273.jpg', 'admin/filebukti/SMANIDHA JUARA /kartupelajar_7334.pdf', 'admin/filebukti/SMANIDHA JUARA /followinstagram_3642.jpg', 'admin/filebukti/SMANIDHA JUARA /uploadtwibbon_8937.jpg', '', ''),
(116, 125, 'Kun Fayakun ', 'tusifanabila@gmail.com', 'Gusti Ananda Firdaus ', 'admin/filebukti/Kun-Fayakun-/IMG-20231108-WA00324375.jpg', 'admin/filebukti/Kun Fayakun /kartupelajar_7971.pdf', 'admin/filebukti/Kun Fayakun /followinstagram_9896.jpg', 'admin/filebukti/Kun Fayakun /uploadtwibbon_5178.jpg', 'admin/filebukti/Kun Fayakun /abstrak_9728.pdf', 'admin/filebukti/Kun-Fayakun-/fullpaper_4628.pdf'),
(117, 126, 'Ayla Team', 'ayunda895758@gmail.com', 'Ayunda Puspa Fathma Azzahra', 'admin/filebukti/Ayla-Team/Screenshot_20231113-160106_Shopee4268.jpg', 'admin/filebukti/Ayla Team/kartupelajar_9915.pdf', 'admin/filebukti/Ayla Team/followinstagram_4261.pdf', 'admin/filebukti/Ayla Team/uploadtwibbon_4825.pdf', 'admin/filebukti/Ayla Team/abstrak_1579.pdf', 'admin/filebukti/Ayla-Team/fullpaper_3511.pdf'),
(118, 127, 'CUCUR Team', 'kevinmulkih@gmail.com', 'Ayu Zaliyanti ', 'admin/filebukti/CUCUR-Team/Transfer Atas Nama Uswatun Khasanah_AW6_Ayu Zaliyanti_MAN 1 Lamongan_PROMAB (Proper Major Application) Inovasi Sinergitas Sosial Aplikasi Tepat Jurusan Berbasis VR (Virtual Reality2747.pdf', 'admin/filebukti/CUCUR Team/kartupelajar_7981.pdf', 'admin/filebukti/CUCUR Team/followinstagram_6337.pdf', 'admin/filebukti/CUCUR Team/uploadtwibbon_5233.pdf', 'admin/filebukti/CUCUR Team/abstrak_8600.pdf', 'admin/filebukti/CUCUR-Team/fullpaper_8359.pdf'),
(119, 115, 'ULFA EKA YULIANTI ', 'ulfaeka007@gmail.com', 'Ulfa Eka Yulianti ', 'admin/filebukti/ULFA-EKA-YULIANTI-/WhatsApp Image 2023-11-08 at 15.43.512493.jpeg', 'admin/filebukti/ULFA EKA YULIANTI /kartupelajar_3831.pdf', 'admin/filebukti/ULFA EKA YULIANTI /followinstagram_3869.jpg', 'admin/filebukti/ULFA EKA YULIANTI /uploadtwibbon_9821.jpg', 'admin/filebukti/ULFA EKA YULIANTI /abstrak_5533.pdf', 'admin/filebukti/ULFA-EKA-YULIANTI-/fullpaper_4229.pdf'),
(120, 128, 'NINE STAR TEAM', 'randikhansayafikhalid@gmail.com', 'Randi Khansa Yafi Khalid ', 'admin/filebukti/NINE-STAR-TEAM/Scan Bukti Transfer8607._', 'admin/filebukti/NINE STAR TEAM/kartupelajar_8181.jpeg', 'admin/filebukti/NINE STAR TEAM/followinstagram_5779.jpeg', 'admin/filebukti/NINE STAR TEAM/uploadtwibbon_4032.jpeg', 'admin/filebukti/NINE STAR TEAM/abstrak_3718.pdf', 'admin/filebukti/NINE-STAR-TEAM/fullpaper_2908.pdf'),
(121, 121, 'Aksata', 'nayshillatmajaya1737@gmail.com', 'Septi Ana Putri', 'admin/filebukti/Aksata/ARJUNINA_AW6_SEPTI ANA PUTRI_MAN 2 NGANJUK_AUTONOMOUS ROBOBOAT SEBAGAI ALAT PENDETEKSI KUALITAS AIR UNTUK MENGETAHUI KOMUNITAS JENIS IKAN DI PERAIRAN NUSANTARA3515.pdf', 'admin/filebukti/Aksata/kartupelajar_5330.pdf', 'admin/filebukti/Aksata/followinstagram_2222.jpg', 'admin/filebukti/Aksata/uploadtwibbon_2897.jpg', 'admin/filebukti/Aksata/abstrak_4028.pdf', 'admin/filebukti/Aksata/fullpaper_3037.pdf'),
(122, 129, 'Viejo Team', 'zanuarjepara7@gmail.com', 'Dimas Ardiansyah', 'admin/filebukti/Viejo-Team/Dimas_Ardiansyah_AW6_Dimas_Ardiansyah_SMK_NU_Maarif_Kudus_Vehicle7495.pdf', 'admin/filebukti/Viejo Team/kartupelajar_4463.pdf', 'admin/filebukti/Viejo Team/followinstagram_7133.pdf', 'admin/filebukti/Viejo Team/uploadtwibbon_5318.pdf', 'admin/filebukti/Viejo Team/abstrak_7218.pdf', 'admin/filebukti/Viejo-Team/fullpaper_4138.pdf'),
(124, 130, 'LISTRIK SMKNICE', 'sulthonumami@gmail.com', 'Sulthon Umami', 'admin/filebukti/LISTRIK-SMKNICE/WhatsApp Image 2023-11-08 at 21.41.445699.jpeg', 'admin/filebukti/LISTRIK SMKNICE/kartupelajar_6663.pdf', 'admin/filebukti/LISTRIK SMKNICE/followinstagram_6168.png', 'admin/filebukti/LISTRIK SMKNICE/uploadtwibbon_2491.png', 'admin/filebukti/LISTRIK SMKNICE/abstrak_3759.pdf', 'admin/filebukti/LISTRIK-SMKNICE/fullpaper_2045.pdf'),
(125, 131, 'VORT3 ONE', 'azizikalibokor@gmail.com', 'Mochammad Azizi', 'admin/filebukti/VORT3-ONE/bukti pembayaran9405.jpg', 'admin/filebukti/VORT3 ONE/kartupelajar_5395.pdf', 'admin/filebukti/VORT3 ONE/followinstagram_9132.jpg', 'admin/filebukti/VORT3 ONE/uploadtwibbon_1146.jpg', 'admin/filebukti/VORT3 ONE/abstrak_8390.pdf', 'admin/filebukti/VORT3-ONE/fullpaper_9459.pdf'),
(127, 134, 'Badafir', 'bagasnashrur@gmail.com', 'M. Bagas Nashrur Rajaba', 'admin/filebukti/Badafir/WhatsApp Image 2023-11-09 at 17.35.394834.jpeg', 'admin/filebukti/Badafir/kartupelajar_2828.pdf', 'admin/filebukti/Badafir/followinstagram_4947.pdf', 'admin/filebukti/Badafir/uploadtwibbon_4816.pdf', 'admin/filebukti/Badafir/abstrak_2799.pdf', 'admin/filebukti/Badafir/fullpaper_6375.pdf'),
(128, 135, 'GoldenBoys', 'nabilfiransyah4@gmail.com', 'Ahmad Rafli Putra Maulana', 'admin/filebukti/GoldenBoys/IMG-20231109-WA00326362.jpg', 'admin/filebukti/GoldenBoys/kartupelajar_4699.pdf', 'admin/filebukti/GoldenBoys/followinstagram_4755.pdf', 'admin/filebukti/GoldenBoys/uploadtwibbon_8646.pdf', 'admin/filebukti/GoldenBoys/abstrak_2897.pdf', 'admin/filebukti/GoldenBoys/fullpaper_4976.pdf'),
(129, 50, 'Woww Vibes ', 'latifah210523@gmail.com', 'Ulfa Nurlaila Rizka ', 'admin/filebukti/Woww-Vibes-/IMG-20231108-WA01238421.jpg', 'admin/filebukti/Woww Vibes /kartupelajar_6783.pdf', 'admin/filebukti/Woww Vibes /followinstagram_1481.jpg', 'admin/filebukti/Woww Vibes /uploadtwibbon_5510.jpg', 'admin/filebukti/Woww Vibes /abstrak_5032.pdf', 'admin/filebukti/Woww-Vibes-/fullpaper_7609.pdf'),
(130, 132, 'Briliant People', 'diondionn99@gmail.com', 'Ardiansyah Dion Saputra', 'admin/filebukti/Briliant-People/DOC-20231108-WA0026_4846.', 'admin/filebukti/Briliant People/kartupelajar_9628.pdf', 'admin/filebukti/Briliant People/followinstagram_3959.pdf', 'admin/filebukti/Briliant People/uploadtwibbon_2466.pdf', 'admin/filebukti/Briliant People/abstrak_3507.pdf', 'admin/filebukti/Briliant-People/fullpaper_7678.pdf'),
(131, 136, 'KASSOH', 'ridhoassadi22@gmail.com', 'MUH. AS’ADI RIDHO AS SAFI’I', 'admin/filebukti/KASSOH/bayar24905.jpg', 'admin/filebukti/KASSOH/kartupelajar_6853.pdf', 'admin/filebukti/KASSOH/followinstagram_3222.jpg', 'admin/filebukti/KASSOH/uploadtwibbon_8827.jpg', 'admin/filebukti/KASSOH/abstrak_2914.pdf', 'admin/filebukti/KASSOH/fullpaper_1057.pdf'),
(132, 137, 'ABS-', 'dickycandrawinata68@gmail.com', 'Dicky Febrian Candrawinata', 'admin/filebukti/ABS-/f582181e-5be3-42e7-9a51-68821e83d7a82452.jpeg', '', '', '', '', ''),
(133, 138, 'Prunus-Serrulata', 'anafidia0101@gmail.com', 'Dafa Maulana Muhammad', 'admin/filebukti/Prunus-Serrulata/IMG-20231029-WA00006552.jpg', '', '', '', '', ''),
(134, 139, 'ASTRAJINGGA', 'pitalokadiyah226@gmail.com', 'ANNISA RAHMANIA', 'admin/filebukti/ASTRAJINGGA/WhatsApp Image 2023-11-08 at 20.21.021296.jpeg', 'admin/filebukti/ASTRAJINGGA/kartupelajar_5215.pdf', 'admin/filebukti/ASTRAJINGGA/followinstagram_3414.jpeg', 'admin/filebukti/ASTRAJINGGA/uploadtwibbon_1530.jpeg', 'admin/filebukti/ASTRAJINGGA/abstrak_4218.pdf', 'admin/filebukti/ASTRAJINGGA/fullpaper_5663.pdf'),
(135, 140, 'Trio Edukator Inovatif', 'ahmadbadarudin716@gmail.com', 'Ahmad Badarudin', 'admin/filebukti/Trio-Edukator-Inovatif/WhatsApp Image 2023-11-13 at 21.15.004957.jpeg', 'admin/filebukti/Trio Edukator Inovatif/kartupelajar_5978.pdf', 'admin/filebukti/Trio Edukator Inovatif/followinstagram_4375.png', 'admin/filebukti/Trio Edukator Inovatif/uploadtwibbon_6794.png', 'admin/filebukti/Trio Edukator Inovatif/abstrak_3350.pdf', 'admin/filebukti/Trio-Edukator-Inovatif/fullpaper_7648.pdf'),
(136, 141, 'KIR Skanepra', 'farelmalolo54@gmail.com', 'Mohammad Puji Fareliyanto', 'admin/filebukti/KIR-Skanepra/IMG-20231113-WA00288222.jpg', 'admin/filebukti/KIR Skanepra/kartupelajar_9506.pdf', 'admin/filebukti/KIR Skanepra/followinstagram_8974.pdf', 'admin/filebukti/KIR Skanepra/uploadtwibbon_9086.pdf', 'admin/filebukti/KIR Skanepra/abstrak_9247.pdf', 'admin/filebukti/KIR-Skanepra/fullpaper_3849.pdf'),
(137, 142, 'aremasy', 'putrikhmrh@gmail.com', 'Putri Khumairoh ', 'admin/filebukti/aremasy/IMG-20231108-WA00789335.jpg', 'admin/filebukti/aremasy/kartupelajar_8969.pdf', '', '', 'admin/filebukti/aremasy/abstrak_3546.pdf', 'admin/filebukti/aremasy/fullpaper_7629.pdf'),
(138, 143, 'SPICHEMSA', 'bayuac307@gmail.com', 'BAYU ADI CAHYONOI', 'admin/filebukti/SPICHEMSA/WhatsApp Image 2023-11-08 at 18.59.546881.jpeg', 'admin/filebukti/SPICHEMSA/kartupelajar_8887.pdf', 'admin/filebukti/SPICHEMSA/followinstagram_4102.pdf', 'admin/filebukti/SPICHEMSA/uploadtwibbon_4435.pdf', 'admin/filebukti/SPICHEMSA/abstrak_9755.pdf', 'admin/filebukti/SPICHEMSA/fullpaper_2179.pdf'),
(139, 116, 'COSMIC FEAR MAN 2 NGANJUK', 'satilham81@gmail.com', 'SATRIA ILHAM PAMUJI', 'admin/filebukti/COSMIC-FEAR-MAN-2-NGANJUK/BUKTI TF KTI 7288.jpg', '', '', '', 'admin/filebukti/COSMIC-FEAR-MAN-2-NGANJUK/ABSTRAK KTI 1.pdf', 'admin/filebukti/COSMIC-FEAR-MAN-2-NGANJUK/fullpaper_2490.pdf'),
(140, 144, 'arespa', 'zhrafrda37@gmail.com', 'zahra firdausi', 'admin/filebukti/arespa/85d4eb47-4119-49aa-9ff6-1594b98a6d049613.jpg', 'admin/filebukti/arespa/kartupelajar_3353.pdf', 'admin/filebukti/arespa/followinstagram_8359.jpeg', 'admin/filebukti/arespa/uploadtwibbon_8711.jpeg', 'admin/filebukti/arespa/abstrak_5256.pdf', 'admin/filebukti/arespa/fullpaper_8588.pdf'),
(141, 145, 'Ubed Team', 'danangpriyasudanat@gmail.com', 'Diovani Aji Agustiar', 'admin/filebukti/Ubed-Team/WhatsApp Image 2023-11-14 at 07.08.243000.jpeg', 'admin/filebukti/Ubed Team/kartupelajar_3702.pdf', 'admin/filebukti/Ubed Team/followinstagram_7346.jpeg', 'admin/filebukti/Ubed Team/uploadtwibbon_3030.jpeg', 'admin/filebukti/Ubed Team/abstrak_9789.pdf', 'admin/filebukti/Ubed-Team/fullpaper_5260.pdf'),
(143, 146, 'EAST_TIGHFAR', 'antananda1220@gmail.com', 'ANTANANDA REKSADJENDRA DIMASING BAGAVAGITA ', 'admin/filebukti/EAST_TIGHFAR/IMG-20231114-WA00148181.jpg', 'admin/filebukti/EAST_TIGHFAR/kartupelajar_7022.pdf', 'admin/filebukti/EAST_TIGHFAR/followinstagram_9848.jpg', 'admin/filebukti/EAST_TIGHFAR/uploadtwibbon_8458.webp', '', ''),
(144, 147, 'enTARan', 'ahmadnabalfalah@gmail.com', 'Ahmad Nabál Falah', 'admin/filebukti/enTARan/WhatsApp Image 2023-10-27 at 17.01.004497.jpeg', '', '', '', '', ''),
(145, 149, 'Dewaruci-', 'alinurramadhan02@gmail.com', 'Ali Nur Ramadhan ', 'admin/filebukti/Dewaruci-/IMG-20231121-WA00417540.jpg', '', '', '', '', ''),
(146, 150, 'D2N', 'deyfativasyaharisandi18@gmail.com', 'Deyfa Tivasyah A. ', 'admin/filebukti/D2N/315D43AF-9008-4175-B61E-8A25C7C92D929588.jpeg', '', '', '', '', ''),
(147, 150, 'D2N', 'deyfativasyaharisandi18@gmail.com', 'Deyfa Tivasyah A. ', 'admin/filebukti/D2N/315D43AF-9008-4175-B61E-8A25C7C92D927906.jpeg', '', '', '', '', ''),
(148, 151, 'Restoe-Boemi', 'satriabimandra@gmail.com', 'Satria Bimasakti', 'admin/filebukti/Restoe-Boemi/IMG-20231121-WA00186759.jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_point`
--

CREATE TABLE `tb_point` (
  `id` int(11) NOT NULL,
  `points` varchar(20) NOT NULL,
  `seleksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tl_ffr`
--

CREATE TABLE `tl_ffr` (
  `id` int(11) NOT NULL,
  `tgl_pendaftaran` varchar(200) NOT NULL,
  `tgl_pelatihan1` varchar(255) NOT NULL,
  `tgl_pelatihan2` varchar(255) NOT NULL,
  `tgl_seleksi1` varchar(255) NOT NULL,
  `tgl_pengumuman1` varchar(255) NOT NULL,
  `tgl_seleksi2` varchar(255) NOT NULL,
  `tgl_pengumuman2` varchar(255) NOT NULL,
  `tgl_tm` varchar(255) NOT NULL,
  `tgl_lomba` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tl_ffr`
--

INSERT INTO `tl_ffr` (`id`, `tgl_pendaftaran`, `tgl_pelatihan1`, `tgl_pelatihan2`, `tgl_seleksi1`, `tgl_pengumuman1`, `tgl_seleksi2`, `tgl_pengumuman2`, `tgl_tm`, `tgl_lomba`) VALUES
(1, '29 September 2023 – 29 Oktober 2023', '11 November 2023', '17 November 2023', '24 November 2023', '-', '-', '-', '23 November 2023', '25 November 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lkti`
--

CREATE TABLE `tl_lkti` (
  `id` int(11) NOT NULL,
  `tgl_daftar` varchar(200) NOT NULL,
  `tgl_abstrak` varchar(255) NOT NULL,
  `tgl_bayar` varchar(255) NOT NULL,
  `tgl_karya` varchar(255) NOT NULL,
  `tgl_nilai` varchar(255) NOT NULL,
  `tgl_finalis` varchar(255) NOT NULL,
  `tgl_poster` varchar(255) NOT NULL,
  `tgl_tm` varchar(255) NOT NULL,
  `tgl_presentasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tl_lkti`
--

INSERT INTO `tl_lkti` (`id`, `tgl_daftar`, `tgl_abstrak`, `tgl_bayar`, `tgl_karya`, `tgl_nilai`, `tgl_finalis`, `tgl_poster`, `tgl_tm`, `tgl_presentasi`) VALUES
(1, '29 September 2023 – 29 Oktober 2023', '31 Oktober 2023', '1 - 13 November 2023', '-', '14-16 November 2023', '17 November 2023', '18 - 23 November 2023', '24 November 2023', '25-26 November 2023');

-- --------------------------------------------------------

--
-- Table structure for table `tl_plc`
--

CREATE TABLE `tl_plc` (
  `id` int(11) NOT NULL,
  `tgl_daftar` varchar(200) NOT NULL,
  `tgl_pelatihan` varchar(255) NOT NULL,
  `tgl_penyisihan` varchar(255) NOT NULL,
  `tgl_lolos` varchar(255) NOT NULL,
  `tgl_tm` varchar(255) NOT NULL,
  `tgl_final` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tl_plc`
--

INSERT INTO `tl_plc` (`id`, `tgl_daftar`, `tgl_pelatihan`, `tgl_penyisihan`, `tgl_lolos`, `tgl_tm`, `tgl_final`) VALUES
(1, '29 September 2023 – 29 Oktober 2023', '11 November 2023', '24 November2023', '25 November2023', '25 November2023', '25 November2023');

-- --------------------------------------------------------

--
-- Table structure for table `upload_ffr`
--

CREATE TABLE `upload_ffr` (
  `id_ffr` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama_ketua` varchar(200) NOT NULL,
  `nama_anggota` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `telp` varchar(200) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_ffr`
--

INSERT INTO `upload_ffr` (`id_ffr`, `email`, `nama_ketua`, `nama_anggota`, `sekolah`, `telp`, `link`) VALUES
(1, '', 'asdas', 'asdas', 'asdd', '21321', 'https://www.google.com/search?q=validasi+jenis+ukuran+upload+pdf+dan+zip+php&ei=fXjgYdIWjdrPuw_koZGYDw&ved=0ahUKEwiSyYW0tq_1AhUN7XMBHeRQBPMQ4dUDCA0&uact=5&oq=validasi+jenis+ukuran+upload+pdf+dan+zip+php&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEM0COgcIABBHELADOgUIIRCgAToECCEQFToHCCEQChCgAUoECEEYAEoECEYYAFCvAljST2COUmgBcAB4AIABcYgB8gqSAQQxNS4xmAEAoAEByAEIwAEB&sclient=gws-wiz');

-- --------------------------------------------------------

--
-- Table structure for table `upload_lkti`
--

CREATE TABLE `upload_lkti` (
  `id_lkti` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama_ketua` varchar(200) NOT NULL,
  `nama_anggota` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `telp` varchar(200) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_lkti`
--

INSERT INTO `upload_lkti` (`id_lkti`, `email`, `nama_ketua`, `nama_anggota`, `sekolah`, `telp`, `file`) VALUES
(1, 'adirahmad607@gmail.com', 'adsada', 'sadsadas', 'asdasd', '123', 'filelkti/61e07da8149a6website_aw5.zip'),
(2, '', 'asfasf', 'zcczxc', 'zxczxc', '3324', 'filelkti/61e081ba89fbfwebsite_aw5.zip'),
(3, '', 'se', 'sema', 'smk', '0831', 'filelkti/61e0839da67b8website_aw5.zip'),
(4, '', 'asdasd', 'asdas', 'asdas', '2321312', 'filelkti/61e0878fa71dfAdi Rahmad R_0921040046_EAS_ELKA_P.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `upload_plc`
--

CREATE TABLE `upload_plc` (
  `id_plc` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama_tim` varchar(255) NOT NULL,
  `nama_ketua` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_plc`
--

INSERT INTO `upload_plc` (`id_plc`, `email`, `nama_tim`, `nama_ketua`, `sekolah`, `waktu`, `file`) VALUES
(1, 'rifqirostyanta@gmail.com', 'Blitzkrieg ', 'Muhammad Fahim Rifqi Rostyanta ', 'SMK Negeri 1 Ceme', '26 November 2023,11:40', 'fileplc/06_blitzkrieg_SMKN 1 Cerme.rar'),
(2, 'ardians4673@gmail.com', 'ALARiC', 'Muamal Ardiansyah ', 'SMKN 7 Surabaya', '26 November 2023,11:40', 'fileplc/PLC3_ALARiC_SMKN 7 SURABAYA.zip'),
(3, 'dhimasrama24@gmail.com', 'Always Bismillah ', 'Dhimas Maulana Ramadhani ', 'SMKS PGRI Singosari ', '26 November 2023,11:40', 'fileplc/PLC04_AlwaysBismillah_SMKS PGRI Singosari.rar'),
(4, 'nadiansyahgibranzaky@gmail.com', 'AUTOMIC', 'GIBRAN ZAKY NADIANSYAH', 'SMKN 3 SURABAYA', '26 November 2023,15:35', 'fileplc/7_AUTOMIC_SMKN 3 SURABAYA.zip'),
(5, 'sigitfandi12@smk.belajar.id', 'Butuh Liburan', 'Sigit Ali Fandi', 'SMK Negeri 1 Cerme', '26 November 2023,15:36', 'fileplc/PLC04_BUTUH LIBURAN_SMKN 1 CERME GRESIK.zip'),
(6, 'reyhanadjie7@gmail.com', 'Electric force', 'Naufaliano saputra', 'SMKN 1 KEDIRI', '26 November 2023,15:36', 'fileplc/01_ELECTRICFORCE_SMKN1KEDIRI.zip'),
(7, 'afifsalman03@gmail.com', 'BUBADIBAKO', 'SALMAN', 'SMKN 1 KOTA KEDIRI', '26 November 2023,15:37', 'fileplc/BUBADIBAKO_SMKN 1 KEDIRI _05.rar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksiupload`
--
ALTER TABLE `aksiupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `login_peserta`
--
ALTER TABLE `login_peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_point`
--
ALTER TABLE `tb_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_ffr`
--
ALTER TABLE `tl_ffr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_lkti`
--
ALTER TABLE `tl_lkti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_plc`
--
ALTER TABLE `tl_plc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_ffr`
--
ALTER TABLE `upload_ffr`
  ADD PRIMARY KEY (`id_ffr`);

--
-- Indexes for table `upload_lkti`
--
ALTER TABLE `upload_lkti`
  ADD PRIMARY KEY (`id_lkti`);

--
-- Indexes for table `upload_plc`
--
ALTER TABLE `upload_plc`
  ADD PRIMARY KEY (`id_plc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksiupload`
--
ALTER TABLE `aksiupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_admin`
--
ALTER TABLE `login_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_peserta`
--
ALTER TABLE `login_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tb_point`
--
ALTER TABLE `tb_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_ffr`
--
ALTER TABLE `tl_ffr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_lkti`
--
ALTER TABLE `tl_lkti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_plc`
--
ALTER TABLE `tl_plc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_ffr`
--
ALTER TABLE `upload_ffr`
  MODIFY `id_ffr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_lkti`
--
ALTER TABLE `upload_lkti`
  MODIFY `id_lkti` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upload_plc`
--
ALTER TABLE `upload_plc`
  MODIFY `id_plc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

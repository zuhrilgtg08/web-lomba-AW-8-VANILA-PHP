-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 06:27 AM
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
CREATE DATABASE IF NOT EXISTS `autw8743_automation_week` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `autw8743_automation_week`;

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
(1, 'on'),
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
(5, 'adminffr@gmail.com', '3b316091c5e96a025b790355c1183540', 'adminffr', 'admin_ffr', 'ffr'),
(6, 'adminlf@gmail.com', 'bc7156e1a4ded667955a1691a1432068', 'adminlf', 'admin_lf', 'lf');

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
(165, 'PERINTIS HORE', 'FALUN', '', '', 'SMKN 99', 'TEST@GMAIL.COM', '092304004567', '85f922d77ee3e4e67d0bc474d8792370', 'ffr', '', '', '', 0),
(166, 'PERINTIS HORE 2', 'FILAN', '', '', 'SMKN 98', 'TEST1@GMAIL.COM', '0923040045678', 'ee53d4213c897ad632bb8d824762f918', 'lkti', '', '', '', 0),
(167, 'PERINTIS HORE 3', 'FALUN', '', '', 'SMKN 97', 'TEST2@GMAIL.COM', '0923040045679', '05681e7dfb22f4f575c5207b3b9f8cd7', 'plc', '', '', '', 0),
(172, 'SOUND HOREG', 'Zakaria', 'Ujang', 'Firman', 'SMK Negeri 2 Surabaya', 'pesertalf123@gmail.com', '81234567891', '8fadba14d0bc905eb3396e3059ebd3de', 'lf', '', '', '', 0),
(173, 'Faras', 'Faras', 'Ganteng', 'Banget', 'Ganteng', 'farasganteng@gmail.cpm', '0852369785', 'a3040f90cc20fa672fe31efcae41d2db', 'plc', '', '', '', 0),
(174, 'Gsjsjs', 'Bsjdkdj', 'Vsbejd', 'Fshdjd', 'Vsnsjus d', 'dagsi@gmail.com', '0852399454', '39e889d96f5bc040175f75528349814a', 'lkti', '', '', '', 0),
(175, 'Chsjdhs', 'Hsjsjsvs', 'Gwjwheus', 'Gwjsks', 'Gejsjshd', 'ayo@gmail.com', '0856985', '39e889d96f5bc040175f75528349814a', 'lkti', '', '', '', 0),
(176, 'TRIAL', 'TRIAL', '', '', 'TRIAL', 'TRIAL@gmail.com', '012345678', '9f4cd052225c16c3545c271c071b1b73', 'ffr', '', '', '', 0),
(177, 'TRIAL', 'TRIAL', 'TRIAL', 'TRIAL', 'TRIAL', 'TRIALBARU@GMAIL.COM', '12345678', '3906c9046775a2923b3f9d579c07e55d', 'ffr', '', '', '', 4),
(178, 'kompaknew', 'farras', 'zuhril', 'cak ari', 'smkn 99 cerme', 'kompak@gmail.com', '12345678', '577be0b0c9bfaa09605e3b6a27f615f8', 'lkti', 'Ekonomi Kreatif', 'kompak abstrak', '', 1);

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
(148, 151, 'Restoe-Boemi', 'satriabimandra@gmail.com', 'Satria Bimasakti', 'admin/filebukti/Restoe-Boemi/IMG-20231121-WA00186759.jpg', '', '', '', '', ''),
(149, 177, 'TRIAL', 'TRIALBARU@GMAIL.COM', 'TRIAL', 'admin/filebukti/TRIAL/Circle Logo FFR6474.png', 'admin/filebukti/TRIAL/kartupelajar_9003.pdf', 'admin/filebukti/TRIAL/followinstagram_6726.png', 'admin/filebukti/TRIAL/uploadtwibbon_6197.png', '', ''),
(150, 177, 'TRIAL', 'TRIALBARU@GMAIL.COM', 'TRIAL', 'admin/filebukti/TRIAL/Circle Logo FFR2373.png', 'admin/filebukti/TRIAL/kartupelajar_9003.pdf', 'admin/filebukti/TRIAL/followinstagram_6726.png', 'admin/filebukti/TRIAL/uploadtwibbon_6197.png', '', '');

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
(1, '10 Agustus 2025 – 29 September 2025', '10 Oktober 2025', '15 Oktober 2025', '20 Oktober 2025', '-', '-', '-', '23 Oktober 2025', '26 Oktober 2025');

-- --------------------------------------------------------

--
-- Table structure for table `tl_lf`
--

CREATE TABLE `tl_lf` (
  `id` int(11) NOT NULL,
  `tgl_daftar` varchar(500) NOT NULL,
  `tgl_tm` varchar(500) NOT NULL,
  `tgl_penyisihan` varchar(500) NOT NULL,
  `tgl_lolos` varchar(500) NOT NULL,
  `tgl_final` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tl_lf`
--

INSERT INTO `tl_lf` (`id`, `tgl_daftar`, `tgl_tm`, `tgl_penyisihan`, `tgl_lolos`, `tgl_final`) VALUES
(1, '25 Agusutus - 10 September 2025', '22 Agustus 2025', '13 September - 15 September 2025', '16 September 2025', '18 September 2025');

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
(1, '3 Agustus 2025 – 26 Oktober 2025', '31 Oktober 2025', '3 Agustus 2025 - 10 Agustus 2025', '-', '14-16 November 2025', '17 November 2025', '3 Agustus 2025 - 23 November 2025', '24 November 2025', '25-26 November 2025');

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
(1, '5 Agustus 2025 – 29 Desember2025', '3 Agustus 2025', '3 Agustus 2025', '25 November 2023', '25 November 2023', '25 November 2023');

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
(7, 'afifsalman03@gmail.com', 'BUBADIBAKO', 'SALMAN', 'SMKN 1 KOTA KEDIRI', '26 November 2023,15:37', 'fileplc/BUBADIBAKO_SMKN 1 KEDIRI _05.rar'),
(8, 'adminplc@gmail.com', 'PERINTIS HORE 3', 'FALUN', 'SMKN 97', '05 August 2025,08:18', 'fileplc/Screenshot 2025-08-05 075136.rar');

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
-- Indexes for table `tl_lf`
--
ALTER TABLE `tl_lf`
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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login_peserta`
--
ALTER TABLE `login_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

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
-- AUTO_INCREMENT for table `tl_lf`
--
ALTER TABLE `tl_lf`
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
  MODIFY `id_plc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"autw8743_automation_week\",\"table\":\"tb_bukti\"},{\"db\":\"autw8743_automation_week\",\"table\":\"pengumuman_plc\"},{\"db\":\"autw8743_automation_week\",\"table\":\"pengumuman_lkti\"},{\"db\":\"autw8743_automation_week\",\"table\":\"login_peserta\"},{\"db\":\"autw8743_automation_week\",\"table\":\"login_admin\"},{\"db\":\"autw8743_automation_week\",\"table\":\"upload_ffr\"},{\"db\":\"autw8743_automation_week\",\"table\":\"upload_lkti\"},{\"db\":\"autw8743_automation_week\",\"table\":\"upload_plc\"},{\"db\":\"autw8743_automation_week\",\"table\":\"aksiupload\"},{\"db\":\"autw8743_automation_week\",\"table\":\"tl_ffr\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-08-18 04:25:27', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `ppaw_automation_week`
--
CREATE DATABASE IF NOT EXISTS `ppaw_automation_week` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ppaw_automation_week`;

-- --------------------------------------------------------

--
-- Table structure for table `aksiupload`
--

CREATE TABLE `aksiupload` (
  `id` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aksiupload`
--

INSERT INTO `aksiupload` (`id`, `status`) VALUES
(1, 'off'),
(2, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(500) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `jenis_lomba` varchar(255) DEFAULT NULL
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
  `nama_anggota1` varchar(255) DEFAULT NULL,
  `nama_anggota2` varchar(255) DEFAULT NULL,
  `sekolah` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `jenis_lomba` varchar(100) NOT NULL,
  `bidanglomba` varchar(255) DEFAULT NULL,
  `judul_abstrak` varchar(500) DEFAULT NULL,
  `demo` varchar(10) DEFAULT NULL,
  `proses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_peserta`
--

INSERT INTO `login_peserta` (`id_peserta`, `nama_tim`, `nama`, `nama_anggota1`, `nama_anggota2`, `sekolah`, `email`, `telp`, `pass`, `jenis_lomba`, `bidanglomba`, `judul_abstrak`, `demo`, `proses`) VALUES
(1, 'ad', 'sadasdsa', NULL, NULL, 'asdsa', 'akunffr@gmail.com', '1234', 'f0ba8f9f389484af6f1a6ccc62a645d0', 'lkti', NULL, NULL, 'Ya', 3),
(3, 'plcku', 'plc2', 'Saya', '', 'plc1', 'plc@gmail.com', '1232131232131', 'dbd6d8851f8be5ebf082d030f19f3582', 'plc', NULL, NULL, NULL, 4),
(5, 'akunffr', 'ffr', 'Saya', 'aku', 'satu', 'ffr@gmail.com', '73846484', '3b316091c5e96a025b790355c1183540', 'ffr', NULL, NULL, NULL, 4),
(6, 'SMEKDA 3', 'Imanuel Verel ', NULL, NULL, 'SMKN 2 SURABAYA', '12_imanuelverel@gmail.com', '082232382591', 'a4730f0c509f29a4ef4add60a4b8eebd', 'plc', NULL, NULL, NULL, 0),
(7, 'SMEKDA 3', 'Imanuel Verel ', 'Yuza Maziidan', '', 'SMKN 2 SURABAYA', 'imanuelverel4@gmail.com', '082232382591', 'a4730f0c509f29a4ef4add60a4b8eebd', 'plc', NULL, NULL, NULL, 4),
(8, 'SMEKDA 1', 'SADEWO', 'FACHRI FARENSA', '', 'SMKN 2 SURABAYA', 'sadewo625@gmail.com', '089523597549', 'e9836b8596adb1aa5ca9b8bade6b102a', 'plc', NULL, NULL, NULL, 4),
(9, 'TIM SMEKDA 3', 'Imanuel Verel', NULL, NULL, 'SMKN NEGERI 2 SURABAYA ', 'imanuelverel78@gmail.com', '082232382591', 'a4730f0c509f29a4ef4add60a4b8eebd', 'plc', NULL, NULL, NULL, 0),
(10, 'timku', 'adi', NULL, NULL, 'asdasd', 'adirahmad607@gmail.com', '1236498', 'c46335eb267e2e1cde5b017acb4cd799', 'plc', NULL, NULL, NULL, 0),
(13, 'SMEKDA 5', 'AHMAD KAGENDRA NOUVAL ARIANTO', 'M. FANDY ARDIANSYAH', '', 'SMKN 2 SURABAYA', 'nouvalkagendra123@gmail.com', '085334369200', 'eb06794593a2a5b06ff717ff181fb6b5', 'plc', NULL, NULL, NULL, 4),
(15, 'akunffr', 'akunffr', 'akun', 'ffr', 'akunffr', 'ffra123@gmail.com', '093739', '3b316091c5e96a025b790355c1183540', 'ffr', NULL, NULL, NULL, 0),
(17, 'Shipstv (ujicoba)', 'Rizky Fitra', 'Ari Ganteng', '', 'PPNS', 'rfitra@student.ppns.ac.id', '085746801644', '202cb962ac59075b964b07152d234b70', 'plc', NULL, NULL, NULL, 0),
(18, 'SMEKDA 4', 'Muhammad Angger Prayogo', 'Mochamad Sandy Hermansyah', '', 'SMKN 2 SURABAYA', 'anggerprayog12@gmail.com', '081326785501', '7405243b78898ece5836c2a298cc2ab4', 'plc', NULL, NULL, NULL, 4),
(19, 'Gundam ', 'Habibie Aryo Syahputra ', NULL, NULL, 'SMKN 5 Surabaya ', 'syahputrahabibie@gmail.com', '085736036059', '41971066f3122e3aad941ab942af8252', 'plc', NULL, NULL, NULL, 2),
(20, 'SMEKDA 2', 'Julian Dafa Putra Kristiawan ', 'Muhammad Bilal Azrial Haq ', '', 'SMK Negeri 2 Surabaya ', 'dafakristiawan734@gmail.com', '089649904298', '43a5eac86e690b021faaf0d10911de7b', 'plc', NULL, NULL, NULL, 4),
(21, 'Trisolace', 'Cut Jasmine Hana Ameera', 'Steven Antonius hendrik', 'Haikal tyo pamungkas', 'SMK Telkom Sidoarjo', 'jejeeaja19@gmail.com', '085931275392', 'f3a91addea7041cc14cd5bdca5157911', 'ffr', NULL, NULL, NULL, 4),
(22, 'Tricera', 'Adinda Az-Zahra ', NULL, NULL, 'SMK NEGERI 3 SURABAYA ', 'adindaazzahra.068@gmail.com', '085784829228', 'ce28d0d9023dcea2b25df0e356464477', 'lkti', NULL, NULL, NULL, 0),
(23, 'safex team', 'Muhammad Ulyl Albab', 'Arinal Haqqul Mubin', '', 'SMK Negeri 1 Cerme', 'ulylalba142@gmail.com', '081997981124', '1e8fc1d8710e171db70ffc2f8a5fa00f', 'lkti', 'Industri', 'Sistem deteksi alat pelindung diri otomatis berbasis kamera dengan AI: Studi kasus ruang praktikum di SMKN 1 CERME-GRESIK ', 'Ya', 4),
(24, 'Hypervolt', 'FACHRIZAL', NULL, NULL, 'SMKN 7 SURABAYA', 'fachrizaladzanif@gmail.com', '083854952049', '871237bf25ba34556a2755fdf2f0ee44', 'plc', NULL, NULL, NULL, 2),
(25, 'SMK PGRI 4 ', 'Abdi Al Iqbal', '', '', 'SMK PGRI 4 Surabaya ', 'abdialiqbal20@gmail.com', '087838852005', 'c687294aaf35242d576fac128e587291', 'plc', NULL, NULL, NULL, 3),
(26, 'DUTA OTOMASI 1', 'KHOIRUDDIN FIRMAN EFENDI', 'RAHMAN FIRDAUS ', '', 'SMKN 2 TULUNGAGUNG', 'khoiruddinfirman@gmail.com', '085808209752', '276428673dffad08d7e0091f5265714c', 'plc', NULL, NULL, NULL, 4),
(27, 'DUTA OTOMASI 2', 'Muhammad angga nova ', 'Yanuar saputra ', '', 'SMKN 2 TULUNGAGUNG ', 'mohamadangganova328@gmail.com', '089505053128', '095739f74e0d5f1337556e36a41a5723', 'plc', NULL, NULL, NULL, 4),
(28, 'BANTEX TEAM', 'AZZUKHRUF SYAHRUR RAMADHANI', 'AHMAD SOFWAN BAHRUL ALAM', '', 'SMKN 1 CERME GRESIK', 'rd163277@gmail.com', '087716388964', '4cc7c5e12cd71d1b41b459d3a55feda7', 'plc', NULL, NULL, NULL, 4),
(29, 'Doa Ibu', 'M. Khafi Alvarezi', NULL, NULL, 'SMK Antartika 1 Sidoarjo', 'rezikafi@gmail.com', '087729805409', '64f24046316e4a23f932893de10039a7', 'plc', NULL, NULL, NULL, 2),
(30, 'DOA IBU', 'Ignatius Garrick Yavin', 'Diaz Syalendra Putra', 'Muhammad Zakwan Fawwaz Suryadi', 'SMK TEKNIK PAL SURABAYA', 'garrick.yavin@gmail.com', '085749002593', 'e4923032fe9a0ce5c606fd69784e33c1', 'lkti', 'Lingkungan', 'SIJALA (Sistem Jalan Lampu Otomatis)', 'Ya', 4),
(31, 'in omnia paratus', 'Vanissya Diva', 'Muhammad Rasya Nur Rahma ', '', 'SMKN 1 SINGOSARI ', 'divaaulia1029@gmail.com', '083121505297', '97cfa96674838aa44d47da7915ee28d1', 'plc', NULL, NULL, NULL, 4),
(32, 'Industrial Otomation', 'Muhammad Ricky Setiawan', 'Vandi Ahmad Wijaya Kusuma ', '', 'SMK N 1 Jenangan', 'kusumavandy11@gmail.com', '085234179103', 'c2b42e47fd0d058b6b19b91945d0388d', 'plc', NULL, NULL, NULL, 4),
(33, 'Otomation Department', 'Dearly Putra Abiyudha Asyqar', 'Alan maulana Dwi indarto', '', 'Smkn1Jenangan Ponorogo', 'dearlyasyqar87@gmail.com', '0895418300305', 'c7eda15a444437a78c87b7da7b046b19', 'plc', NULL, NULL, NULL, 4),
(34, 'Angkara Tim', 'Davina Masayu Putri', 'Maisya Talitha Salsa Bila', 'Erindra Alifa Rachmawati', 'SMA NEGERI 5 TUBAN', 'masayuputridavina@gmail.com', '089616637404', '46a961294ab0d83b5d4dabdb96fcf03f', 'lkti', 'Lingkungan', 'S.A.F.E (SMART AIR FILTER USING ECO PLANTS) POT PINTAR DENGAN MEMANFAATKAN LIDAH MERTUA  BERBASIS INTERNET OF THINGS (IOT)', NULL, 2),
(35, 'Skibidi Skandry', 'Dimas Budi Al Bukhori', NULL, NULL, 'SMKN 1 Driyorejo ', 'dimasbudialbukhori@gmail.com', '087855713539', '1b6ca8f8244367fe4f822e474494916b', 'plc', NULL, NULL, NULL, 4),
(36, 'MECHDIG', 'Fairuz Pujiarianto', 'Ayong Hamdana', 'Fathul Bari', 'SMKN 1 TAPEN', 'fairuzrian06@gmail.com', '0859106570474', '11b072795096bd032ab63219ae226eff', 'lkti', 'Pertanian', 'IMPLEMENTASI LOGIKA NEURAL NETWORK  PADA SISTEM PENGERING KOPI  UNTUK OPTIMASI KUALITAS DAN EFISIENSI Studi Kasus: Kelompok Tani Dhe’rus – Sumberwringin Bondowoso', 'Ya', 4),
(37, 'Hello World', 'Maulana Rizki Hamzah', 'Ahmad Lutfhi Sulthoni', '', 'MAN 2 NGANJUK', 'maulanarizkyhamzah@gmail.com', '081553354021', '08056458844a89447016c7ac89ee97f2', 'ffr', NULL, NULL, NULL, 4),
(38, 'The Bosses', 'Gigih Ferdo ', 'Selvi Aulia', 'Bernadita Aprilia', 'MAN 2 NGANJUK', 'gigihferdoes@gmail.com', '0895375461919', '08056458844a89447016c7ac89ee97f2', 'lkti', 'Pertanian', 'RANCANG BANGUN METODE PEMBAYARAN CASHLESS PADA SISTEM IRIGASI DI LAHAN PERTANIAN BERBASIS IOT ', NULL, 2),
(39, 'Otomation STMJ', 'Muhammad Raffi Alzaki Makarim', 'Ahmad Shaydatullah', '', 'SMKN 1 Jenangan', 'muh.raffie.po@gmail.com', '0895395089496', '1d1534aba1cf12d0b6bea72ae0f71e66', 'plc', NULL, NULL, NULL, 4),
(40, 'Ataraxia', 'I Gede Narayana Parameswara', NULL, NULL, 'SMAN 1 Denpasar', 'parameswaranarayana@gmail.com', '0881037930723', 'ed610a057c09d1124c28caf06039c63b', 'lkti', NULL, NULL, NULL, 0),
(41, 'ELEKTRO SKANDRY', 'Aldy Ferdiansyah', 'Fernanda Saputra', 'Ahmad Revaldo Ardianto', 'SMKN 1 DRIYOREJO', 'ferdiansyahaldi06@gmail.com', '08813504515', '519746620bee3d0fc7b03bac6a85f67c', 'lkti', 'Mitigasi Bencana', 'EARLY WARNING SYSTEM POTENSI BANJIR DI JEMBATAN PERAHU TAMBANGAN CANGKIR BERBASIS FUZZY LOGIC DAN TEKNOLOGI IOT', NULL, 2),
(42, 'b', 'b', NULL, NULL, 'b', 'b@gmail.com', '08384608548', '92eb5ffee6ae2fec3ad71c777531578f', 'lkti', NULL, NULL, NULL, 0),
(44, 'endeavour', 'Ilma Fadhilatuz Zakiah', 'Nazwa Aulia Nurhamidah', 'Raya kharisma Maslida', 'MAN 2 NGANJUK ', 'zakiyailma599@gmail.com', '081217892288', '81e3f3d0d31a2c0dd4447b4b2f2d7f29', 'lkti', 'Mitigasi Bencana', 'RANCANG BANGUN ALAT PEMANTAU KETINGGIAN AIR SUNGAI DAN CURAH HUJAN DENGAN FITUR PEREKAM DATA', 'Ya', 4),
(45, 'ELEKTRO SKANDRY B', 'Farris Wahyu Dwi Cahyo', NULL, NULL, 'SMKN 1 DRIYOREJO', 'minttyty12@gmail.com', '08819860412', '3f5e910f97ecee98873664357e907bc5', 'plc', NULL, NULL, NULL, 0),
(46, 'DIGPART', 'Aprilliia Eka Nur Aeni', 'Nur Zahira Malindo', 'Velan Afilia Putri', 'SMKN 1 TAPEN', 'aprillia302007@gmail.com', '081617818070', '11b072795096bd032ab63219ae226eff', 'lkti', 'Kesehatan', 'PREDIKSI KADAR GULA DARAH PASIEN DIABETES  MENGGUNAKAN ALGORITMA TIME SERIES  DENGAN METODE NON INVASIF', 'Ya', 4),
(47, 'anaata', 'Fahima Dinniyah Chairunnisa', NULL, NULL, 'SMAN 12 Surabaya', 'fahdinnisa@gmail.com', '081252073699', '47496c2849fb473bb4db60f523d7392b', 'lkti', NULL, NULL, NULL, 0),
(48, 'YOFA', 'Farel Dwi Adji Condro', 'Yosafat Pratisto Nugraha', '', 'SMK NEGERI 7 Surabaya', 'fareldwiadjicondro@gmail.com', '081217185318', '49e9d18717f0b11ed4d9555d970afb2c', 'plc', NULL, NULL, NULL, 4),
(49, 'ELITE', 'Farid Habibie', 'Anya Meyditha Aryatna', 'Griselda Tatya Amiprodjo', 'SMKN 2 SURABAYA', 'lenovoamd69@gmail.com', '08989730265', 'dccdf839bff4ee33d4d33906d7f9b53d', 'lkti', 'Gren ENERGY', 'GREEN TECHNOLOGY SMART SHIP MONITORING  WATER QUALITY SURABAYA CITY BASED ON WEBSITE', 'Ya', 4),
(50, 'pan', 'Deka Panji Kinarayana ', NULL, NULL, 'SMAN 3 Sidoarjo', 'dekapanji.k@gmail.com', '081231819258', 'e5b6b86eecc33e25706a599ff90643cd', 'ffr', NULL, NULL, NULL, 2),
(51, 'Transformers', 'Ricky Novantino', NULL, NULL, 'SMA Negeri 3 Sidoarjo', 'rickynovantino08@gmail.com', '082143263105', 'e765027c0c138c3053ff4b55fcb6f104', 'ffr', NULL, NULL, NULL, 2),
(52, 'NAWASENA', 'Muhammad Naufal Akbar', 'Lailatus Zahra', 'Adam Pradika Rahman', 'MAN 1 Kota Kediri', 'mnaufalakbar.main@gmail.com', '085183013681', '560b274cc97f191ce4ca1e7257705733', 'lkti', 'Pendidikan', 'Smart AgroMaster: Solusi Pertanian Cerdas Berbasis IoT untuk Optimalisasi Pembibitan dan Kesuburan Tanah di Pertanian Indonesia', 'Ya', 4),
(53, 'Esemkamu', 'Fahmi Kholilurrahman', 'Doni Rahardi Pujiantara', '', 'SMKs Mambaul Ulum', 'denykatanya1@gmail.com', '087752929384', '14947ed3be97251134b3099d9faaad2f', 'plc', NULL, NULL, NULL, 4),
(54, 'EAST JAYA', 'MUHAMMAD FAIQ MAULANA', NULL, NULL, 'SMK NEGERI 2 SURABAYA', 'ranggairv28@gmail.com', '081249731801', 'd22bc0d28fc221cb9f7941ffe72b0e51', 'ffr', NULL, NULL, NULL, 2),
(55, 'Niken Gandini', 'Lukman Hakim Al-Bashar', 'Lutfi  Muhammad Irfansyach', 'Wibi Karisma Putra', 'SMKN 1 Jenangan Ponorogo', 'lukman.af.08@gmail.com', '0895339026811', '0c60924e68361bedadaca279275fdb93', 'ffr', NULL, NULL, NULL, 4),
(56, 'Forelite', 'Melta Anindya Indriawati', '', '', 'SMA Taruna Nusantara', 'meltaanindyaind@gmail.com', '082135419061', 'f53f7889151aff6de85be9bc37e79a7e', 'lkti', 'Maritim', 'Sistem Keselamatan dan Peringatan Kondisi Bahaya Pada Perahu  Nelayan Berbasis LORA dan Internet of Things ', 'Ya', 4),
(57, 'SCHOTTKY TEAM', 'RAIHAN DAFFA SUBAHTIAR', 'RAKHA AULIA RAMADHAN', '', 'SMK TEKNIK PAL SURABAYA', 'wiwikh792@gmail.com', '081333652253', '9fe4dd4bef3b1d1b3a28a89afab91fe6', 'plc', NULL, NULL, NULL, 4),
(58, 'PALVO7', 'Mirza Daud Raharjo ', 'Dedy Ramadhani', '', 'SMK TEKNIK PAL SURABAYA ', 'mirzadika1908@gmail.com', '081357687281', '097c17baafb2e84e0e3f46544cf11e1b', 'plc', NULL, NULL, NULL, 4),
(59, 'SEMBARANG WES GPP', 'Ahmad Daffa Iftinan Diya ', 'muhammad Wahyu faisal', '', 'SMKN 1 JETIS', 'iftinandaffa771@gmail.com', '085850868615', 'f146d9dfc092df059908a98df24d6462', 'plc', NULL, NULL, NULL, 4),
(60, 'METRONOME', 'Farel Putra Diyanto', 'AHMAD DAFARELLO CANDRA PRATAMA', 'ROOBIYAH APSARI', 'SMKS PGRI Singosari', 'farelputradiyanto@gmail.com', '085645913608', 'e017526f60e08190b9c5e532a188fc64', 'ffr', NULL, NULL, NULL, 4),
(61, 'DaPizz', 'Mochamad Hafizh Daniswara', '', '', 'SMKN 1 JETIS', 'hafizhdaniswara5@gmail.com', '085600274803', 'e8322de126cc85915cbb08fdc1a3c925', 'plc', NULL, NULL, NULL, 4),
(62, 'Niscala', 'Rangga Surya Wardani', 'Mohammad Hamid Fajrul Fanani', '', 'SMKN 1 JETIS', 'midzzfanani@gmail.com', '085706767601', '35bcad9bb4254b5f768c29ca4a8c9f92', 'plc', NULL, NULL, NULL, 4),
(63, 'manut tim', 'Maulana Afifuddin Azizi', 'Kenhadid Fadhal Elfahmi', 'Gardin Farrelio Alviansah', 'MAN 2 NGANJUK', 'bangzist1@gmail.com', '085850309338', '23311a9076b219129a093c053d829753', 'ffr', NULL, NULL, NULL, 4),
(64, 'No Mercy', 'Ilham Harun Dwi Mahendra ', 'Ilham Harun Dwi Mahendra', 'Ardika Saputra Dwi Mulia', 'MAN 2 Nganjuk', 'ilhamharun191007@gmail.com', '089654844900', 'f40f426df60f459ecd16b68e40173187', 'ffr', NULL, NULL, NULL, 4),
(65, 'THE HEROMAN', 'AHMAD RIZQY AFIFUDIN ', NULL, NULL, 'MAN 3 NGANJUK', 'harisbusronul1978@gmail.com', '085791194462', 'e3b9ef21e51ed5a3f5fc632d7ca232f3', 'ffr', NULL, NULL, NULL, 2),
(66, 'THE SWARM', 'ACHMAD WILDAN RAFTSANI', NULL, NULL, 'MAN 3 NGANJUK', 'harisbusronul92@gmail.com', '083136347324', 'f2b57e0e3c26da03757ed959a7b9c32d', 'ffr', NULL, NULL, NULL, 2),
(67, 'ThunderTech', 'MOCHAMMAD BASHORI ALWI', NULL, NULL, 'SMK 1 PASIRIAN', 'mozaaofc838@gmail.com', '087844602979', '0aa51ac26b2ad23dbfcfd474f3618a2a', 'ffr', NULL, NULL, NULL, 2),
(68, 'ESTUNGKARA 5', 'Muhammad Aldo Rizqiansyah ', 'Muhamad Fiqoh', 'Athaillah Ailsa Jacinda', 'SMA NEGERI MOJOAGUNG ', 'leny3456789@gmail.com', '083849623102', 'ce70146d38743eda50878b45fd7f4647', 'ffr', NULL, NULL, NULL, 4),
(69, 'Estungkara 7', 'Muhammad Fathir Afza Anwar', NULL, NULL, 'SMA NEGERI MOJOAGUNG', 'mochammadmarvin14@gmail.com', '081261866680', '0992776c30353b83d2b784bd4bf6811c', 'ffr', NULL, NULL, NULL, 2),
(70, 'Estungkara 11 ', 'Miga Dwina Putra', 'Dio Rasya Aditya ', 'Dea kahaya aishawa ', 'SMAN MOJOAGUNG ', 'miputra17@gmail.com', '081217601295', '34bcdafca18d171c4763598fe3f64908', 'ffr', NULL, NULL, NULL, 4),
(71, 'EAST JAYA', 'Muhammad Faiq Maulana ', NULL, NULL, 'SMKN 2 SURABAYA', 'fiq60865@gmail.com', '089666579178', '5372b60c9a7ab59295f6f993d3e3fc07', 'ffr', NULL, NULL, NULL, 2),
(72, 'EAST JAYA', 'MUHAMMAD FAIQ MAULANA', NULL, NULL, 'SMKN 2 SURABAYA ', 'alypashafadillahilham@gmail.com', '082336082166', 'f283ad862fc69bb83140a67616d9369d', 'ffr', NULL, NULL, NULL, 0),
(73, 'EAST BLUE', 'Andika Anwar Bawana', NULL, NULL, 'SMK NEGERI 2 SURABAYA', 'andika1927sby@gmail.com', '085212512449', '785f5b2ede89bbcbb3bbcc4098357f9f', 'ffr', NULL, NULL, NULL, 2),
(74, 'EAST TYPHOON', 'ANTANANDA REKSADJENDRA DIMASING BAGAVAGITA ', 'TUNGGUL CATRA WISESA ', 'ABHISTA NARESWARI SUGIYANTO ', 'SMK NEGERI 2 SURABAYA', 'antananda1220@gmail.com', '089696217000', 'a3628fde9ae0240cfa5ec49eb353281e', 'ffr', NULL, NULL, NULL, 4),
(75, 'HANTU LAUT', 'Rafael Bima Murti Mahendra ', NULL, NULL, 'SMK NEGERI 3 SURABAYA ', 'rafaelbima636@gmail.com', '085755195531', '571fe7ae0fa168e81d31a5d49ec4e9b3', 'ffr', NULL, NULL, NULL, 2),
(76, 'Mount panorama ', 'Iclimah Mufty Farida ', 'Rafi Hendra Ramadhan ', 'Ahmad Hayiz Fadhlan Abu Qorir Al-Anamy ', 'MA Masyhudiyah ', 'iclimah.77@gmail.com', '082131223649', 'c66cde9b8770d430c934936e6bc2d791', 'ffr', NULL, NULL, NULL, 4),
(77, 'Mount panorama ', 'Iclimah Mufty Farida ', NULL, NULL, 'MA Masyhudiyah ', 'icapicip.anekacrispy.official@gmail.com', '082131223649', 'c66cde9b8770d430c934936e6bc2d791', 'ffr', NULL, NULL, NULL, 0),
(78, 'KAMEN RIDER', 'M. RIJAL FI AUNILLAH ', 'Achmad Daffa Rojak ', '', 'SMK TEKNIK PAL SURABAYA ', 'mrijalfiaunillah@gmail.com', '089529868641', 'eea89d31684aea2f8f276a2e53ed060a', 'plc', NULL, NULL, NULL, 4),
(79, 'EAST TULUZ', 'BAYU ROMADHON SAPUTRA', 'ABELYA OCTAVIANI', 'MOCH. RAIHAN AUFA RIZKI MUNIR', 'SMK Negeri 2 Surabaya', 'abelyanaumioctaviani06@gmail.com', '087859915954', 'e0d98fbf5eb38810b104ff3956cf4338', 'ffr', NULL, NULL, NULL, 4),
(80, 'EAST THEWIN', 'Julianto Ardiansyah', NULL, NULL, 'SMKN 2 Surabaya ', 'jultzzardiansyah@gmail.com', '085198362494', '29892121410e4ffa3b21646f416c7eed', 'ffr', NULL, NULL, NULL, 2),
(81, 'East Force', 'Berliana Fitri Aulia ', NULL, NULL, 'SMK Negeri 2 Surabaya ', 'berlianafitri2804@gmail.com', '082136925117', '10b49eaf3d4c87f4c43ee8b433b3a8df', 'ffr', NULL, NULL, NULL, 0),
(82, 'REBALER ', 'Arga Safaras safa', 'Jibril Jibran', '', 'Smkn 1 singosari ', 'safarasarga@gmail.com', '085157155319', '6da871fcd19463ab0c63dd6befe9559c', 'plc', NULL, NULL, NULL, 4),
(83, 'MEGATECH', 'Muhammad Fadhil Nur Hafizh ', 'Ravindran Ridho Arnada Riadi', '', 'SMKN 3 BOYOLANGU ', 'fadhilnh53@gmail.com', '089520812323', 'd6bbb43a902bde64d546ad5f3c689bad', 'plc', NULL, NULL, NULL, 4),
(84, 'adminn', 'adminn', NULL, NULL, 'adminn', '98amazing@rustyload.com', '88888888', '1f2b5c9a3e412fcfdb65ee34f4ffe9c2', 'lkti', NULL, NULL, NULL, 0),
(85, 'the force', 'Nabil Regy Owen', NULL, NULL, 'SMKS TUREN', 'fickyandika07@gmail.com', '085784482150', '23dcc2a545d41b020c3246be7cafbbd0', 'plc', NULL, NULL, NULL, 2),
(86, 'The Glorious Toeren', 'RICHARD MAULANA', NULL, NULL, 'SMKS TUREN', 'richardmaulana10til2@gmail.com', '085817281721', 'fcb6008b3147162aadf268b360d98e11', 'plc', NULL, NULL, NULL, 2),
(87, 'aku blutut', 'Akhmad Arif Saifuddin', 'AKHMAD ARIF SAIFUDDIN', '', 'SMKN 3 Surabaya', 'arifrebuild@gmail.com', '082264341022', '78d51d3445a226e6fd05181737f47f6c', 'plc', NULL, NULL, NULL, 4),
(88, 'Hoshi', 'Muh. Candra Maulana', 'Lubab Muhammad A B', '', 'SMK Muhammadiyah 1 Gresik', 'muh.candra.mln@gmail.com', '085730137493', '435db2460de90972b64b401208371ebf', 'plc', NULL, NULL, NULL, 4),
(89, 'NEW HOPE', 'Muhammad Rafi Rabbani', NULL, NULL, 'SMKN 3 JOMBANG', 'aizarahman98@gmail.com', '081237797613', '3ac7a48ebc73f7009b23ec60f6f12f6e', 'plc', NULL, NULL, NULL, 0),
(90, 'Mechaminds', 'Muhammad Rafi Rabbani', 'Alfin Agus Nugroho', '', 'SMKN 3 JOMBANG', 'raffirabbani20@gmail.com', '088219947632', '0f4c6c6d5bf28d772053a7914e648a42', 'plc', NULL, NULL, NULL, 4),
(91, 'Kingdom', 'Rafka Aji Alfarizi', 'Muhammad Fawwaz Putra Qudsi', '', 'SMK Muhammadiyah 1 Gresik', 'fendimaulana1827@gmail.com', '085730137493', 'b815a777137135bc3050bc76a97e3fa0', 'plc', NULL, NULL, NULL, 4),
(92, 'ALWAYS BISMILLAH', 'MUHAMMAD HAIKAL PRAFINSA PUTRA', 'VICKY ARDIANSYAH', '', 'SMKS PGRI Singosari', 'putrahpp0@gmail.com', '089530734096', '7e9dedfdb2c5d47c1f991f92db59cba1', 'plc', NULL, NULL, NULL, 4),
(93, 'Electrical3', 'Muhammad Kevin Qurrunul Bahrillana', NULL, NULL, 'SMK Negeri 3 Surabaya', 'aliyyahars24@gmail.com', '081357208605', '3979cca5ba2db010f427fab88b7869dd', 'plc', NULL, NULL, NULL, 4),
(94, 'S3lectrical', 'Wisam Fadhil Sukmawan', 'Ubaydillah Faqih', '', 'SMK Negeri 3 Surabaya', 'wisamfadhil71@gmail.com', '085171702840', '40d4a1a621db0b9c604f6bcc1ceeede0', 'plc', NULL, NULL, NULL, 4),
(95, 'TOKEN LISTRIK', 'Egi Saputra Hendrawan', 'Achmad Fauzan Akbar', '', 'SMK PGRI Singosari', 'hendrawanegi269@gmail.com', '087833596608', 'e8306709cd3bab053b818a86ada05867', 'plc', NULL, NULL, NULL, 4),
(96, 'Tim REX', 'Daffa Aziz Risrullah ', 'Ilyas Raka Kusuma ', '', 'SMKN 1 CERME GRESIK ', 'daffabaikhati260606@gmail.com', '085233847245', 'ca7ebc6d206735e14e2fbe2ca23b63b8', 'plc', NULL, NULL, NULL, 4),
(97, 'FAFAFUFU', 'Muhammad Rasya Alfirdaus ', 'Reyhan Arifaqil Vito', '', 'SMK NEGERI 1 CERME', 'rasyaalfirdaus4013@gmail.com', '085604988213', '7a555e34e0959c24dbfaba305bb073f0', 'plc', NULL, NULL, NULL, 4),
(98, 'PRISA', 'Muhammad Fawwaz Zahid Ardhana', 'Muhammad Farrel Ardiansyah ', '', 'SMK PGRI 1 GRESIK', 'fahrulsyahrial@smkpgri1gresik.sch.id', '085708752618', 'a71908853e3189e0715a688ed8ba8419', 'plc', NULL, NULL, NULL, 4),
(99, 'Kirchoff', 'Muhammad Naufal Abdullah', 'Wildanu Yuhyin Nufus', '', 'SMK PGRI 1 GRESIK', 'naufalabdullah711@gmail.com', '085850284915', 'a837f81b8fa93914bfc1eeeff073fa5d', 'plc', NULL, NULL, NULL, 4),
(100, 'TIM ELENG', 'Lintang Dwi Prokoso', 'Eric Aditya Firdaus', '', 'SMK PGRI 1 GRESIK', 'llintang632@gmail.com', '081231324039', '66f02f0ef76085f71f6e7d9a6f6edd22', 'plc', NULL, NULL, NULL, 4),
(101, 'SR', 'RIDHO AF FATHIR', 'SYAFIROTUL JANNAH', '', 'SMKN 2 PASURUAN ', 'finridho@gmail.com', '085707674830', 'f2be9383420ff4eb9485535d159b4585', 'plc', NULL, NULL, NULL, 4),
(102, 'OI skarisa', 'MOCH.RIZKY NAZARUDDIN', 'MOCH.RIZKY NAZARUDDIN', '', 'SMK KRIAN 1 SIDOARJO', 'mrizkynazaruddin@gmail.com', '0895400973311', 'ca2e5ec4506164e23925e8f66370e1d9', 'plc', NULL, NULL, NULL, 4),
(103, 'tei sigma', 'm zaky irwansyah', 'm zaky irwansyah', '', 'SMKN 2 PASURUAN', 'mzakyirwansyah21@gmail.com', '0895323707013', '8a7e26421007d1b293bf822ef0859543', 'plc', NULL, NULL, NULL, 4),
(104, 'AJ team', 'Al Farizi', 'Kevin Dwi Saputra', '', 'SMKN 1 CERME', 'ff0387879@gmail.com', '085707497561', '43a7499811101668088d58b532d95946', 'plc', NULL, NULL, NULL, 4),
(105, 'N1CE', 'Zaky', 'Krisna fajar pramurdianto', '', 'SMK negeri 1 cerme ', 'zakymaul4116@gmail.com', '081336355093', 'fd2cc6c54239c40495a0d3a93b6380eb', 'plc', NULL, NULL, NULL, 4),
(106, 'H×H Team', 'Muhammad Hamim Oktatianto', 'Lukman Hakim Arrafi ', '', 'SMK NEGERI 1 CERME', 'lukmanhakimarrafi@gmail.com', '081230916045', 'ee967c0ee2cd9f9737716b1627104dc1', 'plc', NULL, NULL, NULL, 4),
(107, 'Maver1CEks', 'Ahmad Rizqi ', NULL, NULL, 'SMK NEGERI 1 CERME GRESIK ', 'ahmadrizqi171107@gmail.com', '085711354452', '9a0c0f9fe10f8ece2cad4da6fe17ccd0', 'plc', NULL, NULL, NULL, 4),
(108, 'DOUBLE F', 'MUHAMMAD FEBRIAN SYAHPUTRA', 'MUHAMMAD FAREL AZZANI', '', 'SMK NEGERI 1 CERME ', 'muhammadfebriansyahputra78@gmail.com', '082132647909', '011e7813a03ace843a077e322e857ec4', 'plc', NULL, NULL, NULL, 4),
(109, 'Gyro', 'Rama Adrian Maulana', 'M. Fahmi Islamadani Hanafi', '', 'SMA Negeri 1 Giri Taruna Bangsa', 'latifnurohmanbayu@gmail.com', '081249013633', '1cf7abb28f4ed3501cb0b4e8bb8e25ee', 'ffr', NULL, NULL, NULL, 4),
(110, 'Heru', 'Heru', NULL, NULL, 'Jakarta ', 'herusuwandito5@gmail.com', '085811069907', '4901c9b70a4fc42a33ed374e08cbd826', 'lkti', NULL, NULL, NULL, 0),
(111, 'HYTAM', 'dani setiawan', 'Abi firnanda a. ', '', 'SMKN 3 JOMBANG', 'abifirnanda02@gmail.com', '082141411154', '965fddcd8136bfd8472a58d2f80f97fe', 'plc', NULL, NULL, NULL, 4),
(112, '1TR', 'M. Firmansyah', '1TR', '', 'SMK NEGERI 3 JOMBANG', 'firmannnn355@gmail.com', '085733622446', '887486b2fb3e4952c7c3ada09bcd5546', 'plc', NULL, NULL, NULL, 4),
(113, 'Electwo', 'Muhammad Eka Albar Ramdani', 'Jerry Alvian Dinata', '', 'SMK NEGERI 1 CERME', 'muhammadekaalbarr@gmail.com', '085231857219', 'db485aa98e871b9efdead2ef028b574c', 'plc', NULL, NULL, NULL, 4),
(115, 'PLC_STYMSTA 1', 'Mas Adi Fatih Fatahillah ', NULL, NULL, 'SMK YPM 1 TAMAN ', 'bahrula919@gmail.com', '087841188826', '6a499c1c205dfa86a82ecca0fd311f61', 'plc', NULL, NULL, NULL, 2),
(116, 'Saba Langit', 'Faqih Ammar Zaki', NULL, NULL, 'SMK YPM 1 TAMAN SIDOARJO', 'faqihammarzaki12@gmail.com', '085692352657', 'ec3867e5322655b660f3997f0903b902', 'plc', NULL, NULL, NULL, 0),
(117, 'Student Bois', 'Zakaria Mahadika Muslim', 'Mochammad Davin Prayogo', '', 'SMKS PGRI Singosari', 'zakariamahardikamuslim@gmail.com', '0881036067798', '8a7f73af5c24304fee4f85b7cff9ad12', 'plc', NULL, NULL, NULL, 0),
(118, 'Autocraft ', 'Zaqky Zakaria ', 'Deny Pratama', '', 'SMKN 3 JOMBANG ', 'zaqkyzy@gmail.com', '085175308346', '6b0bcf0e8b018835556369497f709f27', 'plc', NULL, NULL, NULL, 4),
(119, 'IMMORTALS', 'Muhammad Fadholi', 'Muhammad Zahir', '', 'SMKN 1 Bangil', 'fadholi11234@gmail.com', '083164042588', 'fe61af1745a821a3751b397de92d9a91', 'plc', NULL, NULL, NULL, 4),
(120, 'Lele', 'Muhammad Baihaqi Hasyim Abdillah', 'Muhammad Baihaqi Hasyim Abdillah', '', 'SMK YPI DARUSSALAM 1 CERME', 'mr.hasyim.santuy@gmail.com', '085748108521', '34855ea53b62868582d84725b5a8d10e', 'ffr', NULL, NULL, NULL, 4),
(121, 'PLC_STYMSTA3', 'Ina Yulianti', NULL, NULL, 'SMK YPM 1 TAMAN', 'selyna254@gmail.com', '088901936094', '77ef2df564ea065928ac2e6761c5d296', 'plc', NULL, NULL, NULL, 2),
(122, 'Armor Knights', 'Fiki Alivandi Putra ', NULL, NULL, 'SMKN 2 PASURUAN', 'maulanaadnan480@gmail.com', '085708223548', 'a53f7742107881a974c37f4916c0383f', 'plc', NULL, NULL, NULL, 2),
(123, 'Stymsta 2 ', 'Achmad Atthalano Akbar ', 'Kelvin Nicholas Effendy ', '', 'SMK YPM 1 TAMAN SIDOARJO ', 'lanosyg86@gmail.com', '085890835515', '04a70fd5f9d43fa8a36960a7f5d554e1', 'plc', NULL, NULL, NULL, 4),
(124, 'SELATAN BERSATU ', 'Aswa Permana ', NULL, NULL, 'SMK NEGERI 1 JAKARTA ', 'aswapermana37@gmail.com', '082125695465', '96919737abebb1dd27cdb1f1b5fd030d', 'plc', NULL, NULL, NULL, 0),
(125, 'aaaaaa', 'aaaaaa', NULL, NULL, 'aaaaaa', 'tillieawake@goeschman.com', '88888888', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', 'ffr', NULL, NULL, NULL, 0),
(126, 'Smatpaul Team', 'Ordianus R. Leto', 'Intan Alia Niranti Nahak', '', 'SMA Sto. Paulus Weliman ', 'rivannahak2210@gmail.com', '081236775515', '518db7542159aa39a7a334262f08c8d5', 'lkti', 'Gren ENERGY', 'Pemanfaatan Limbah Sisa Makanan Sebagai Bioetanol Dalam Mengatasi Masalah Krisis Energi Menuju Indonesia Emas 2045 Menggunakan Model Prediktif Artificial Intelligence (AI)', 'Ya', 4),
(127, 'MECHDIC', 'SELMA SALSABILA', NULL, NULL, 'MA Mr. BOB', 'sitinunah83@gmail.com', '081913529866', 'e5155f46de6b05269fba2d1180048c8d', 'lkti', NULL, NULL, 'Ya', 4),
(128, 'Perinstis ASA', 'BAYU', NULL, NULL, 'SMK SUKOLILO', 'perintis@gmail.com', '083830593567', '46d1b74547832bb1d6ee4ebd1b8f8946', 'lkti', NULL, NULL, NULL, 0),
(129, 'lkti', 'bayu', NULL, NULL, 'sukolilo', 'lkti123@gmail.com', '083830593567', '46d1b74547832bb1d6ee4ebd1b8f8946', 'lkti', NULL, NULL, NULL, 0),
(130, 'SangarTeam', 'Keyza Zahra Al Khalifi', 'Charlesius Jebaru', 'Muhammad Kamaluddin ', 'SMK Muhammadiyah 1 Gresik', 'keyzalkhalifi@gmail.com', '0881036393330', '1916bc3716dd4eea780c8fa2dacfbfb9', 'lkti', 'Lingkungan', 'DESAIN PERENCANAAN PENGOLAHAN AIR LIMBAH DOMESTIK BERBASIS IOT SEBAGAI UPAYA WATER REUSE', 'Ya', 4),
(131, 'MechTronics', 'Qanitatin Qaireen', 'Muhammad Arif Rahman', '', 'SMAN 1 Dompu', 'renqaireen89@gmail.com', '082341607549', 'c5c10bc9d7e7a9de8aa09883fa4398ab', 'lkti', 'Industri', 'Electronik Smart Scan Shoulter (E-S3) Robot Berbasis AI Terintegrasi IoT Untuk Otomatisasi Klasifikasi Barang', 'Ya', 4),
(132, 'MANELA TEAM', 'Moh. Rizki Ariframa ', 'Nasya Salsabil Asyafa', 'Vio Laroiba Fillah', 'MAN 1 Lamongan', 'ariframa0808@gmail.com', '085730194944', '04c28411aa426d42b482c77beaab9eef', 'lkti', 'Lingkungan', 'LAUNDER (Laundry Water Purifier): Pemanfaatan Limbah Tumbuhan Jagung (Zea mays) Guna Filtrasi Limbah Industri Laundry Lamongan berbasis Monitoring IoT Sensor pH, TDS, dan Suhu DS18B20', NULL, 2),
(133, 'Barakallah ', 'Muhammad Sendy Pratama Dzan Nuroin ', NULL, NULL, 'MAN 1 Kota Kediri', 'muhsendy7542@gmail.com', '085832713744', '844f4da3390c42bce2f3d6488169a7ad', 'lkti', NULL, NULL, NULL, 0),
(134, 'AquaCoral', 'Mentari Farikhanaila', 'Zahra Maukhibah', 'Fajar Meisya Putra', 'MAN Demak', 'mentarifarikhanaila05@gmail.com', '082134057889', '724e21d0600859a4a38695db1c5d5bee', 'lkti', 'Lingkungan', 'AquaCoral: Sistem Akuisisi Data pada Pemantauan Kesehatan  dan Lingkungan Terumbu Karang Terintegrasi Kamera AI, LoRa  Wireless Sensor dan Internet of Things', 'Tidak', 4),
(135, 'Electrical3', 'Muhammad Kevin Qurrunul Bahrillana', NULL, NULL, 'SMK Negeri 3 Surabaya', 'lunaasarahab@gmail.com', '081357208605', 'd058b5cdf9584b3f5946527cd5d0ad9d', 'plc', NULL, NULL, NULL, 2),
(136, 'MAZAYA ', 'REYHAN ALDY RIMBA PRATAMA ', 'MUHAMAD ALFARIZI LATIF', '', 'SMKN 1 JENANGAN ', 'reyhanaldy67@gmail.com', '088991458282', '7fd0ca2e7f356cb3d25fe0c7200f902f', 'plc', NULL, NULL, NULL, 4),
(137, 'Barakallah', 'Sendy Pratama Dzan Nuroin', 'Aleeya Farhana', 'Shinta Latifa Sari', 'MAN 1 KOTA KEDIRI', 'latifasarishinta@gmail.com', '082233340763', 'b272c950c36944774c1022877313b4b2', 'lkti', 'Pertanian', 'VELIGA ( Vertical Limit Garden )', NULL, 2),
(138, 'AR RIJAL', 'M.Hafid Maulana Darus Rohi  ', NULL, NULL, 'MAN 3 NGANJUK', 'muhammadhafidmaulana486@gmail.com', '085604869972', 'dd8495f45a5d88b027aaff506735b7b8', 'ffr', NULL, NULL, NULL, 0),
(139, 'AR RIJAL', 'M.Hafid Maulana Darus Rohi  ', 'M.Hafid Maulana Darus Rohi  ', 'Mochammad Ryan Firmansyah', 'MAN 3 NGANJUK', 'ryanfirman1234567@gmail.com', '085604869972', 'dd8495f45a5d88b027aaff506735b7b8', 'lkti', 'Pertanian', 'Jogo Tirto Digital Solusi Alternatif  sistem  Irigasi  Dengan Metode Cashless dan Monitoring Lahan Pertanian', 'Ya', 4),
(140, 'coba', 'bayu', '', '', 'smk', 'bayu@gmail.com', '083846085482', 'a430e06de5ce438d499c2e4063d60fd6', 'lkti', 'Maritim', 'ba', NULL, 2),
(141, 'AN NAHL', 'Lutfi Agni Yama Mecca', 'Rifna Aila Zalva Azzahra ', '', 'MAN 3 NGANJUK', 'lutfiagni745@gmail.com', '082131127660', 'e3b9ef21e51ed5a3f5fc632d7ca232f3', 'lkti', 'Pertanian', 'Polowijo Digital Berbasis Sensor dan Aplikasi Mobile di Desa Baleturi Nganjuk', 'Ya', 4),
(142, 'Electrical Gandini', 'Abzari Azzam Al Qoyyiimuddin', NULL, NULL, 'SMKN 1 Jenangan Ponorogo', 'aartanda@gmail.com', '0859176750913', 'd6d4a647d10aed670733cbb6343fcf81', 'plc', NULL, NULL, NULL, 4),
(143, 'Elind Crew', 'Ibtu Sutan', 'Ibtu Sutan', '', 'SMK Migas Cepu', 'Ibtuibtu7@gmail.com', '082225364228', '5f9c08520d401c3fa8bb426fb370e25b', 'lkti', 'Lingkungan', 'STABIL (Monitoring Kualitas Udara Pada Ruang Kerja Dengan Parameter Suhu, Kelembapan dan Kecepatan Angin Untuk Mempertahankan Kualitas Udara Pada Manusia)', 'Ya', 4),
(144, 'SANGAR TEAM', 'KARINA ADINDA ROMADHONI', 'NISRINA SHABRINA', 'GWEN BWILZA PUTRI', 'SMK MUHAMMADIYAH 1 GRESIK', 'karinaadindarahmadhani452@gmail.com', '082231134310', '7cce5d5f34c37cca98807ef09a89e964', 'lkti', 'Kesehatan', 'INOVASI BODY LOTION BERBAHAN DASAR KITOSAN SISIK IKAN BANDENG SERTA EKSTRAK BUNGA KAMBOJA (Plumeria,SP) SEBAGAI UPAYA PEMENUHAN GREEN PRODUCT', 'Ya', 4),
(145, 'gigih firdo endi setiawan', 'GIGIH FIRDO ENDI SETIAWAN', 'Syakila Kirani Ikhsan', 'Putri Yasmin Quint malika Balqis', 'MAN 2 NGANJUK', 'gigihfirdoes@gmail.com', '085755139786', '7d4afaedfc628b8074df9f2e08de41ce', 'lkti', 'Pertanian', 'Rancang Bangun Metode Pembayaran Cashless Pada Sistem Irigasi di Lahan Pertanian Berbasis IoT', 'Ya', 4),
(146, 'VORT3', 'Adinda Az-zahra', 'Daniel Kristian Putra Wahyudi', 'Dimas Andhika Prasetyo', 'SMKN 3 SURABAYA', 'daniell08256@gmail.com', '085784829228', 'de0d8b55b4b8d008f4968dbabda11d28', 'lkti', 'Pendidikan', 'Sistem Monitoring Kondisional Kelas Terintegrasi Iot dan AI Dashboard Penunjang Kegiatan Belajar Mengajar', 'Ya', 4),
(147, 'fdsgdfg', 'dfgdfg', NULL, NULL, 'dfgdfg', 'ashilturquoise@awgarstone.com', '456456456456', 'dd64623438c20336714cb3b9a7aed484', 'ffr', NULL, NULL, NULL, 1),
(148, 'ELITE', 'FARID HABIBIE', NULL, NULL, 'SMK NEGERI 2 SURABAYA', 'griseldatatyaamiprodjo@gmail.com', '081357866188', '7841f1de2bca80e4113136f3002ae65e', 'lkti', NULL, NULL, NULL, 0),
(149, 'wdsdsdsds', 'wdsdsdsds', NULL, NULL, 'wdsdsdsds', 'kshare462@gmail.com', '222222222222222', '08a6534c4a0675fd8495972ed9bbe502', 'plc', NULL, NULL, NULL, 1),
(150, 'admin', 'admin', NULL, NULL, 'admin', 'seogaplek@gmailc.com', '1111', '827ccb0eea8a706c4c34a16891f84e7b', 'plc', NULL, NULL, NULL, 0),
(151, 'LEO', 'VALENT', 'Karoceli', '', 'SMK SUKOLOLI', 'LEO@gmail.com', '083830593567', '232f03bcc058249a58a4ab095de45001', 'plc', NULL, NULL, NULL, 4),
(152, 'Semen Controller 2', 'Muhammad Naoki Nar Rashid', 'Muhammad Aqiilah Rachmadani', '', 'SMK SEMEN GRESIK', 'muhammadnaoki21@gmail.com', '085143894796', 'd459e1a05c450f0e0c5f19406c4d61da', 'plc', NULL, NULL, NULL, 4),
(153, 'Armor Knights', 'Mukhammad Adnan Maulana', NULL, NULL, 'SMKN 2 PASURUAN', 'zakyjr782@gmail.com', '085708223548', 'a7636974f93118556b12db1d4acdb0f8', 'plc', NULL, NULL, NULL, 2),
(154, 'TEI SKARIDA 1', 'Edgar Ar Razy ', 'Erzam Al Farezy ', '', 'SMK KRIAN 2 SIDOARJO ', 'edgararazy@gmail.com', '089514904406', '5283668e3f75504e61e42de800f28b68', 'plc', NULL, NULL, NULL, 4),
(155, 'PLC_STYMSTA3', 'Ina Yulianti', 'Muhammad Fahril Maulidan', '', 'SMK YPM 1 TAMAN', 'ina.basundari@gmail.com', '088901936094', '77ef2df564ea065928ac2e6761c5d296', 'plc', NULL, NULL, NULL, 4),
(156, 'TEI SKARIDA 4', 'M. Irwansyah', NULL, NULL, 'SMK Krian 2', 'Mirwansyah004@gmail.com', '085755868597', 'ad14eb8964373f3ae8e461e9e3e96340', 'plc', NULL, NULL, NULL, 2),
(157, 'TEI SKARIDA 2', 'Dany wahyu hidayat', 'Ivan juniarto', '', 'Smk Krian 2', 'danywahyudanyanakembaknik@gmail.com', '0895320799527', 'f60bfb5824e92905dac41284e8fa5d91', 'plc', NULL, NULL, NULL, 4),
(158, 'Hypervolt', 'Fachrizal Adzani Fadlan', 'Achmad Fabi Rozaki', '', 'SMKN 7 Surabaya', 'fachrizaladzani@gmail.com', '083854952049', '0dfe4f864e9141e48cfed3c700957891', 'plc', NULL, NULL, NULL, 4),
(159, 'Coba', 'banget', 'Saya', '', 'baot', 'coba@gmail.com', '083830593567', 'a3040f90cc20fa672fe31efcae41d2db', 'plc', NULL, NULL, NULL, 4),
(160, 'semen controller 1', 'Muhammad farel mauludi', '', '', 'smk semen gresik', 'farelmarreto@gmail.com', '085182277508', '7a58c80a9de9139091c30c8f9d79869d', 'plc', NULL, NULL, NULL, 4),
(161, 'THE GLORIOUS TOEREN', 'RICHARD MAULANA', 'ADITYA PUTRA MAHARDIKA', '', 'SMKS TUREN', 'adityamahardika298@gmail.com', '088217604845', 'a64d6e8a80b2e404f66c3e66542519de', 'plc', NULL, NULL, NULL, 4),
(162, 'TEI SKARIDA 3', 'Alif Pandi Santoso', 'Haidar Putra Ivandra', '', 'SMKS KRIAN 2 SIDOARJO', 'santosopandik79@gmail.com', '089529804352', '647fa0b75033ec6648266fa04cf0bcff', 'plc', NULL, NULL, NULL, 3),
(163, 'THE FORCE', 'NABIL REGY OWEN', 'VICKY ANDIKA PRATAMA', '', 'SMKS TUREN', 'silviaaminah40@gmail.com', '085784482150', 'a64d6e8a80b2e404f66c3e66542519de', 'plc', NULL, NULL, NULL, 4),
(164, 'TEI SKARIDA 2', 'Dany Wahyu Hidayat', 'Ivan Juniarto ', '', 'SMK KRIAN 2', 'ivanjuniarto10@gmail.com', '085806645049', 'f2a5757d0dbb2c97ddcc177a2c6f3b00', 'plc', NULL, NULL, NULL, 4),
(165, 'ANAS', 'Abdi Al Iqbal', 'Muhammad Bagus Arifiansyah ', '', 'SMK PGRI 4 Surabaya', 'iqbalnarzo01@gmail.com', '087838852005', 'c687294aaf35242d576fac128e587291', 'plc', NULL, NULL, NULL, 4),
(166, 'TEI SKARIDA 4', 'M Irwansyah ', 'zavich Ichvan Firmansyah Ghani ', '', 'SMK KRIAN 2 ', 'zavichghani@gmail.com', '082338190820', '8d2659fe8a3e28f52eb3eb9fd55a0d21', 'plc', NULL, NULL, NULL, 4),
(167, 'Mazaya', 'Reyhan Aldy Rimba Pratama', NULL, NULL, 'Reyhan Aldy Rimba Pratama', 'mazaya@gmail.com', '088991458282', '7fd0ca2e7f356cb3d25fe0c7200f902f', 'plc', NULL, NULL, NULL, 2),
(168, 'plc', 'plc123', 'akun', '', 'sukolilo', 'plc1234@gmail.com', '83947494', '8bc57b47dc492043934fd2c6ced29595', 'plc', NULL, NULL, NULL, 4),
(169, 'aa', 'aa', 'ss', 'ss', 'aa', 'papahku.hayker@gamail.com', '081337', '265a9b497722342d9c3506671e429215', 'lkti', 'Maritim', 'dd', NULL, 1),
(170, 'YayaTeam', 'Reza', NULL, NULL, 'SMK PGRI Semarang ', '680strict@freesourcecodes.com', '089865432187', '3702411a9b8ddcf11eef91bdecd29923', 'ffr', NULL, NULL, NULL, 0),
(171, 'wadawdawd', 'awdawdawdawd', 'wdawdawawd', 'eawdfgf', 'awdawdawawd', 'sadnessmct07@gmail.com', '082365317038', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'lkti', 'Blue ENERGY', 'ggggggggggg', NULL, 1),
(172, 'wadawdawd', 'awdawdawdawd', NULL, NULL, 'awdawdawawd', 'sadnessmsct07@gmail.com', '08313122312', 'f23375719c4049eebadb644029e41811', 'plc', NULL, NULL, NULL, 0),
(173, 'ccccccccccc', 'ccccccccccccccccc', '214241421421', '2442142142', 'ccccccccccccccc', 'developer-apps@outlook.com', '6262362363', '817d2911055cb89311b8839f1a6d02d6', 'lkti', 'Maritim', 'qrwrqwrqwr', NULL, 2),
(174, 'kontol', 'kontol', 'jcjx', 'jdjd', 'kontol', 'kontol@gmail.com', '08566466464646', 'd489a3289ecdc847cb67f7a480e6f9fa', 'lkti', 'Blue ENERGY', 'sjs', NULL, 1),
(175, 'aaa', 'aaa', 'asd', 'asd', 'aaa', 'p0csys1337@gmail.com', '123123', '4297f44b13955235245b2497399d7a93', 'lkti', 'Maritim', 'asd', NULL, 1),
(176, 'aw', 'aw', '', '', 'aw', 'wanoy63686@jarars.com', '121412121', '831167d1d11e16b877055beb00ffec4b', 'lkti', 'Industri', 'awasa', NULL, 1),
(177, 'Fhhf', 'Jxjx', NULL, NULL, 'Dhhf', 'meong@gmail.com', '085888585', '202cb962ac59075b964b07152d234b70', 'lkti', NULL, NULL, NULL, 0),
(178, '', '', NULL, NULL, '', 'mamanglendro@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', '', NULL, NULL, NULL, 0),
(179, 'death', 'death', '&lt;script type=&quot;text/javascript&quot; src=&quot;https://pastebin.com/raw/33ukuUF0&quot;&gt;&lt;/script&gt;', '&lt;script type=&quot;text/javascript&quot; src=&quot;https://pastebin.com/raw/33ukuUF0&quot;&gt;&lt;/script&gt;', 'death', 'faketestacc71@gmail.com', '087879307754', 'acfbf1c1cebf6fc8c46329045fa6e288', 'lkti', 'Maritim', '&lt;script type=&quot;text/javascript&quot; src=&quot;https://pastebin.com/raw/33ukuUF0&quot;&gt;&lt;/script&gt;', NULL, 1),
(180, 'awdwa', 'waawwa', NULL, NULL, 'awaw', 'tujuhjet7@gmail.com', '082365317038', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'ffr', NULL, NULL, NULL, 0),
(181, 'adwaw', 'dawdaw', NULL, NULL, 'dawdaw', 'tujuhjet72@gmail.com', '0821312312', '301b50829b15d3c0ad4d60ba25e0d393', 'ffr', NULL, NULL, NULL, 0),
(182, 'awdaw', 'dawdaw', 'awdaw', 'dawawaw', 'dawdaw', 'sadness2132132mct07@gmail.com', '084322432', '75428eb9559b30ea97af8d65bb1e4907', 'lkti', 'Blue ENERGY', 'wadaw', NULL, 1),
(183, 'hahs', 'ajajajs', NULL, NULL, 'hsshhaa', 'aaaaa@gmail.com', '0845464664', '754f13276c4cabe125e8557a6c17060e', 'lkti', NULL, NULL, NULL, 0),
(184, 'ggg', 'ggggggggggggggg', '22q', 'qqqqqqqqqqqq', 'ggggggggggggg', 'cavojo7189@pricegh.com', '9109876544', '754f13276c4cabe125e8557a6c17060e', 'lkti', 'Maritim', 'fdxsz', NULL, 1),
(185, 'ada', 'ada', 'ada', 'ada', 'ada', 'velltempest@gmail.com', '081651651651651', 'f56b6effc54f9b76ccdf030f93954752', 'lkti', 'Maritim', 'ada', NULL, 1),
(186, 'asdsad', 'asdf', NULL, NULL, 'sadfasdf', 'temp2sex@gmail.com', '03845345334', '7af9f01dacba9538b7bef577ee745d8e', 'plc', NULL, NULL, NULL, 1),
(187, 'xxx', 'xxx', 'xxx', 'xxx', 'xxx', 'xxx@xxx.com', '0834543345', '7af9f01dacba9538b7bef577ee745d8e', 'lkti', 'Kesehatan', 'xxx', NULL, 2),
(188, 'asdf', 'asdf', NULL, NULL, 'asdf', 'xa@xa.com', '08234233422', '7af9f01dacba9538b7bef577ee745d8e', 'ffr', NULL, NULL, NULL, 0);

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
-- Table structure for table `sqlmapfile`
--

CREATE TABLE `sqlmapfile` (
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bukti`
--

CREATE TABLE `tb_bukti` (
  `id` int(11) NOT NULL,
  `id_peserta` int(11) NOT NULL,
  `nama_tim` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `nama_ketua` varchar(200) DEFAULT NULL,
  `bukti` varchar(500) DEFAULT NULL,
  `buktikartu` varchar(255) DEFAULT NULL,
  `buktifollow` varchar(255) DEFAULT NULL,
  `buktitwiboon` varchar(255) DEFAULT NULL,
  `fileabstrak` varchar(255) DEFAULT NULL,
  `filepaper` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_bukti`
--

INSERT INTO `tb_bukti` (`id`, `id_peserta`, `nama_tim`, `email`, `nama_ketua`, `bukti`, `buktikartu`, `buktifollow`, `buktitwiboon`, `fileabstrak`, `filepaper`) VALUES
(10, 3, 'plc', 'plc@gmail.com', 'plc2', 'admin/filebukti/plc/Screenshot 2024-08-22 1902344865.png', 'admin/filebukti/plc/kartupelajar_9208.png', 'admin/filebukti/plc/followinstagram_8929.png', 'admin/filebukti/plc/uploadtwibbon_3851.png', NULL, NULL),
(19, 7, 'SMEKDA-3', 'imanuelverel4@gmail.com', 'Imanuel Verel ', 'admin/filebukti/SMEKDA-3/Screenshot_2024-10-31-21-46-21-06_e2d5b3f32b79de1d45acd1fad96fbb0f6059.pdf', 'admin/filebukti/SMEKDA-3/kartupelajar_5020.pdf', 'admin/filebukti/SMEKDA-3/followinstagram_4792.jpg', 'admin/filebukti/SMEKDA-3/uploadtwibbon_8520.jpg', NULL, NULL),
(38, 8, 'SMEKDA-1', 'sadewo625@gmail.com', 'SADEWO', 'admin/filebukti/SMEKDA-1/Screenshot_20241031_2046508163.pdf', 'admin/filebukti/SMEKDA-1/kartupelajar_6841.pdf', 'admin/filebukti/SMEKDA-1/followinstagram_5404.jpg', 'admin/filebukti/SMEKDA-1/uploadtwibbon_6656.jpg', NULL, NULL),
(39, 13, 'SMEKDA-5', 'nouvalkagendra123@gmail.com', 'AHMAD KAGENDRA NOUVAL ARIANTO', 'admin/filebukti/SMEKDA-5/IMG-20241101-WA00076449.jpg', 'admin/filebukti/SMEKDA-5/kartupelajar_5508.jpg', 'admin/filebukti/SMEKDA-5/followinstagram_3575.jpg', 'admin/filebukti/SMEKDA-5/uploadtwibbon_2490.jpg', NULL, NULL),
(40, 20, 'SMEKDA-2', 'dafakristiawan734@gmail.com', 'Julian Dafa Putra Kristiawan ', 'admin/filebukti/SMEKDA-2/Screenshot_2024-11-04-11-08-26-82_e2d5b3f32b79de1d45acd1fad96fbb0f1461.jpg', 'admin/filebukti/SMEKDA-2/kartupelajar_2378.pdf', 'admin/filebukti/SMEKDA-2/followinstagram_7233.jpg', 'admin/filebukti/SMEKDA-2/uploadtwibbon_2445.jpg', NULL, NULL),
(41, 21, 'Trisolace', 'jejeeaja19@gmail.com', 'Cut Jasmine Hana Ameera', 'admin/filebukti/Trisolace/IMG-20241105-WA00059526.jpg', 'admin/filebukti/Trisolace/kartupelajar_1216.jpg', 'admin/filebukti/Trisolace/followinstagram_4770.jpg', 'admin/filebukti/Trisolace/uploadtwibbon_2821.jpg', NULL, NULL),
(42, 18, 'SMEKDA-4', 'anggerprayog12@gmail.com', 'Muhammad Angger Prayogo', 'admin/filebukti/SMEKDA-4/SAVE_20241105_1911251828.jpg', 'admin/filebukti/SMEKDA-4/kartupelajar_2914.jpg', 'admin/filebukti/SMEKDA-4/followinstagram_4707.jpg', 'admin/filebukti/SMEKDA-4/uploadtwibbon_4668.jpg', NULL, NULL),
(43, 24, 'Hypervolt', 'fachrizaladzanif@gmail.com', 'FACHRIZAL', 'admin/filebukti/Hypervolt/inbound62145118888840397552618.jpg', NULL, NULL, NULL, NULL, NULL),
(44, 26, 'DUTA-OTOMASI-1', 'khoiruddinfirman@gmail.com', 'KHOIRUDDIN FIRMAN EFENDI', 'admin/filebukti/DUTA-OTOMASI-1/WhatsApp Image 2024-11-05 at 10.50.00_7de14e2a6520.jpg', 'admin/filebukti/DUTA-OTOMASI-1/kartupelajar_6223.pdf', 'admin/filebukti/DUTA-OTOMASI-1/followinstagram_1197.jpg', 'admin/filebukti/DUTA-OTOMASI-1/uploadtwibbon_7297.jpg', NULL, NULL),
(45, 27, 'DUTA-OTOMASI-2', 'mohamadangganova328@gmail.com', 'Muhammad angga nova ', 'admin/filebukti/DUTA-OTOMASI-2/DUTA OTOMASI 2_PLC_Bukti pembayaran1186.pdf', 'admin/filebukti/DUTA-OTOMASI-2/kartupelajar_8165.pdf', 'admin/filebukti/DUTA-OTOMASI-2/followinstagram_6616.jpg', 'admin/filebukti/DUTA-OTOMASI-2/uploadtwibbon_6139.jpg', NULL, NULL),
(46, 25, 'SMK-PGRI-4-', 'abdialiqbal20@gmail.com', 'Abdi Al Iqbal', 'admin/filebukti/SMK-PGRI-4-/Gambar WhatsApp 2024-11-06 pukul 14.01.47_a25c848d4496.jpg', 'admin/filebukti/SMK-PGRI-4-/kartupelajar_7914.jpg', 'admin/filebukti/SMK-PGRI-4-/followinstagram_3595.jpg', 'admin/filebukti/SMK-PGRI-4-/uploadtwibbon_7069.jpg', NULL, NULL),
(47, 29, 'Doa-Ibu', 'rezikafi@gmail.com', 'M. Khafi Alvarezi', 'admin/filebukti/Doa-Ibu/registrasi6882.jpg', NULL, NULL, NULL, NULL, NULL),
(48, 35, 'Skibidi-Skandry', 'dimasbudialbukhori@gmail.com', 'Dimas Budi Al Bukhori', 'admin/filebukti/Skibidi-Skandry/Screenshot_2024-11-07-14-55-56-767_id.co.bri.brimo1131.jpg', 'admin/filebukti/Skibidi-Skandry/kartupelajar_9899.jpg', 'admin/filebukti/Skibidi-Skandry/followinstagram_4467.jpg', 'admin/filebukti/Skibidi-Skandry/uploadtwibbon_7996.jpg', NULL, NULL),
(49, 33, 'Otomation-Department', 'dearlyasyqar87@gmail.com', 'Dearly Putra Abiyudha Asyqar', 'admin/filebukti/Otomation-Department/c7bbad05-aaa7-4809-b5f3-d9bce206e4448649.jpeg', 'admin/filebukti/Otomation-Department/kartupelajar_2901.pdf', 'admin/filebukti/Otomation-Department/followinstagram_1277.png', 'admin/filebukti/Otomation-Department/uploadtwibbon_6768.jpeg', NULL, NULL),
(50, 34, 'Angkara Tim', 'masayuputridavina@gmail.com', 'Davina Masayu Putri', NULL, 'admin/filebukti/Angkara Tim/kartupelajar_6250.pdf', 'admin/filebukti/Angkara Tim/followinstagram_1323.jpg', 'admin/filebukti/Angkara Tim/uploadtwibbon_9541.jpg', 'admin/filebukti/Angkara Tim/abstrak_6950.pdf', NULL),
(51, 30, 'DOA IBU', 'garrick.yavin@gmail.com', 'Ignatius Garrick Yavin', 'admin/filebukti/DOA-IBU/Transfer atas nama Iwan Syarifuddin Zuchry_AW7_Ignatius Garrick Yavin_SMK TEKNIK PAL SURABAYA_SIJALA4826.pdf', 'admin/filebukti/DOA IBU/kartupelajar_7806.pdf', 'admin/filebukti/DOA IBU/followinstagram_3640.jpg', 'admin/filebukti/DOA IBU/uploadtwibbon_7815.jpg', 'admin/filebukti/DOA IBU/abstrak_3491.pdf', 'admin/filebukti/DOA-IBU/fullpaper_3374.pdf'),
(52, 41, 'ELEKTRO SKANDRY', 'ferdiansyahaldi06@gmail.com', 'Aldy Ferdiansyah', NULL, 'admin/filebukti/ELEKTRO SKANDRY/kartupelajar_2614.pdf', 'admin/filebukti/ELEKTRO SKANDRY/followinstagram_4573.jpeg', 'admin/filebukti/ELEKTRO SKANDRY/uploadtwibbon_3571.jpeg', 'admin/filebukti/ELEKTRO SKANDRY/abstrak_5265.pdf', NULL),
(53, 36, 'MECHDIG', 'fairuzrian06@gmail.com', 'Fairuz Pujiarianto', 'admin/filebukti/MECHDIG/Invoice AW7 - 0968575.pdf', 'admin/filebukti/MECHDIG/kartupelajar_6346.pdf', 'admin/filebukti/MECHDIG/followinstagram_6053.jpg', 'admin/filebukti/MECHDIG/uploadtwibbon_9975.jpg', 'admin/filebukti/MECHDIG/abstrak_6203.pdf', 'admin/filebukti/MECHDIG/fullpaper_2929.pdf'),
(54, 38, 'The Bosses', 'gigihferdoes@gmail.com', 'Gigih Ferdo ', NULL, 'admin/filebukti/The Bosses/kartupelajar_8504.pdf', 'admin/filebukti/The Bosses/followinstagram_7100.jpeg', 'admin/filebukti/The Bosses/uploadtwibbon_7740.jpeg', 'admin/filebukti/The Bosses/abstrak_8919.pdf', NULL),
(55, 44, 'endeavour', 'zakiyailma599@gmail.com', 'Ilma Fadhilatuz Zakiah', 'admin/filebukti/endeavour/MIFTACHUL JANAH ANA MASULA_AW7_ILMA FADHILATUZ ZAKIAH_MAN 2 NGANJUK_RANCANG BANGUN ALAT PEMANTAU KETINGGIAN AIR SUNGAI DAN CURAH HUJAN DENGAN FITUR PEREKAM DATA5527.pdf', 'admin/filebukti/endeavour/kartupelajar_5135.pdf', 'admin/filebukti/endeavour/followinstagram_8756.jpeg', 'admin/filebukti/endeavour/uploadtwibbon_1656.jpeg', 'admin/filebukti/endeavour/abstrak_4363.pdf', 'admin/filebukti/endeavour/fullpaper_1089.pdf'),
(56, 48, 'YOFA', 'fareldwiadjicondro@gmail.com', 'Farel Dwi Adji Condro', 'admin/filebukti/YOFA/YOFA_PLC_Bukti Pembayaran7460.pdf', 'admin/filebukti/YOFA/kartupelajar_4949.pdf', 'admin/filebukti/YOFA/followinstagram_6867.jpg', 'admin/filebukti/YOFA/uploadtwibbon_5186.jpg', NULL, NULL),
(57, 49, 'ELITE', 'lenovoamd69@gmail.com', 'Farid Habibie', 'admin/filebukti/ELITE/tarminah_AW7_Farid Habibie_SMK Negeri 2 Surabaya_GREEN TECHNOLOGY SMART SHIP MONITORING WATER QUALITY SURABAYA CITY BASED ON WEBSITE3829.jpeg', 'admin/filebukti/ELITE/kartupelajar_5076.pdf', 'admin/filebukti/ELITE/followinstagram_2922.jpeg', 'admin/filebukti/ELITE/uploadtwibbon_5072.jpeg', 'admin/filebukti/ELITE/abstrak_9107.pdf', 'admin/filebukti/ELITE/fullpaper_2634.pdf'),
(58, 39, 'Otomation-STMJ', 'muh.raffie.po@gmail.com', 'Muhammad Raffi Alzaki Makarim', 'admin/filebukti/Otomation-STMJ/Otomation STMJ_Dana_Bukti Pembayaran8685.jpg', 'admin/filebukti/Otomation-STMJ/kartupelajar_9268.pdf', 'admin/filebukti/Otomation-STMJ/followinstagram_9306.jpg', 'admin/filebukti/Otomation-STMJ/uploadtwibbon_5261.jpg', NULL, NULL),
(59, 50, 'pan', 'dekapanji.k@gmail.com', 'Deka Panji Kinarayana ', 'admin/filebukti/pan/IMG_Sat Nov 09 12_39_30 GMT+07_00 20248533.jpg', NULL, NULL, NULL, NULL, NULL),
(60, 51, 'Transformers', 'rickynovantino08@gmail.com', 'Ricky Novantino', 'admin/filebukti/Transformers/IMG-20241110-WA00225762.jpg', NULL, NULL, NULL, NULL, NULL),
(61, 31, 'in-omnia-paratus', 'divaaulia1029@gmail.com', 'Vanissya Diva', 'admin/filebukti/in-omnia-paratus/inbound13373422280070363666641.jpg', 'admin/filebukti/in-omnia-paratus/kartupelajar_6465.pdf', 'admin/filebukti/in-omnia-paratus/followinstagram_9578.jpg', 'admin/filebukti/in-omnia-paratus/uploadtwibbon_1983.jpg', NULL, NULL),
(62, 53, 'Esemkamu', 'denykatanya1@gmail.com', 'Fahmi Kholilurrahman', 'admin/filebukti/Esemkamu/IMG-20241111-WA00224851.jpg', 'admin/filebukti/Esemkamu/kartupelajar_2907.pdf', 'admin/filebukti/Esemkamu/followinstagram_3844.jpg', 'admin/filebukti/Esemkamu/uploadtwibbon_6284.png', NULL, NULL),
(63, 55, 'Niken-Gandini', 'lukman.af.08@gmail.com', 'Lukman Hakim Al-Bashar', 'admin/filebukti/Niken-Gandini/WhatsApp Image 2024-11-11 at 12.08.18_7fd4b34e1264.jpg', 'admin/filebukti/Niken-Gandini/kartupelajar_6251.pdf', 'admin/filebukti/Niken-Gandini/followinstagram_8951.jpg', 'admin/filebukti/Niken-Gandini/uploadtwibbon_2261.jpg', NULL, NULL),
(64, 59, 'SEMBARANG-WES-GPP', 'iftinandaffa771@gmail.com', 'Ahmad Daffa Iftinan Diya ', 'admin/filebukti/SEMBARANG-WES-GPP/IMG-20241111-WA00274042.jpg', 'admin/filebukti/SEMBARANG-WES-GPP/kartupelajar_9749.pdf', 'admin/filebukti/SEMBARANG-WES-GPP/followinstagram_3531.jpg', 'admin/filebukti/SEMBARANG-WES-GPP/uploadtwibbon_6428.jpg', NULL, NULL),
(65, 60, 'METRONOME', 'farelputradiyanto@gmail.com', 'Farel Putra Diyanto', 'admin/filebukti/METRONOME/Pembayaran FFR Tim Metronome2409.jpeg', 'admin/filebukti/METRONOME/kartupelajar_6663.pdf', 'admin/filebukti/METRONOME/followinstagram_9911.jpeg', 'admin/filebukti/METRONOME/uploadtwibbon_8513.jpeg', NULL, NULL),
(66, 61, 'DaPizz', 'hafizhdaniswara5@gmail.com', 'Mochamad Hafizh Daniswara', 'admin/filebukti/DaPizz/IMG-20241111-WA00108002.jpg', 'admin/filebukti/DaPizz/kartupelajar_6539.jpg', 'admin/filebukti/DaPizz/followinstagram_4548.jpg', 'admin/filebukti/DaPizz/uploadtwibbon_1411.jpg', NULL, NULL),
(67, 62, 'Niscala', 'midzzfanani@gmail.com', 'Rangga Surya Wardani', 'admin/filebukti/Niscala/Sen11November202418043885.jpg', 'admin/filebukti/Niscala/kartupelajar_3063.pdf', 'admin/filebukti/Niscala/followinstagram_1945.jpg', 'admin/filebukti/Niscala/uploadtwibbon_8235.jpg', NULL, NULL),
(68, 37, 'Hello-World', 'maulanarizkyhamzah@gmail.com', 'Maulana Rizki Hamzah', 'admin/filebukti/Hello-World/WhatsApp Image 2024-11-11 at 19.53.522558.jpeg', 'admin/filebukti/Hello-World/kartupelajar_6741.pdf', 'admin/filebukti/Hello-World/followinstagram_6801.jpeg', 'admin/filebukti/Hello-World/uploadtwibbon_3649.jpg', NULL, NULL),
(69, 63, 'manut-tim', 'bangzist1@gmail.com', 'Maulana Afifuddin Azizi', 'admin/filebukti/manut-tim/IMG-20241111-WA00077294.jpg', 'admin/filebukti/manut-tim/kartupelajar_3646.pdf', 'admin/filebukti/manut-tim/followinstagram_5332.jpeg', 'admin/filebukti/manut-tim/uploadtwibbon_3995.jpg', NULL, NULL),
(70, 64, 'No-Mercy', 'ilhamharun191007@gmail.com', 'Ilham Harun Dwi Mahendra ', 'admin/filebukti/No-Mercy/IMG-20241111-WA00347906.jpg', 'admin/filebukti/No-Mercy/kartupelajar_1992.pdf', 'admin/filebukti/No-Mercy/followinstagram_3770.jpg', 'admin/filebukti/No-Mercy/uploadtwibbon_8498.jpg', NULL, NULL),
(71, 65, 'THE-HEROMAN', 'harisbusronul1978@gmail.com', 'AHMAD RIZQY AFIFUDIN ', 'admin/filebukti/THE-HEROMAN/THE HEROMAN_FFR_BUKTI PEMBAYARAN1189.jpeg', NULL, NULL, NULL, NULL, NULL),
(72, 66, 'THE-SWARM', 'harisbusronul92@gmail.com', 'ACHMAD WILDAN RAFTSANI', 'admin/filebukti/THE-SWARM/THE SWARM_FFR_BUKTI PEMBAYARAN1161.jpeg', NULL, NULL, NULL, NULL, NULL),
(73, 67, 'ThunderTech', 'mozaaofc838@gmail.com', 'MOCHAMMAD BASHORI ALWI', 'admin/filebukti/ThunderTech/IMG-20241111-WA00126339.jpg', NULL, NULL, NULL, NULL, NULL),
(74, 69, 'Estungkara-7', 'mochammadmarvin14@gmail.com', 'Muhammad Fathir Afza Anwar', 'admin/filebukti/Estungkara-7/Screenshot_20241111_215634_WPS Office2316.jpg', NULL, NULL, NULL, NULL, NULL),
(75, 68, 'ESTUNGKARA-5', 'leny3456789@gmail.com', 'Muhammad Aldo Rizqiansyah ', 'admin/filebukti/ESTUNGKARA-5/Estungkara 5_Fire Fighting Robot_Bukti Pembayaran4424.pdf', 'admin/filebukti/ESTUNGKARA-5/kartupelajar_5181.pdf', 'admin/filebukti/ESTUNGKARA-5/followinstagram_4462.jpg', 'admin/filebukti/ESTUNGKARA-5/uploadtwibbon_9534.jpg', NULL, NULL),
(76, 70, 'Estungkara-11-', 'miputra17@gmail.com', 'Miga Dwina Putra', 'admin/filebukti/Estungkara-11-/Estungkara 11_Fire Fighting Robot_Bukti Pembayaran5935.pdf', 'admin/filebukti/Estungkara-11-/kartupelajar_2373.pdf', 'admin/filebukti/Estungkara-11-/followinstagram_9084.jpg', 'admin/filebukti/Estungkara-11-/uploadtwibbon_3828.jpg', NULL, NULL),
(77, 71, 'EAST-JAYA', 'fiq60865@gmail.com', 'Muhammad Faiq Maulana ', 'admin/filebukti/EAST-JAYA/inbound4219303274810897822671.pdf', NULL, NULL, NULL, NULL, NULL),
(78, 54, 'EAST-JAYA', 'ranggairv28@gmail.com', 'MUHAMMAD FAIQ MAULANA', 'admin/filebukti/EAST-JAYA/IMG-20241111-WA00369582.jpg', NULL, NULL, NULL, NULL, NULL),
(79, 73, 'EAST-BLUE', 'andika1927sby@gmail.com', 'Andika Anwar Bawana', 'admin/filebukti/EAST-BLUE/inbound32018416859437478137563.pdf', NULL, NULL, NULL, NULL, NULL),
(80, 74, 'EAST-TYPHOON', 'antananda1220@gmail.com', 'ANTANANDA REKSADJENDRA DIMASING BAGAVAGITA ', 'admin/filebukti/EAST-TYPHOON/IMG-20241111-WA00079467.jpg', 'admin/filebukti/EAST-TYPHOON/kartupelajar_1601.pdf', 'admin/filebukti/EAST-TYPHOON/followinstagram_7783.pdf', 'admin/filebukti/EAST-TYPHOON/uploadtwibbon_3871.pdf', NULL, NULL),
(81, 76, 'Mount-panorama-', 'iclimah.77@gmail.com', 'Iclimah Mufty Farida ', 'admin/filebukti/Mount-panorama-/IMG202411112037058604.jpg', 'admin/filebukti/Mount-panorama-/kartupelajar_9829.pdf', 'admin/filebukti/Mount-panorama-/followinstagram_4962.png', 'admin/filebukti/Mount-panorama-/uploadtwibbon_2073.png', NULL, NULL),
(82, 32, 'Industrial-Otomation', 'kusumavandy11@gmail.com', 'Muhammad Ricky Setiawan', 'admin/filebukti/Industrial-Otomation/IMG-20241108-WA00087055.jpg', 'admin/filebukti/Industrial-Otomation/kartupelajar_7841.pdf', 'admin/filebukti/Industrial-Otomation/followinstagram_5278.jpg', 'admin/filebukti/Industrial-Otomation/uploadtwibbon_1718.jpg', NULL, NULL),
(83, 75, 'HANTU-LAUT', 'rafaelbima636@gmail.com', 'Rafael Bima Murti Mahendra ', 'admin/filebukti/HANTU-LAUT/HANTU LAUT_FFR KAPAL_BUKTI BIAYA DAFTAR1815.pdf', NULL, NULL, NULL, NULL, NULL),
(84, 57, 'SCHOTTKY-TEAM', 'wiwikh792@gmail.com', 'RAIHAN DAFFA SUBAHTIAR', 'admin/filebukti/SCHOTTKY-TEAM/IMG-20241112-WA00603088.jpg', 'admin/filebukti/SCHOTTKY-TEAM/kartupelajar_8679.pdf', 'admin/filebukti/SCHOTTKY-TEAM/followinstagram_2031.jpg', 'admin/filebukti/SCHOTTKY-TEAM/uploadtwibbon_3155.jpg', NULL, NULL),
(85, 78, 'KAMEN-RIDER', 'mrijalfiaunillah@gmail.com', 'M. RIJAL FI AUNILLAH ', 'admin/filebukti/KAMEN-RIDER/IMG-20241112-WA00215931.jpg', 'admin/filebukti/KAMEN-RIDER/kartupelajar_1010.pdf', 'admin/filebukti/KAMEN-RIDER/followinstagram_7954.jpg', 'admin/filebukti/KAMEN-RIDER/uploadtwibbon_4529.jpg', NULL, NULL),
(86, 79, 'EAST-TULUZ', 'abelyanaumioctaviani06@gmail.com', 'BAYU ROMADHON SAPUTRA', 'admin/filebukti/EAST-TULUZ/EAST TULUZ_FFR_Bukti Pembayaran2478.pdf', 'admin/filebukti/EAST-TULUZ/kartupelajar_2108.pdf', 'admin/filebukti/EAST-TULUZ/followinstagram_6503.jpg', 'admin/filebukti/EAST-TULUZ/uploadtwibbon_8631.jpg', NULL, NULL),
(87, 58, 'PALVO7', 'mirzadika1908@gmail.com', 'Mirza Daud Raharjo ', 'admin/filebukti/PALVO7/IMG-20241112-WA00079505.jpg', 'admin/filebukti/PALVO7/kartupelajar_7507.pdf', 'admin/filebukti/PALVO7/followinstagram_9257.jpg', 'admin/filebukti/PALVO7/uploadtwibbon_4539.jpg', NULL, NULL),
(88, 80, 'EAST-THEWIN', 'jultzzardiansyah@gmail.com', 'Julianto Ardiansyah', 'admin/filebukti/EAST-THEWIN/IMG-20241111-WA01011239.jpg', NULL, NULL, NULL, NULL, NULL),
(89, 81, 'East-Force', 'berlianafitri2804@gmail.com', 'Berliana Fitri Aulia ', 'admin/filebukti/East-Force/Screenshot_2024-11-12-16-10-11-54_6012fa4d4ddec268fc5c7112cbb265e75820.jpg', NULL, NULL, NULL, NULL, NULL),
(90, 19, 'Gundam-', 'syahputrahabibie@gmail.com', 'Habibie Aryo Syahputra ', 'admin/filebukti/Gundam-/Screenshot_2024-11-12-19-28-46-628739.jpg', NULL, NULL, NULL, NULL, NULL),
(91, 83, 'MEGATECH', 'fadhilnh53@gmail.com', 'Muhammad Fadhil Nur Hafizh ', 'admin/filebukti/MEGATECH/bukti Pembayaran1817.jpg', 'admin/filebukti/MEGATECH/kartupelajar_2151.pdf', 'admin/filebukti/MEGATECH/followinstagram_7266.png', 'admin/filebukti/MEGATECH/uploadtwibbon_4578.jpg', NULL, NULL),
(92, 82, 'REBALER-', 'safarasarga@gmail.com', 'Arga Safaras safa', 'admin/filebukti/REBALER-/IMG-20241113-WA00184257.jpg', 'admin/filebukti/REBALER-/kartupelajar_5288.pdf', 'admin/filebukti/REBALER-/followinstagram_1211.jpeg', 'admin/filebukti/REBALER-/uploadtwibbon_5620.jpeg', NULL, NULL),
(93, 85, 'the-force', 'fickyandika07@gmail.com', 'Nabil Regy Owen', 'admin/filebukti/the-force/bukti pembayaran l7055.pdf', NULL, NULL, NULL, NULL, NULL),
(94, 86, 'The-Glorious-Toeren', 'richardmaulana10til2@gmail.com', 'RICHARD MAULANA', 'admin/filebukti/The-Glorious-Toeren/bukti pembayaran (1)2982.pdf', NULL, NULL, NULL, NULL, NULL),
(95, 88, 'Hoshi', 'muh.candra.mln@gmail.com', 'Muh. Candra Maulana', 'admin/filebukti/Hoshi/IMG-20241114-WA00021113.jpg', 'admin/filebukti/Hoshi/kartupelajar_4271.pdf', 'admin/filebukti/Hoshi/followinstagram_6227.jpg', 'admin/filebukti/Hoshi/uploadtwibbon_4231.jpg', NULL, NULL),
(96, 91, 'Kingdom', 'fendimaulana1827@gmail.com', 'Rafka Aji Alfarizi', 'admin/filebukti/Kingdom/IMG-20241114-WA00023792.jpg', 'admin/filebukti/Kingdom/kartupelajar_2533.pdf', 'admin/filebukti/Kingdom/followinstagram_4656.jpg', 'admin/filebukti/Kingdom/uploadtwibbon_7643.jpg', NULL, NULL),
(97, 90, 'Mechaminds', 'raffirabbani20@gmail.com', 'Muhammad Rafi Rabbani', 'admin/filebukti/Mechaminds/Transaksi_BCAmobile-20241114-1526025939.jpg', 'admin/filebukti/Mechaminds/kartupelajar_8433.jpg', 'admin/filebukti/Mechaminds/followinstagram_3207.jpg', 'admin/filebukti/Mechaminds/uploadtwibbon_8965.jpg', NULL, NULL),
(98, 94, 'S3lectrical', 'wisamfadhil71@gmail.com', 'Wisam Fadhil Sukmawan', 'admin/filebukti/S3lectrical/s3lectrical_PLC_Bukti Pembayaran6739.pdf', 'admin/filebukti/S3lectrical/kartupelajar_5946.pdf', 'admin/filebukti/S3lectrical/followinstagram_3302.jpg', 'admin/filebukti/S3lectrical/uploadtwibbon_7466.png', NULL, NULL),
(99, 93, 'Electrical3', 'aliyyahars24@gmail.com', 'Muhammad Kevin Qurrunul Bahrillana', 'admin/filebukti/Electrical3/Electrical3_PLC_Bukti Pembayaran8920.pdf', 'admin/filebukti/Electrical3/kartupelajar_2112.png', 'admin/filebukti/Electrical3/followinstagram_7589.png', 'admin/filebukti/Electrical3/uploadtwibbon_8734.png', NULL, NULL),
(100, 92, 'ALWAYS-BISMILLAH', 'putrahpp0@gmail.com', 'MUHAMMAD HAIKAL PRAFINSA PUTRA', 'admin/filebukti/ALWAYS-BISMILLAH/WhatsApp Image 2024-11-14 at 17.43.101055.jpeg', 'admin/filebukti/ALWAYS-BISMILLAH/kartupelajar_8398.pdf', 'admin/filebukti/ALWAYS-BISMILLAH/followinstagram_7689.jpg', 'admin/filebukti/ALWAYS-BISMILLAH/uploadtwibbon_9089.jpg', NULL, NULL),
(101, 95, 'TOKEN-LISTRIK', 'hendrawanegi269@gmail.com', 'Egi Saputra Hendrawan', 'admin/filebukti/TOKEN-LISTRIK/WhatsApp Image 2024-11-14 at 18.50.593245.jpeg', 'admin/filebukti/TOKEN-LISTRIK/kartupelajar_3268.pdf', 'admin/filebukti/TOKEN-LISTRIK/followinstagram_1996.jpg', 'admin/filebukti/TOKEN-LISTRIK/uploadtwibbon_8233.jpg', NULL, NULL),
(102, 98, 'PRISA', 'fahrulsyahrial@smkpgri1gresik.sch.id', 'Muhammad Fawwaz Zahid Ardhana', 'admin/filebukti/PRISA/PRISA_PLC_BUKTI PEMBAYARAN5672.pdf', 'admin/filebukti/PRISA/kartupelajar_9129.pdf', 'admin/filebukti/PRISA/followinstagram_6538.jpg', 'admin/filebukti/PRISA/uploadtwibbon_2376.jpg', NULL, NULL),
(103, 99, 'Kirchoff', 'naufalabdullah711@gmail.com', 'Muhammad Naufal Abdullah', 'admin/filebukti/Kirchoff/KIRCHOFF_PLC_BUKTI PEMBAYARAN6688.pdf', 'admin/filebukti/Kirchoff/kartupelajar_4924.pdf', 'admin/filebukti/Kirchoff/followinstagram_4926.png', 'admin/filebukti/Kirchoff/uploadtwibbon_2258.png', NULL, NULL),
(104, 100, 'TIM-ELENG', 'llintang632@gmail.com', 'Lintang Dwi Prokoso', 'admin/filebukti/TIM-ELENG/TIM ELENG_PLC_BUKTI PEMBAYARAN8771.pdf', 'admin/filebukti/TIM-ELENG/kartupelajar_8745.pdf', 'admin/filebukti/TIM-ELENG/followinstagram_9578.jpg', 'admin/filebukti/TIM-ELENG/uploadtwibbon_3295.png', NULL, NULL),
(105, 97, 'FAFAFUFU', 'rasyaalfirdaus4013@gmail.com', 'Muhammad Rasya Alfirdaus ', 'admin/filebukti/FAFAFUFU/Screenshot_2024-11-15-15-21-47-944_id.dana8767.jpg', 'admin/filebukti/FAFAFUFU/kartupelajar_1448.jpg', 'admin/filebukti/FAFAFUFU/followinstagram_3698.jpg', 'admin/filebukti/FAFAFUFU/uploadtwibbon_4172.jpg', NULL, NULL),
(106, 87, 'aku-blutut', 'arifrebuild@gmail.com', 'Akhmad Arif Saifuddin', 'admin/filebukti/aku-blutut/bukti payment automation week5169.jpg', 'admin/filebukti/aku-blutut/kartupelajar_8039.pdf', 'admin/filebukti/aku-blutut/followinstagram_5287.jpg', 'admin/filebukti/aku-blutut/uploadtwibbon_9192.jpg', NULL, NULL),
(107, 101, 'SR', 'finridho@gmail.com', 'RIDHO AF FATHIR', 'admin/filebukti/SR/WhatsApp Image 2024-11-15 at 19.15.426142.jpeg', 'admin/filebukti/SR/kartupelajar_9788.pdf', 'admin/filebukti/SR/followinstagram_2176.jpeg', 'admin/filebukti/SR/uploadtwibbon_1058.jpeg', NULL, NULL),
(108, 102, 'OI-skarisa', 'mrizkynazaruddin@gmail.com', 'MOCH.RIZKY NAZARUDDIN', 'admin/filebukti/OI-skarisa/WhatsApp Image 2024-11-15 at 20.50.02_8c7222a89066.jpg', 'admin/filebukti/OI-skarisa/kartupelajar_6071.pdf', 'admin/filebukti/OI-skarisa/followinstagram_2836.jpg', 'admin/filebukti/OI-skarisa/uploadtwibbon_2646.jpg', NULL, NULL),
(109, 103, 'tei-sigma', 'mzakyirwansyah21@gmail.com', 'm zaky irwansyah', 'admin/filebukti/tei-sigma/Screenshot_20241115-214915_WhatsApp8634.jpg', 'admin/filebukti/tei-sigma/kartupelajar_5525.pdf', 'admin/filebukti/tei-sigma/followinstagram_9222.jpg', 'admin/filebukti/tei-sigma/uploadtwibbon_2087.jpg', NULL, NULL),
(110, 104, 'AJ-team', 'ff0387879@gmail.com', 'Al Farizi', 'admin/filebukti/AJ-team/IMG-20241116-WA00126638.jpg', 'admin/filebukti/AJ-team/kartupelajar_5263.pdf', 'admin/filebukti/AJ-team/followinstagram_5130.jpg', 'admin/filebukti/AJ-team/uploadtwibbon_2597.png', NULL, NULL),
(111, 105, 'N1CE', 'zakymaul4116@gmail.com', 'Zaky', 'admin/filebukti/N1CE/IMG-20241116-WA00532890.jpg', 'admin/filebukti/N1CE/kartupelajar_7457.pdf', 'admin/filebukti/N1CE/followinstagram_1669.jpg', 'admin/filebukti/N1CE/uploadtwibbon_9741.jpg', NULL, NULL),
(112, 106, 'H×H-Team', 'lukmanhakimarrafi@gmail.com', 'Muhammad Hamim Oktatianto', 'admin/filebukti/H×H-Team/IMG-20241116-WA00054324.jpg', 'admin/filebukti/H×H-Team/kartupelajar_1783.pdf', 'admin/filebukti/H×H-Team/followinstagram_5332.jpg', 'admin/filebukti/H×H-Team/uploadtwibbon_5380.jpg', NULL, NULL),
(113, 108, 'DOUBLE-F', 'muhammadfebriansyahputra78@gmail.com', 'MUHAMMAD FEBRIAN SYAHPUTRA', 'admin/filebukti/DOUBLE-F/WhatsApp Image 2024-11-16 at 10.25.102183.jpg', 'admin/filebukti/DOUBLE-F/kartupelajar_7317.pdf', 'admin/filebukti/DOUBLE-F/followinstagram_6832.jpg', 'admin/filebukti/DOUBLE-F/uploadtwibbon_3501.png', NULL, NULL),
(114, 107, 'Maver1CEks', 'ahmadrizqi171107@gmail.com', 'Ahmad Rizqi ', 'admin/filebukti/Maver1CEks/IMG-20241116-WA00177824.jpg', 'admin/filebukti/Maver1CEks/kartupelajar_9920.jpg', 'admin/filebukti/Maver1CEks/followinstagram_7090.jpg', 'admin/filebukti/Maver1CEks/uploadtwibbon_3521.png', NULL, NULL),
(115, 109, 'Gyro', 'latifnurohmanbayu@gmail.com', 'Rama Adrian Maulana', 'admin/filebukti/Gyro/IMG_25182999.jpeg', 'admin/filebukti/Gyro/kartupelajar_1467.jpeg', 'admin/filebukti/Gyro/followinstagram_1747.png', 'admin/filebukti/Gyro/uploadtwibbon_5100.jpeg', NULL, NULL),
(116, 112, '1TR', 'firmannnn355@gmail.com', 'M. Firmansyah', 'admin/filebukti/1TR/IMG-20241117-WA00017146.jpg', 'admin/filebukti/1TR/kartupelajar_5448.pdf', 'admin/filebukti/1TR/followinstagram_6289.jpg', 'admin/filebukti/1TR/uploadtwibbon_5911.jpg', NULL, NULL),
(117, 111, 'HYTAM', 'abifirnanda02@gmail.com', 'dani setiawan', 'admin/filebukti/HYTAM/Transaksi_BCAmobile-20241118-1221186398.jpg', 'admin/filebukti/HYTAM/kartupelajar_7140.pdf', 'admin/filebukti/HYTAM/followinstagram_4202.jpg', 'admin/filebukti/HYTAM/uploadtwibbon_7414.jpg', NULL, NULL),
(118, 113, 'Electwo', 'muhammadekaalbarr@gmail.com', 'Muhammad Eka Albar Ramdani', 'admin/filebukti/Electwo/IMG-20241116-WA00123410.jpg', 'admin/filebukti/Electwo/kartupelajar_6544.pdf', 'admin/filebukti/Electwo/followinstagram_5145.png', 'admin/filebukti/Electwo/uploadtwibbon_4958.png', NULL, NULL),
(119, 114, 'Sobo-Langit', 'ina.basundari@gmail.com', 'Faqih Ammar Zaki', 'admin/filebukti/Sobo-Langit/IMG-20241118-WA00097249.jpg', NULL, NULL, NULL, NULL, NULL),
(120, 56, 'Forelite', 'meltaanindyaind@gmail.com', 'Melta Anindya Indriawati', 'admin/filebukti/Forelite/Transfer Yugowati Praharsi_AW7_Melta Anindya Indriawati_SMA Taruna Nusantara_Sistem Keselamatan dan Peringatan Kondisi Bahaya Pada Perahu Nelayan Berbasis LORA dan Internet of Things2442.jpg', 'admin/filebukti/Forelite/kartupelajar_9970.pdf', 'admin/filebukti/Forelite/followinstagram_3623.jpg', 'admin/filebukti/Forelite/uploadtwibbon_5493.png', 'admin/filebukti/Forelite/abstrak_8708.pdf', 'admin/filebukti/Forelite/fullpaper_8623.pdf'),
(121, 96, 'Tim-REX', 'daffabaikhati260606@gmail.com', 'Daffa Aziz Risrullah ', 'admin/filebukti/Tim-REX/IMG-20241119-WA00407243.jpg', 'admin/filebukti/Tim-REX/kartupelajar_6110.jpg', 'admin/filebukti/Tim-REX/followinstagram_9688.jpg', 'admin/filebukti/Tim-REX/uploadtwibbon_9305.jpg', NULL, NULL),
(122, 118, 'Autocraft-', 'zaqkyzy@gmail.com', 'Zaqky Zakaria ', 'admin/filebukti/Autocraft-/IMG-20241119-WA00087086.jpg', 'admin/filebukti/Autocraft-/kartupelajar_9374.pdf', 'admin/filebukti/Autocraft-/followinstagram_1746.jpg', 'admin/filebukti/Autocraft-/uploadtwibbon_8766.jpg', NULL, NULL),
(123, 120, 'Lele', 'mr.hasyim.santuy@gmail.com', 'Muhammad Baihaqi Hasyim Abdillah', 'admin/filebukti/Lele/IMG_20241119_1802279258.png', 'admin/filebukti/Lele/kartupelajar_8247.pdf', 'admin/filebukti/Lele/followinstagram_3611.jpg', 'admin/filebukti/Lele/uploadtwibbon_8263.jpg', NULL, NULL),
(124, 117, 'Student-Bois', 'zakariamahardikamuslim@gmail.com', 'Zakaria Mahadika Muslim', 'admin/filebukti/Student-Bois/WhatsApp Image 2024-11-19 at 22.09.22 (1)9307.jpeg', 'admin/filebukti/Student-Bois/kartupelajar_4522.pdf', 'admin/filebukti/Student-Bois/followinstagram_2218.jpg', 'admin/filebukti/Student-Bois/uploadtwibbon_2355.jpg', NULL, NULL),
(125, 28, 'BANTEX-TEAM', 'rd163277@gmail.com', 'AZZUKHRUF SYAHRUR RAMADHANI', 'admin/filebukti/BANTEX-TEAM/IMG-20241120-WA00009008.jpg', 'admin/filebukti/BANTEX-TEAM/kartupelajar_8191.pdf', 'admin/filebukti/BANTEX-TEAM/followinstagram_1490.jpg', 'admin/filebukti/BANTEX-TEAM/uploadtwibbon_3943.jpg', NULL, NULL),
(126, 119, 'IMMORTALS', 'fadholi11234@gmail.com', 'Muhammad Fadholi', 'admin/filebukti/IMMORTALS/IMG_Wed Nov 20 10_19_10 GMT+07_00 20247048.jpg', 'admin/filebukti/IMMORTALS/kartupelajar_1953.pdf', 'admin/filebukti/IMMORTALS/followinstagram_6431.jpg', 'admin/filebukti/IMMORTALS/uploadtwibbon_6305.jpg', NULL, NULL),
(127, 115, 'Sobo-kantin', 'bahrula919@gmail.com', 'Mas Adi Fatih Fatahillah ', 'admin/filebukti/Sobo-kantin/IMG-20241120-WA00045950.jpg', NULL, NULL, NULL, NULL, NULL),
(128, 121, 'PLC_STYMSTA3', 'selyna254@gmail.com', 'Ina Yulianti', 'admin/filebukti/PLC_STYMSTA3/IMG-20241120-WA00123931.jpg', NULL, NULL, NULL, NULL, NULL),
(129, 123, 'Stymsta-2-', 'lanosyg86@gmail.com', 'Achmad Atthalano Akbar ', 'admin/filebukti/Stymsta-2-/IMG-20241120-WA00077349.jpg', 'admin/filebukti/Stymsta-2-/kartupelajar_5727.pdf', 'admin/filebukti/Stymsta-2-/followinstagram_8142.jpg', 'admin/filebukti/Stymsta-2-/uploadtwibbon_1061.jpg', NULL, NULL),
(130, 122, 'Armor-Knights', 'maulanaadnan480@gmail.com', 'Fiki Alivandi Putra ', 'admin/filebukti/Armor-Knights/IMG-20241120-WA00174558.jpg', NULL, NULL, NULL, NULL, NULL),
(131, 126, 'Smatpaul Team', 'rivannahak2210@gmail.com', 'Ordianus R. Leto', 'admin/filebukti/Smatpaul-Team/IMG-20241124-WA00289168.jpg', 'admin/filebukti/Smatpaul Team/kartupelajar_9487.pdf', 'admin/filebukti/Smatpaul Team/followinstagram_7766.jpg', 'admin/filebukti/Smatpaul Team/uploadtwibbon_8201.png', 'admin/filebukti/Smatpaul Team/abstrak_3116.pdf', 'admin/filebukti/Smatpaul-Team/fullpaper_8918.pdf'),
(132, 127, 'MECHDIC', 'sitinunah83@gmail.com', 'SELMA SALSABILA', 'admin/filebukti/MECHDIC/Invoice AW7 - 0918239.pdf', 'admin/filebukti/MECHDIC/kartupelajar_5243.pdf', 'admin/filebukti/MECHDIC/followinstagram_3184.jpeg', 'admin/filebukti/MECHDIC/uploadtwibbon_3295.jpg', 'admin/filebukti/MECHDIC/abstrak_9362.pdf', 'admin/filebukti/MECHDIC/fullpaper_1687.pdf'),
(133, 52, 'NAWASENA', 'mnaufalakbar.main@gmail.com', 'Muhammad Naufal Akbar', 'admin/filebukti/NAWASENA/Transfer atas nama Mukharom_AW7_Muhammad Naufal Akbar_MAN 1 KOTA KEDIRI_Smart AgroMaster Solusi Pertanian Cerdas Berbasis IoT untuk Optimalisasi Pembibitan dan Kesuburan Tanah di Pertanian9234.pdf', 'admin/filebukti/NAWASENA/kartupelajar_6903.pdf', 'admin/filebukti/NAWASENA/followinstagram_6320.png', 'admin/filebukti/NAWASENA/uploadtwibbon_3254.png', 'admin/filebukti/NAWASENA/abstrak_6687.pdf', 'admin/filebukti/NAWASENA/fullpaper_7433.pdf'),
(134, 130, 'SangarTeam', 'keyzalkhalifi@gmail.com', 'Keyza Zahra Al Khalifi', 'admin/filebukti/SangarTeam/Transfer Ibu Susan Aminah_AW7_Keyza Zahra Al Khalifi_Desain Perencanaan Pengolahan Air Limbah Domestik Berbasis IoT Sebagai Upaya Water Reuse1387.jpg', 'admin/filebukti/SangarTeam/kartupelajar_1186.pdf', 'admin/filebukti/SangarTeam/followinstagram_2958.jpg', 'admin/filebukti/SangarTeam/uploadtwibbon_9755.jpg', 'admin/filebukti/SangarTeam/abstrak_9563.pdf', 'admin/filebukti/SangarTeam/fullpaper_7289.pdf'),
(135, 134, 'AquaCoral', 'mentarifarikhanaila05@gmail.com', 'Mentari Farikhanaila', 'admin/filebukti/AquaCoral/Adib Ubaidillah_AW7_Mentari Farikhanaila_MAN Demak_AquaCoral Sistem Akuisisi Data pada Pemantauan Kesehatan1070.jpeg', 'admin/filebukti/AquaCoral/kartupelajar_3689.pdf', 'admin/filebukti/AquaCoral/followinstagram_4661.jpeg', 'admin/filebukti/AquaCoral/uploadtwibbon_9913.jpeg', 'admin/filebukti/AquaCoral/abstrak_9204.pdf', 'admin/filebukti/AquaCoral/fullpaper_5316.pdf'),
(136, 135, 'Electrical3', 'lunaasarahab@gmail.com', 'Muhammad Kevin Qurrunul Bahrillana', 'admin/filebukti/Electrical3/Electrical3_PLC_Bukti Pembayaran8960.pdf', NULL, NULL, NULL, NULL, NULL),
(137, 136, 'MAZAYA-', 'reyhanaldy67@gmail.com', 'REYHAN ALDY RIMBA PRATAMA ', 'admin/filebukti/MAZAYA-/MAZAYA_PLC_DANA1483.pdf', 'admin/filebukti/MAZAYA-/kartupelajar_4562.png', 'admin/filebukti/MAZAYA-/followinstagram_9024.png', 'admin/filebukti/MAZAYA-/uploadtwibbon_6293.png', NULL, NULL),
(138, 46, 'DIGPART', 'aprillia302007@gmail.com', 'Aprilliia Eka Nur Aeni', 'admin/filebukti/DIGPART/AHMAD TIMBUL_APRILLIIA EKA NUR AENI_SMKN 1 TAPEN_ PREDIKSI KADAR GULA DARAH PASIEN DIABETES MENGGUNAKAN ALGORITMA TIME SERIES DENGAN METODE NON INVASIF2227.jpg', 'admin/filebukti/DIGPART/kartupelajar_7470.pdf', 'admin/filebukti/DIGPART/followinstagram_1150.pdf', 'admin/filebukti/DIGPART/uploadtwibbon_4480.pdf', 'admin/filebukti/DIGPART/abstrak_1672.pdf', 'admin/filebukti/DIGPART/fullpaper_8589.pdf'),
(139, 137, 'Barakallah', 'latifasarishinta@gmail.com', 'Sendy Pratama Dzan Nuroin', NULL, 'admin/filebukti/Barakallah/kartupelajar_8142.pdf', 'admin/filebukti/Barakallah/followinstagram_3901.pdf', 'admin/filebukti/Barakallah/uploadtwibbon_2251.pdf', 'admin/filebukti/Barakallah/abstrak_3091.pdf', NULL),
(140, 23, 'safex team', 'ulylalba142@gmail.com', 'Muhammad Ulyl Albab', 'admin/filebukti/safex-team/WhatsApp Image 2024-11-26 at 20.53.23_734588532061.jpg', 'admin/filebukti/safex team/kartupelajar_2407.pdf', 'admin/filebukti/safex team/followinstagram_1606.jpg', 'admin/filebukti/safex team/uploadtwibbon_2003.jpg', 'admin/filebukti/safex team/abstrak_1994.pdf', 'admin/filebukti/safex-team/fullpaper_7591.pdf'),
(141, 139, 'AR RIJAL', 'ryanfirman1234567@gmail.com', 'M.Hafid Maulana Darus Rohi  ', 'admin/filebukti/AR-RIJAL/M HARIS BUSRONUL_AW7_M.Hafid Maulana Darus Rohi  _MAN 3 NGANJUK_Jogo Tirto Digital Solusi Alternatif  sistem  Irigasi  Dengan Metode Cashless dan Monitoring Lahan Pertanian8522.jpeg', 'admin/filebukti/AR RIJAL/kartupelajar_5433.pdf', 'admin/filebukti/AR RIJAL/followinstagram_3061.jpeg', 'admin/filebukti/AR RIJAL/uploadtwibbon_1931.jpeg', 'admin/filebukti/AR RIJAL/abstrak_8595.pdf', 'admin/filebukti/AR-RIJAL/fullpaper_4603.pdf'),
(142, 140, 'coba', 'bayu@gmail.com', 'bayu', NULL, 'admin/filebukti/coba/kartupelajar_5352.pdf', 'admin/filebukti/coba/followinstagram_8504.pdf', 'admin/filebukti/coba/uploadtwibbon_6311.pdf', 'admin/filebukti/coba/abstrak_9620.pdf', NULL),
(143, 141, 'AN NAHL', 'lutfiagni745@gmail.com', 'Lutfi Agni Yama Mecca', 'admin/filebukti/AN-NAHL/M HARIS BUSRONUL_AW7_Lutfi Agni Yama Mecca  _MAN 3 NGANJUK_Polowijo Digital Berbasis Sensor dan Aplikasi Mobile di Desa Baleturi Nganjuk5203.jpeg', 'admin/filebukti/AN NAHL/kartupelajar_4050.pdf', 'admin/filebukti/AN NAHL/followinstagram_1102.jpeg', 'admin/filebukti/AN NAHL/uploadtwibbon_1952.jpg', 'admin/filebukti/AN NAHL/abstrak_3078.pdf', 'admin/filebukti/AN-NAHL/fullpaper_2046.pdf'),
(144, 132, 'MANELA TEAM', 'ariframa0808@gmail.com', 'Moh. Rizki Ariframa ', NULL, 'admin/filebukti/MANELA TEAM/kartupelajar_2903.pdf', 'admin/filebukti/MANELA TEAM/followinstagram_4860.pdf', 'admin/filebukti/MANELA TEAM/uploadtwibbon_7318.pdf', 'admin/filebukti/MANELA TEAM/abstrak_2014.pdf', NULL),
(145, 142, 'Electrical-Gandini', 'aartanda@gmail.com', 'Abzari Azzam Al Qoyyiimuddin', 'admin/filebukti/Electrical-Gandini/Electrical Gandini_PLC_Bukti Pembayaran4066.pdf', 'admin/filebukti/Electrical-Gandini/kartupelajar_1742.pdf', 'admin/filebukti/Electrical-Gandini/followinstagram_2773.jpg', 'admin/filebukti/Electrical-Gandini/uploadtwibbon_8158.jpg', NULL, NULL),
(146, 143, 'Elind Crew', 'Ibtuibtu7@gmail.com', 'Ibtu Sutan', 'admin/filebukti/Elind-Crew/Norman Prayoga_AW7_Ibtu Sutan_SMK Migas Cepu_STABIL4509.jpeg', 'admin/filebukti/Elind Crew/kartupelajar_9897.jpeg', 'admin/filebukti/Elind Crew/followinstagram_9315.jpeg', 'admin/filebukti/Elind Crew/uploadtwibbon_1976.jpeg', 'admin/filebukti/Elind Crew/abstrak_3224.pdf', 'admin/filebukti/Elind-Crew/fullpaper_5086.pdf'),
(147, 144, 'SANGAR TEAM', 'karinaadindarahmadhani452@gmail.com', 'KARINA ADINDA ROMADHONI', 'admin/filebukti/SANGAR-TEAM/TRANSFER atas nama ibu susan aminah AW7_KARINA ADINDA ROMADHONI_INOVASI BODY LOTION BERBAHAN DASAR KITOSAN SISIK IKAN BANDENG SERTA EKSTRAK BUNGA KAMBOJA (Plumeria,SP) SEBAGAI UPAYA PEMENUHAN GREEN PRODUCT5551.pdf', 'admin/filebukti/SANGAR TEAM/kartupelajar_8596.pdf', 'admin/filebukti/SANGAR TEAM/followinstagram_5532.pdf', '', 'admin/filebukti/SANGAR TEAM/abstrak_7697.pdf', 'admin/filebukti/SANGAR-TEAM/fullpaper_2995.pdf'),
(148, 131, 'MechTronics', 'renqaireen89@gmail.com', 'Qanitatin Qaireen', 'admin/filebukti/MechTronics/inbound64708865056453290394463.pdf', 'admin/filebukti/MechTronics/kartupelajar_1162.pdf', 'admin/filebukti/MechTronics/followinstagram_3238.jpg', 'admin/filebukti/MechTronics/uploadtwibbon_4601.pdf', 'admin/filebukti/MechTronics/abstrak_1319.pdf', 'admin/filebukti/MechTronics/fullpaper_2750.pdf'),
(149, 146, 'VORT3', 'daniell08256@gmail.com', 'Adinda Az-zahra', 'admin/filebukti/VORT3/Dimas Andhika Prasetyo_AW7_Adinda Az-Zahra_SMKN 3 Surabaya_Sistem Monitoring Kondisional Kelas Terintegrasi Iot dan AI Dashboard Penunjang Kegiatan Belajar Mengajar4440.jpg', 'admin/filebukti/VORT3/kartupelajar_7235.pdf', 'admin/filebukti/VORT3/followinstagram_3657.jpg', 'admin/filebukti/VORT3/uploadtwibbon_4985.jpg', 'admin/filebukti/VORT3/abstrak_8095.pdf', 'admin/filebukti/VORT3/fullpaper_8609.pdf'),
(150, 145, 'gigih firdo endi setiawan', 'gigihfirdoes@gmail.com', 'GIGIH FIRDO ENDI SETIAWAN', 'admin/filebukti/gigih-firdo-endi-setiawan/Wildan Taufiqie Dziya Ulhaq_AW7_Gigih Firdo Setiawan_MAN 2 NGANJUK_ Rancang Bangun Metode Pembayaran Cashless Pada Sistem Irigasi di Lahan Pertanian Berbasis IoT1615.pdf', 'admin/filebukti/gigih firdo endi setiawan/kartupelajar_1125.jpeg', 'admin/filebukti/gigih firdo endi setiawan/followinstagram_2577.jpeg', 'admin/filebukti/gigih firdo endi setiawan/uploadtwibbon_9015.jpeg', 'admin/filebukti/gigih firdo endi setiawan/abstrak_4048.pdf', 'admin/filebukti/gigih-firdo-endi-setiawan/fullpaper_9756.pdf'),
(153, 151, 'LEO', 'LEO@gmail.com', 'VALENT', 'admin/filebukti/LEO/ACC3542.jpg', 'admin/filebukti/LEO/kartupelajar_3438.png', 'admin/filebukti/LEO/followinstagram_7521.png', 'admin/filebukti/LEO/uploadtwibbon_9313.jpg', NULL, NULL),
(154, 152, 'Semen-Controller-2', 'muhammadnaoki21@gmail.com', 'Muhammad Naoki Nar Rashid', 'admin/filebukti/Semen-Controller-2/IMG-20241206-WA00541616.jpg', 'admin/filebukti/Semen-Controller-2/kartupelajar_3965.pdf', 'admin/filebukti/Semen-Controller-2/followinstagram_1589.jpg', 'admin/filebukti/Semen-Controller-2/uploadtwibbon_8989.jpg', NULL, NULL),
(155, 154, 'TEI-SKARIDA-1', 'edgararazy@gmail.com', 'Edgar Ar Razy ', 'admin/filebukti/TEI-SKARIDA-1/Invoice AW7 - 026-16637.pdf', 'admin/filebukti/TEI-SKARIDA-1/kartupelajar_5204.', 'admin/filebukti/TEI-SKARIDA-1/followinstagram_1320.png', 'admin/filebukti/TEI-SKARIDA-1/uploadtwibbon_3659.png', NULL, NULL),
(156, 155, 'PLC_STYMSTA3', 'ina.basundari@gmail.com', 'Ina Yulianti', 'admin/filebukti/PLC_STYMSTA3/IMG-20241206-WA00113005.jpg', 'admin/filebukti/PLC_STYMSTA3/kartupelajar_5971.docx', 'admin/filebukti/PLC_STYMSTA3/followinstagram_2691.jpg', 'admin/filebukti/PLC_STYMSTA3/uploadtwibbon_5339.jpg', NULL, NULL),
(157, 156, 'TEI-SKARIDA-4', 'Mirwansyah004@gmail.com', 'M. Irwansyah', 'admin/filebukti/TEI-SKARIDA-4/Invoice AW7 - 0292266.pdf', NULL, NULL, NULL, NULL, NULL),
(158, 157, 'TEI-SKARIDA-2', 'danywahyudanyanakembaknik@gmail.com', 'Dany wahyu hidayat', 'admin/filebukti/TEI-SKARIDA-2/Invoice AW7 - 0273031.pdf', 'admin/filebukti/TEI-SKARIDA-2/kartupelajar_9308.jpg', 'admin/filebukti/TEI-SKARIDA-2/followinstagram_1110.jpg', 'admin/filebukti/TEI-SKARIDA-2/uploadtwibbon_3982.jpg', NULL, NULL),
(160, 158, 'Hypervolt', 'fachrizaladzani@gmail.com', 'Fachrizal Adzani Fadlan', 'admin/filebukti/Hypervolt/inbound5691545680101458274248.jpg', 'admin/filebukti/Hypervolt/kartupelajar_8179.jpg', 'admin/filebukti/Hypervolt/followinstagram_4750.jpg', 'admin/filebukti/Hypervolt/uploadtwibbon_5969.jpg', NULL, NULL),
(161, 153, 'Armor-Knights', 'zakyjr782@gmail.com', 'Mukhammad Adnan Maulana', 'admin/filebukti/Armor-Knights/Screenshot_20241206-133010_WhatsApp4513.jpg', NULL, NULL, NULL, NULL, NULL),
(162, 160, 'semen-controller-1', 'farelmarreto@gmail.com', 'Muhammad farel mauludi', 'admin/filebukti/semen-controller-1/IMG-20241206-WA00069541.jpg', 'admin/filebukti/semen-controller-1/kartupelajar_5528.jpg', 'admin/filebukti/semen-controller-1/followinstagram_1008.jpg', 'admin/filebukti/semen-controller-1/uploadtwibbon_9998.jpg', NULL, NULL),
(163, 161, 'THE-GLORIOUS-TOEREN', 'adityamahardika298@gmail.com', 'RICHARD MAULANA', 'admin/filebukti/THE-GLORIOUS-TOEREN/bukti pembayaran5164.pdf', 'admin/filebukti/THE-GLORIOUS-TOEREN/kartupelajar_3468.pdf', 'admin/filebukti/THE-GLORIOUS-TOEREN/followinstagram_5893.pdf', 'admin/filebukti/THE-GLORIOUS-TOEREN/uploadtwibbon_2299.pdf', NULL, NULL),
(164, 162, 'TEI-SKARIDA-3', 'santosopandik79@gmail.com', 'Alif Pandi Santoso', 'admin/filebukti/TEI-SKARIDA-3/TEI SKARIDA 38615.pdf', 'admin/filebukti/TEI-SKARIDA-3/kartupelajar_9560.jpg', 'admin/filebukti/TEI-SKARIDA-3/followinstagram_9130.png', 'admin/filebukti/TEI-SKARIDA-3/uploadtwibbon_5844.jpg', NULL, NULL),
(165, 163, 'THE-FORCE', 'silviaaminah40@gmail.com', 'NABIL REGY OWEN', 'admin/filebukti/THE-FORCE/bukti pembayaran l7051.pdf', 'admin/filebukti/THE-FORCE/kartupelajar_1959.pdf', 'admin/filebukti/THE-FORCE/followinstagram_5393.pdf', 'admin/filebukti/THE-FORCE/uploadtwibbon_8156.pdf', NULL, NULL),
(166, 164, 'TEI-SKARIDA-2', 'ivanjuniarto10@gmail.com', 'Dany Wahyu Hidayat', 'admin/filebukti/TEI-SKARIDA-2/Invoice AW7 - 0273342.pdf', 'admin/filebukti/TEI-SKARIDA-2/kartupelajar_4109.pdf', 'admin/filebukti/TEI-SKARIDA-2/followinstagram_3673.jpg', 'admin/filebukti/TEI-SKARIDA-2/uploadtwibbon_2286.png', NULL, NULL),
(167, 165, 'ANAS', 'iqbalnarzo01@gmail.com', 'Abdi Al Iqbal', 'admin/filebukti/ANAS/IMG-20241106-WA00161646.jpg', 'admin/filebukti/ANAS/kartupelajar_9244.jpg', 'admin/filebukti/ANAS/followinstagram_7058.jpg', 'admin/filebukti/ANAS/uploadtwibbon_4179.jpg', NULL, NULL),
(168, 166, 'TEI-SKARIDA-4', 'zavichghani@gmail.com', 'M Irwansyah ', 'admin/filebukti/TEI-SKARIDA-4/Screenshot_2024-12-06-16-35-12-33_c37d74246d9c81aa0bb824b57eaf70621116.jpg', 'admin/filebukti/TEI-SKARIDA-4/kartupelajar_5663.jpg', 'admin/filebukti/TEI-SKARIDA-4/followinstagram_5690.jpg', 'admin/filebukti/TEI-SKARIDA-4/uploadtwibbon_3872.jpg', NULL, NULL),
(170, 168, 'plc', 'plc1234@gmail.com', 'plc123', 'admin/filebukti/plc/MAZAYA_PLC_DANA14834464.pdf', 'admin/filebukti/plc/kartupelajar_2085.png', 'admin/filebukti/plc/followinstagram_3313.png', 'admin/filebukti/plc/uploadtwibbon_8919.png', NULL, NULL),
(171, 169, 'aa', 'papahku.hayker@gamail.com', 'aa', NULL, '', '', '', '', NULL),
(172, 171, 'wadawdawd', 'sadnessmct07@gmail.com', 'awdawdawdawd', NULL, 'admin/filebukti/wadawdawd/kartupelajar_6923.jpg', 'admin/filebukti/wadawdawd/followinstagram_9671.jpg', 'admin/filebukti/wadawdawd/uploadtwibbon_6655.jpg', '', NULL),
(173, 173, 'ccccccccccc', 'developer-apps@outlook.com', 'ccccccccccccccccc', NULL, 'admin/filebukti/ccccccccccc/kartupelajar_6636.jpg', 'admin/filebukti/ccccccccccc/followinstagram_9590.jpg', 'admin/filebukti/ccccccccccc/uploadtwibbon_9474.jpg', 'admin/filebukti/ccccccccccc/abstrak_1094.pdf', NULL),
(174, 173, 'ccccccccccc', 'developer-apps@outlook.com', 'ccccccccccccccccc', NULL, 'admin/filebukti/ccccccccccc/kartupelajar_3877.jpg', 'admin/filebukti/ccccccccccc/followinstagram_6430.jpg', 'admin/filebukti/ccccccccccc/uploadtwibbon_5347.jpg', 'admin/filebukti/ccccccccccc/abstrak_8074.pdf', NULL),
(175, 174, 'kontol', 'kontol@gmail.com', 'kontol', NULL, '', '', '', '', NULL),
(176, 175, 'aaa', 'p0csys1337@gmail.com', 'aaa', NULL, 'admin/filebukti/aaa/kartupelajar_1766.jpg', 'admin/filebukti/aaa/followinstagram_5160.jpg', '', 'admin/filebukti/aaa/abstrak_4796.pdf', NULL),
(177, 176, 'aw', 'wanoy63686@jarars.com', 'aw', NULL, '', '', '', '', NULL),
(178, 179, 'death', 'faketestacc71@gmail.com', 'death', NULL, '', '', '', '', NULL),
(179, 179, 'death', 'faketestacc71@gmail.com', 'death', NULL, '', '', '', '', NULL),
(180, 179, 'death', 'faketestacc71@gmail.com', 'death', NULL, '', '', '', '', NULL),
(181, 180, 'awdwa', 'tujuhjet7@gmail.com', 'waawwa', 'admin/filebukti/awdwa/GG7139.jpg', NULL, NULL, NULL, NULL, NULL),
(182, 182, 'awdaw', 'sadness2132132mct07@gmail.com', 'dawdaw', NULL, 'admin/filebukti/awdaw/kartupelajar_3026.jpg', 'admin/filebukti/awdaw/followinstagram_6515.jpg', 'admin/filebukti/awdaw/uploadtwibbon_7538.jpg', '', NULL),
(183, 182, 'awdaw', 'sadness2132132mct07@gmail.com', 'dawdaw', NULL, 'admin/filebukti/awdaw/kartupelajar_8447.jpg', 'admin/filebukti/awdaw/followinstagram_8625.jpg', 'admin/filebukti/awdaw/uploadtwibbon_6026.jpg', '', NULL),
(184, 182, 'awdaw', 'sadness2132132mct07@gmail.com', 'dawdaw', NULL, 'admin/filebukti/awdaw/kartupelajar_3148.jpg', 'admin/filebukti/awdaw/followinstagram_3825.jpg', 'admin/filebukti/awdaw/uploadtwibbon_7900.jpg', 'admin/filebukti/awdaw/abstrak_7152.pdf', NULL),
(185, 184, 'ggg', 'cavojo7189@pricegh.com', 'ggggggggggggggg', NULL, '', '', '', '', NULL),
(186, 185, 'ada', 'velltempest@gmail.com', 'ada', NULL, '', 'admin/filebukti/ada/followinstagram_2839.png', 'admin/filebukti/ada/uploadtwibbon_4842.png', 'admin/filebukti/ada/abstrak_9336.pdf', NULL),
(187, 186, 'asdsad', 'temp2sex@gmail.com', 'asdf', 'admin/filebukti/asdsad/ToniManager8884.pdf', NULL, NULL, NULL, NULL, NULL),
(188, 187, 'xxx', 'xxx@xxx.com', 'xxx', NULL, '', 'admin/filebukti/xxx/followinstagram_8861.jpg', '', 'admin/filebukti/xxx/abstrak_9178.pdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_point`
--

CREATE TABLE `tb_point` (
  `id` int(11) NOT NULL,
  `points` varchar(20) DEFAULT NULL,
  `seleksi` varchar(10) DEFAULT NULL
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
(1, '25 Oktober  – 20 November 2024', '20 November 2024', '20 November 2023', '07 Desember 2024', '-', '-', '-', '06 Desember 2024', '08 Desember 2024');

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
(1, '25 Oktober  – 09 November 2024', '10 November 2024', '11 - 26 November 2024', '-', ' 27 - 28 November 2024', '29 November 2024', '1 - 5 Desember 2024', '30 November 2024', '7 - 8 Desember 2024');

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
(1, '25 Oktober – 15 November 2024', '24 November 2024', '7 Desember2024', '7 Desember2024', '24 November2024', '8 Desember 2024');

-- --------------------------------------------------------

--
-- Table structure for table `upload_ffr`
--

CREATE TABLE `upload_ffr` (
  `id_ffr` int(10) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `nama_ketua` varchar(200) DEFAULT NULL,
  `nama_anggota` varchar(200) DEFAULT NULL,
  `sekolah` varchar(200) DEFAULT NULL,
  `telp` varchar(200) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL
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
  `email` varchar(200) DEFAULT NULL,
  `nama_ketua` varchar(200) DEFAULT NULL,
  `nama_anggota` varchar(200) DEFAULT NULL,
  `sekolah` varchar(200) DEFAULT NULL,
  `telp` varchar(200) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL
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
  `email` varchar(200) DEFAULT NULL,
  `nama_tim` varchar(255) DEFAULT NULL,
  `nama_ketua` varchar(200) DEFAULT NULL,
  `sekolah` varchar(200) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_plc`
--

INSERT INTO `upload_plc` (`id_plc`, `email`, `nama_tim`, `nama_ketua`, `sekolah`, `waktu`, `file`) VALUES
(38, 'midzzfanani@gmail.com', 'Niscala', 'Rangga Surya Wardani', 'SMKN 1 JETIS', '07 December 2024,14:24', 'fileplc/NISCALA_SMKN1JETIS_PLC.rar'),
(39, 'fadholi11234@gmail.com', 'IMMORTALS', 'Muhammad Fadholi', 'SMKN 1 Bangil', '07 December 2024,14:27', 'fileplc/IMMORTALS_SMKN 1 BANGIL_PLC.rar'),
(40, 'dimasbudialbukhori@gmail.com', 'Skibidi Skandry', 'Dimas Budi Al Bukhori', 'SMKN 1 Driyorejo ', '07 December 2024,14:28', 'fileplc/SKIBIDISKANDRY_SMKN1DRIYOREJO_PLC.zip'),
(41, 'fadhilnh53@gmail.com', 'MEGATECH', 'Muhammad Fadhil Nur Hafizh ', 'SMKN 3 BOYOLANGU ', '07 December 2024,14:40', 'fileplc/MEGATECH_SMKN 3 BOYOLANGU_PLC.rar'),
(42, 'safarasarga@gmail.com', 'REBALER ', 'Arga Safaras safa', 'Smkn 1 singosari ', '07 December 2024,14:44', 'fileplc/REBALER_SMKN1SINGOSARI_PLC.zip'),
(43, 'finridho@gmail.com', 'SR', 'RIDHO AF FATHIR', 'SMKN 2 PASURUAN ', '07 December 2024,14:45', 'fileplc/SR_SMKN2 PASURUAN_PLC.rar'),
(44, 'zavichghani@gmail.com', 'TEI SKARIDA 4', 'M Irwansyah ', 'SMK KRIAN 2 ', '07 December 2024,14:47', 'fileplc/TEI SKARIDA 4_SMK KRIAN 2_PLC.rar'),
(45, 'rd163277@gmail.com', 'BANTEX TEAM', 'AZZUKHRUF SYAHRUR RAMADHANI', 'SMKN 1 CERME GRESIK', '07 December 2024,14:47', 'fileplc/BANTEX TEAM_SMKN 1 CERME GRESIK_PLC.rar'),
(46, 'divaaulia1029@gmail.com', 'in omnia paratus', 'Vanissya Diva', 'SMKN 1 SINGOSARI ', '07 December 2024,14:47', 'fileplc/IN_OMNIA_PARATUS-SMKN1SINGOSARI-PLC.rar'),
(47, 'raffirabbani20@gmail.com', 'Mechaminds', 'Muhammad Rafi Rabbani', 'SMKN 3 JOMBANG', '07 December 2024,14:48', 'fileplc/MECHAMINDS_SMKN3JOMBANG_PLC.zip'),
(48, 'khoiruddinfirman@gmail.com', 'DUTA OTOMASI 1', 'KHOIRUDDIN FIRMAN EFENDI', 'SMKN 2 TULUNGAGUNG', '07 December 2024,14:49', 'fileplc/DUTAOTOMASI1_SMKN2TULUNGAGUNG_PLC.zip'),
(49, 'arifrebuild@gmail.com', 'aku blutut', 'Akhmad Arif Saifuddin', 'SMKN 3 Surabaya', '07 December 2024,14:51', 'fileplc/AKUBLUTUT_SMKN3SURABYA_PLC.rar'),
(50, 'muh.candra.mln@gmail.com', 'Hoshi', 'Muh. Candra Maulana', 'SMK Muhammadiyah 1 Gresik', '07 December 2024,14:52', 'fileplc/HOSHI_SMK Muhammadiyah 1 Gresik_PLC.zip'),
(51, 'llintang632@gmail.com', 'TIM ELENG', 'Lintang Dwi Prokoso', 'SMK PGRI 1 GRESIK', '07 December 2024,14:53', 'fileplc/TIM ELENG_SMK PGRI 1 Gresik_PLC.zip'),
(52, 'aartanda@gmail.com', 'Electrical Gandini', 'Abzari Azzam Al Qoyyiimuddin', 'SMKN 1 Jenangan Ponorogo', '07 December 2024,14:56', 'fileplc/Electrical Gandini_SMK 1 JENANGAN_PLC.zip'),
(53, 'anggerprayog12@gmail.com', 'SMEKDA 4', 'Muhammad Angger Prayogo', 'SMKN 2 SURABAYA', '07 December 2024,14:57', 'fileplc/SMEKDA 4_ SMKN 2_PLC.zip'),
(54, 'hafizhdaniswara5@gmail.com', 'DaPizz', 'Mochamad Hafizh Daniswara', 'SMKN 1 JETIS', '07 December 2024,14:57', 'fileplc/DAPIZZ_SMKN1JETIS_PLC.zip'),
(55, 'kusumavandy11@gmail.com', 'Industrial Otomation', 'Muhammad Ricky Setiawan', 'SMK N 1 Jenangan', '07 December 2024,14:59', 'fileplc/Industrial Otomation_SMK N 1 Jenangan_PLC.zip'),
(56, 'farelmarreto@gmail.com', 'semen controller 1', 'Muhammad farel mauludi', 'smk semen gresik', '07 December 2024,15:02', 'fileplc/SEMEN CONTROLLEER 1_SMK SEMEN GRESIK_PLC.zip'),
(57, 'zakymaul4116@gmail.com', 'N1CE', 'Zaky', 'SMK negeri 1 cerme ', '07 December 2024,15:03', 'fileplc/N1CE_SMKN1CERME_PLC.zip'),
(58, 'naufalabdullah711@gmail.com', 'Kirchoff', 'Muhammad Naufal Abdullah', 'SMK PGRI 1 GRESIK', '07 December 2024,15:03', 'fileplc/KIRCHOFF_SMK PGRI 1 GRESIK_PLC.rar'),
(59, 'abifirnanda02@gmail.com', 'HYTAM', 'dani setiawan', 'SMKN 3 JOMBANG', '07 December 2024,15:04', 'fileplc/HYTAM_SMKN3JBG_PLC.zip'),
(60, 'mrijalfiaunillah@gmail.com', 'KAMEN RIDER', 'M. RIJAL FI AUNILLAH ', 'SMK TEKNIK PAL SURABAYA ', '07 December 2024,15:04', 'fileplc/KAMEN RIDER_SMKTEKNIKPALSBY_PLC.rar'),
(61, 'zaqkyzy@gmail.com', 'Autocraft ', 'Zaqky Zakaria ', 'SMKN 3 JOMBANG ', '07 December 2024,15:05', 'fileplc/AUTOCRAFT_SMKN3JBG_PLC.zip'),
(62, 'wiwikh792@gmail.com', 'SCHOTTKY TEAM', 'RAIHAN DAFFA SUBAHTIAR', 'SMK TEKNIK PAL SURABAYA', '07 December 2024,15:07', 'fileplc/SCHOTTKYTEAM_SMKTEKNIKPAL_PLC.zip'),
(63, 'fendimaulana1827@gmail.com', 'Kingdom', 'Rafka Aji Alfarizi', 'SMK Muhammadiyah 1 Gresik', '07 December 2024,15:07', 'fileplc/Kingdom_smkMuhammadiyah1Gresik_PLC.rar');

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
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `tb_bukti`
--
ALTER TABLE `tb_bukti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

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
  MODIFY `id_plc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

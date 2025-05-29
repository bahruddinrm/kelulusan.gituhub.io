-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 07:21 PM
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
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'mamasteng', 'mamasteng', 'Bahruddin Rifqi Maulana');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(5) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `kelas` varchar(4) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `asal_sekolah` varchar(25) NOT NULL DEFAULT 'SMP Negeri 1 Pekalongan',
  `status_dinyatakan` varchar(11) NOT NULL DEFAULT 'LULUS',
  `berkas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nisn`, `nis`, `nama_lengkap`, `kelas`, `tempat_lahir`, `tanggal_lahir`, `asal_sekolah`, `status_dinyatakan`, `berkas`) VALUES
('0069641034', '16077', 'Muhammad Tsabitul \'Azmi', 'IX E', 'Pekalongan', ' 06 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0069641034'),
('0082310227', '16148', 'RISMA YUNITA SARI', 'IX F', 'Pekalongan', ' 07 Juni 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0082310227'),
('0082464433', '16147', 'Riski Nur Fitriyani', 'IX E', 'Pekalongan', ' 03 Oktober 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0082464433'),
('0084494914', '16021', 'Surya Hadi Saputra', 'IX C', 'Pekalongan', ' 22 Maret 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0084494914'),
('0086992436', '16035', 'GALANG ARDI SETIAWAN', 'IX B', 'PEKALONGAN', ' 26 Desember 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0086992436'),
('0088779547', '16027', 'Alfia Putri Oktaviani', 'IX A', 'Pekalongan', ' 31 Oktober 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0088779547'),
('0089886822', '16127', 'ARI ADIANGGA', 'IX D', 'PEKALONGAN', ' 14 Juli 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '0089886822'),
('0091215026', '16152', 'ZAIRULLAH AZHAR', 'IX B', 'PEKOLANGAN', ' 16 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0091215026'),
('0091414054', '15968', 'DHARMA ALI', 'IX F', 'Jakarta Timur', ' 24 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0091414054'),
('0091794564', '15978', 'Muhammad Alif Ramadhan', 'IX B', 'Pekalongan', ' 05 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0091794564'),
('0092196217', '16041', 'Muhammad Alwi Yafi', 'IX E', 'Pekalongan', ' 16 Juli 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0092196217'),
('0092300747', '16047', 'NANA AFIYANA', 'IX A', 'PEKALONGAN', ' 01 Mei 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0092300747'),
('0092404277', '15974', 'MADINA KARIMA', 'IX C', 'Solo', ' 20 Januari 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0092404277'),
('0092812315', '16069', 'KIRANA JIHAN AULIA', 'IX D', 'PEKALONGAN', ' 10 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0092812315'),
('0092818756', '16107', 'MOCHAMMAD DWI FACHRIZKY', 'IX F', 'PEKALONGAN', ' 20 Agustus 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0092818756'),
('0093074503', '16140', 'Marcelia Eka Putri', 'IX E', 'Pekalongan', ' 16 Maret 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093074503'),
('0093222212', '16014', 'NESSHINSA VASTHI AZIRA', 'IX D', 'Batang', ' 20 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093222212'),
('0093298907', '16103', 'LUTFIYAH ROSADAH', 'IX C', 'Pekalongan', ' 29 Maret 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093298907'),
('0093371961', '16005', 'M. FAJRIL AULIA', 'IX F', 'PEKALONGAN', ' 04 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093371961'),
('0093534552', '16045', 'MUTIA SHAFHA ELISTISLAH', 'IX F', 'Pekalongan', ' 03 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093534552'),
('0093567319', '16054', 'WAHYU ADI SAPUTRA', 'IX B', 'BREBES', ' 11 April 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093567319'),
('0093626656', '16023', 'WISNU RIZKI YOANANTA', 'IX C', 'PEKALONGAN', ' 05 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093626656'),
('0093770293', '15972', 'IBBAS RAMADHAN', 'IX B', 'PEKALONGAN', ' 19 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093770293'),
('0093777378', '15964', 'ATIYA LAILA RAMADHANI', 'IX E', 'PEKALONGAN', ' 25 Agustus 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093777378'),
('0093821006', '16060', 'AIRA FITROTUNISA', 'IX B', 'Pekalongan', ' 05 Juli 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093821006'),
('0093845712', '16098', 'DINNARA AULIA ARSYAD', 'IX C', 'PEKALONGAN', ' 22 Mei 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0093845712'),
('0094072226', '16065', 'Intan Rahmania Ramadhani', 'IX E', 'Banjarnegara', ' 30 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094072226'),
('0094343751', '16137', 'Jessika Nova Anastasiah', 'IX F', 'Pekalongan', ' 21 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094343751'),
('0094625916', '16092', 'ALYA RODHOTUL HANA', 'IX F', 'Pekalongan', ' 24 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094625916'),
('0094793717', '16006', 'MARVEL AFRIZA PUTRA', 'IX C', 'PEKALONGAN', ' 13 Maret 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094793717'),
('0094808151', '16122', 'AJENG PUSPA MAHDINDA', 'IX C', 'Pekalongan', ' 12 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094808151'),
('0094863299', '16056', 'Zilda Syafitri', 'IX A', 'Pekalongan', ' 04 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094863299'),
('0094896361', '15982', 'NABILA MINA SOFA', 'IX D', 'Pekalongan', ' 25 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0094896361'),
('0095371074', '15977', 'Muhamad Achyat Santoso', 'IX F', 'Pekalongan', ' 02 Juli 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0095371074'),
('0095636977', '16125', 'APRILIA TRISELSI CHAIRUNISA', 'IX A', 'PEKALONGAN', ' 29 April 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0095636977'),
('0095768887', '15961', 'ADINDA AURELLIA', 'IX C', 'Pekalongan', ' 02 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0095768887'),
('0095803583', '16149', 'SABILA DEFA AZAHRA', 'IX F', 'PEKALONGAN', ' 09 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0095803583'),
('0096085492', '16019', 'Safa Oktaviani', 'IX D', 'Pekalongan', ' 31 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0096085492'),
('0096347901', '16076', 'Muhammad Raka Aditya Yulianto', 'IX B', 'Pekalongan', ' 09 Juli 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0096347901'),
('0096530848', '16155', 'SALWAA NURIL KHUSNA', 'IX E', 'Pekalongan', ' 11 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0096530848'),
('0096545784', '16086', 'UMAR MUHAMMAD', 'IX D', 'PEKALONGAN', ' 30 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0096545784'),
('0096667812', '16000', 'FARISKA AUREL APRILIA', 'IX A', 'PEKALONGAN', ' 11 April 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0096667812'),
('0097191038', '16003', 'KAISA AULIA NUHLA', 'IX F', 'PEKALONGAN', ' 09 Juni 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097191038'),
('0097229500', '16030', 'Aura Dwi Setyawan', 'IX F', 'Pekalongan', ' 03 Juni 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097229500'),
('0097263992', '16110', 'Muhammad Farrel Rikhadatul Aisy', 'IX B', 'Pekalongan', ' 29 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097263992'),
('0097412437', '15979', 'MUHAMMAD ASYROF AL CHANIF', 'IX D', 'PEKALONGAN', ' 14 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097412437'),
('0097422119', '16055', 'ZALWA ZANUBA', 'IX B', 'Pekalongan', ' 14 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097422119'),
('0097679986', '16120', 'VIVIAN SAKHIADEWI LESTARI', 'IX E', 'SEMARANG', ' 07 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097679986'),
('0097787610', '16071', 'Marhendra Putra', 'IX F', 'Pekalongan', ' 17 Maret 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097787610'),
('0097932157', '15984', 'NEVAN MAHARDIKA PRATAMA', 'IX C', 'PEKALONGAN', ' 09 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0097932157'),
('0098062395', '16026', 'Adhilla Novan Pratama', 'IX E', 'Pekalongan', ' 23 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0098062395'),
('0098068101', '15966', 'Benita Azzahra', 'IX C', 'Kendal', ' 27 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0098068101'),
('0098812367', '16090', 'ALDIKA PUTRA AKBAR', 'IX E', 'Pekalongan', ' 14 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0098812367'),
('0098945052', '16138', 'Lisfian Syahputra', 'IX E', 'Pekalongan', ' 19 Juni 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0098945052'),
('0099223752', '16082', 'RIFKY ADE DARMAWAN', 'IX F', 'PEKALONGAN', ' 07 Juni 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099223752'),
('0099315567', '15993', 'ALFIRNA CAHYA DEWI', 'IX A', 'PEKALONGAN', ' 05 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099315567'),
('0099346731', '16087', 'VANNESA AMALIA YASMIN', 'IX D', 'PEKALONGAN', ' 28 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099346731'),
('0099356041', '16050', 'Rizqy Nuzul Nasrulloh', 'IX D', 'Pekalongan', ' 08 September 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099356041'),
('0099492909', '16017', 'Rafa Atmaja Priyatama', 'IX F', 'Pekalongan', ' 10 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099492909'),
('0099498560', '16123', 'Almiranes', 'IX E', 'Pekalongan', ' 16 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099498560'),
('0099501678', '15985', 'RADITYA ATHA KURNIAWAN', 'IX D', 'BATANG', ' 16 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099501678'),
('0099689171', '16151', 'WISNU BINTANG ARDIANSAH', 'IX A', 'Pekalongan', ' 22 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099689171'),
('0099701603', '16117', 'RICHARD TAN RUDYYANTO', 'IX C', 'PEKALONGAN', ' 11 November 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '0099701603'),
('0101046372', '15995', 'Arinayla Aunurahma', 'IX B', 'Pekalongan', ' 22 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101046372'),
('0101134292', '16046', 'NAILA NISA IKRIMAH', 'IX E', 'Pekalongan', ' 03 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101134292'),
('0101265345', '15989', 'TASYA VERISKA', 'IX B', 'Pekalongan', ' 12 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101265345'),
('0101387263', '16067', 'KAKA HUTAMA PUTRA', 'IX E', 'PEKALONGAN', ' 29 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101387263'),
('0101433399', '15980', 'MUHAMMAD DAFFA DHIYAUL HAQ', 'IX D', 'PEKALONGAN', ' 27 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101433399'),
('0101571424', '15994', 'ARDHITA DINDA PRASETYA', 'IX D', 'Pekalongan', ' 28 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101571424'),
('0101659896', '16051', 'SEPTIAN DWI RAHARJO', 'IX D', 'Pekalongan', ' 10 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101659896'),
('0101700084', '15973', 'Keyla Safa Putri Sunarya', 'IX B', 'Pekalongan', ' 02 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101700084'),
('0101904378', '16068', 'KHEISYA WIDHIASTARI', 'IX B', 'PEKALONGAN', ' 08 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101904378'),
('0101952669', '16004', 'KHANA NADIRA', 'IX B', 'PEKALONGAN', ' 12 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101952669'),
('0101964653', '16044', 'MUHAMMAD RAFA PRADITYA', 'IX B', 'Pekalongan', ' 12 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101964653'),
('0101998970', '16037', 'M. HELMI KURNIAWAN', 'IX A', 'PEKALONGAN', ' 14 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0101998970'),
('0102003067', '15991', 'VIANDRA ALDIRA RAMDANI', 'IX A', 'PEKALONGAN', ' 02 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102003067'),
('0102009037', '15969', 'DIAN KAMILAH', 'IX D', 'PEKALONGAN', ' 24 Oktober 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102009037'),
('0102224519', '16093', 'ANGGITA IMANDINI', 'IX A', 'Pekalongan', ' 16 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102224519'),
('0102238280', '16111', 'Nailul Husna', 'IX F', 'Pekalongan', ' 10 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102238280'),
('0102269326', '15986', 'RAFAEL FAZLE MAWLA P.', 'IX D', 'Pekalongan', ' 17 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102269326'),
('0102327422', '16059', 'AGISHA CITRA VANIA', 'IX D', 'PEKALONGAN', ' 19 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102327422'),
('0102335487', '16015', 'NEVA MULIA INSANI', 'IX F', 'PEKALONGAN', ' 08 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102335487'),
('0102359788', '16153', 'Rafa Raditya', 'IX C', 'pekalongan', ' 01 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102359788'),
('0102482252', '16049', 'Pratities', 'IX C', 'Pekalongan', ' 05 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102482252'),
('0102633807', '16085', 'Tri Martina Artanti', 'IX E', 'Bandung', ' 04 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102633807'),
('0102658155', '15967', 'CALLISTA ZWEETA FEBRIANI', 'IX B', 'PEKALONGAN', ' 08 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102658155'),
('0102666678', '16002', 'Jericho Amelius Raharjo', 'IX A', 'Pekalongan', ' 15 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102666678'),
('0102718405', '16052', 'Syafiq Haidar Alfarizi', 'IX B', 'Pekalongan', ' 28 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102718405'),
('0102948946', '16128', 'AURA', 'IX E', 'PEKALONGAN', ' 24 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0102948946'),
('0103182669', '16018', 'RISQI DAVA MAULANA PUTRA', 'IX C', 'Pekalongan', ' 10 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103182669'),
('0103227517', '16121', 'Ahmad Habiby', 'IX D', 'Pekalongan', ' 01 Desember 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103227517'),
('0103438456', '15983', 'NASYWA KIRANA AZZAHRA', 'IX F', 'PEKALONGAN', ' 10 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103438456'),
('0103480535', '16084', 'Sulthan Zahran Dharmawan', 'IX C', 'Pekalongan', ' 03 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103480535'),
('0103557481', '16053', 'SYAFIRA CHIKA ANGGREINA', 'IX A', 'PEKALONGAN', ' 01 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103557481'),
('0103575856', '16036', 'Ganes Velda Nafiisah', 'IX C', 'Pekalongan', ' 31 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103575856'),
('0103582848', '15999', 'Ellena Setiyani', 'IX B', 'Pekalongan', ' 12 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103582848'),
('0103661775', '16109', 'MUHAMMAD DAFFA', 'IX E', 'Pekalongan', ' 27 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103661775'),
('0103726667', '15971', 'GHATHFAN MULYA TRI SAPUTRA', 'IX D', 'PEKALONGAN', ' 23 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103726667'),
('0103747186', '16359', 'M. AZRIL RAMADHANI', 'IX D', 'Pekalongan', ' 04 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103747186'),
('0103761305', '16040', 'Muhamad Harsa Muhtama', 'IX F', 'Pekalongan', ' 10 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103761305'),
('0103809990', '16094', 'AVYEA KHAIRA FITRANI', 'IX B', 'PEKALONGAN', ' 16 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103809990'),
('0103839464', '16102', 'KHUSNUL KHOTIMAH', 'IX B', 'PEKALONGAN', ' 04 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103839464'),
('0103862910', '16048', 'NATHANIA DWI RAHMADANI', 'IX D', 'Kab Semarang', ' 11 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103862910'),
('0103928422', '16008', 'Muhammad Fathir Al-Hidan', 'IX A', 'Pekalongan', ' 05 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0103928422'),
('0104031100', '16108', 'Muhamad Ardhiyansah', 'IX D', 'Pekalongan', ' 20 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104031100'),
('0104032051', '16097', 'DHIMAS ARYA ADHITAMA', 'IX A', 'PEKALONGAN', ' 18 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104032051'),
('0104060886', '15976', 'Mely Febriana', 'IX F', 'Pekalongan', ' 28 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104060886'),
('0104080574', '16029', 'ATHAYA NASWA AYONA', 'IX A', 'PEKALONGAN', ' 11 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104080574'),
('0104083863', '15996', 'ATHAFUNISA RAMADHANI', 'IX F', 'PEKALONGAN', ' 02 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104083863'),
('0104218001', '16106', 'Meliana Putri', 'IX C', 'Pekalongan', ' 03 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104218001'),
('0104308896', '16033', 'Camelia Risqina', 'IX F', 'Pekalongan', ' 06 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104308896'),
('0104389017', '16020', 'SRI BULAN ZULFANINDYA AULIA PASHA', 'IX D', 'Pekalongan', ' 16 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104389017'),
('0104399372', '16135', 'INNAA FIL JANNATI', 'IX C', 'Pekalongan', ' 30 Oktober 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104399372'),
('0104518149', '16063', 'Fernando Joshua Susanto', 'IX A', 'Surabaya', ' 16 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104518149'),
('0104585061', '16058', 'ADINDA PUTRI SALSABILA', 'IX A', 'PEKALONGAN', ' 03 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104585061'),
('0104692668', '16130', 'DINDA AYU AZARINE', 'IX C', 'PEKALONGAN', ' 26 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104692668'),
('0104765498', '16095', 'AZAHRA DWI FEBI ROHMAYANI', 'IX D', 'PEKALONGAN', ' 05 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104765498'),
('0104969968', '15998', 'DZULVIANI RIZKI IKRAAMI', 'IX F', 'PEKALONGAN', ' 23 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0104969968'),
('0105011154', '16081', 'Nazila Karima', 'IX A', 'Pekalongan', ' 16 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105011154'),
('0105184612', '15970', 'Dimas Ariq Alfaro', 'IX D', 'Pekalongan', ' 19 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105184612'),
('0105227089', '16089', 'Achmad Daris I\'Tisham', 'IX C', 'Pekalongan', ' 21 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105227089'),
('0105235822', '16143', 'MUHAMMAD ADITYA APRILYONO', 'IX A', 'Pekalongan', ' 17 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105235822'),
('0105394119', '16010', 'MUHAMMAD MUQARRABIN', 'IX F', 'PEKALONGAN', ' 14 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105394119'),
('0105421043', '16009', 'MUHAMMAD HAFIDZ ALFIAN', 'IX A', 'Pekalongan', ' 14 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105421043'),
('0105541895', '15975', 'MELO AL FATAH', 'IX D', 'PEKALONGAN', ' 05 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105541895'),
('0105600712', '15987', 'Rangga Bagus Satria', 'IX E', 'Pekalongan', ' 06 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105600712'),
('0105763148', '16007', 'MAZIDA RISKI', 'IX B', 'Pekalongan', ' 11 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105763148'),
('0105862274', '15988', 'SHEVINDRA AQEELA JASMINE', 'IX E', 'GROBOGAN', ' 07 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0105862274'),
('0106113987', '16113', 'NURUL IZZATI', 'IX D', 'PEKALONGAN', ' 11 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106113987'),
('0106125763', '16142', 'Michael Putra Wahyudi', 'IX F', 'Pekalongan', ' 04 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106125763'),
('0106259274', '16144', 'MUKHAMMAD IRSYAD', 'IX E', 'Pekalongan', ' 07 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106259274'),
('0106437490', '16118', 'RIFA HARYANI', 'IX E', 'PEKALONGAN', ' 05 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106437490'),
('0106814921', '16146', 'RAMADHITYA HIMAWAN N', 'IX C', 'Pekalongan', ' 04 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106814921'),
('0106874933', '15965', 'AUFA NAYSILA', 'IX C', 'Pekalongan', ' 20 Oktober 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106874933'),
('0106890054', '15997', 'Aurelia Carrisa Putri', 'IX E', 'Pekalongan', ' 15 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0106890054'),
('0107055569', '16145', 'OLIVIA MELINDA', 'IX B', 'Pekalongan', ' 05 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107055569'),
('0107120148', '16139', 'M. AMPRI ROSYADA', 'IX C', 'Pekalongan', ' 08 Februari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107120148'),
('0107280680', '16115', 'Putri Azzahra', 'IX A', 'Pekalongan', ' 19 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107280680'),
('0107462193', '15992', 'ZULFINA SAVILLAIYKA DARIS', 'IX A', 'PEKALONGAN', ' 22 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107462193'),
('0107627895', '16100', 'Geisya Adelia', 'IX C', 'Pekalongan', ' 22 Oktober 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107627895'),
('0107714953', '16025', 'ACHMAD FITRIAN ARDIAN SYAH', 'IX B', 'PEKALONGAN', ' 12 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107714953'),
('0107848718', '16078', 'Nadhifa Alifatunnisa', 'IX B', 'Pekalongan', ' 28 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107848718'),
('0107888922', '16075', 'MUHAMMAD HAFIZ MUZAKKI', 'IX B', 'PEKALONGAN', ' 10 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107888922'),
('0107964322', '16114', 'Putra Messi Nugroho', 'IX F', 'Pekalongan', ' 10 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0107964322'),
('0108265648', '16105', 'M. RIZQI MAULANA', 'IX A', 'Pekalongan', ' 22 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108265648'),
('0108400531', '16104', 'M. HILMI AUFAA', 'IX E', 'Pekalongan', ' 06 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108400531'),
('0108462840', '16091', 'ALFI MAFAZA', 'IX E', 'PEKALONGAN', ' 04 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108462840'),
('0108494179', '16099', 'Fadhil Afif Prayitno', 'IX C', 'Pekalongan', ' 13 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108494179'),
('0108537559', '16070', 'Luglu\'ul Magshumah', 'IX C', 'Pekalongan', ' 08 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108537559'),
('0108938375', '16079', 'Natacha Kamila Le Fur', 'IX B', 'Balikpapan', ' 30 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108938375'),
('0108975248', '15963', 'Aszhara Karlina', 'IX B', 'Pekalongan', ' 16 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0108975248'),
('0109270813', '16013', 'NAURA FARAS TSABITAH', 'IX A', 'PEKALONGAN', ' 25 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109270813'),
('0109275289', '16150', 'SITI KOMARIYAH', 'IX A', 'PEKALONGAN', ' 17 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109275289'),
('0109516526', '16042', 'MUHAMMAD ENREI EIKO SAN ANDANO', 'IX A', 'PEKALONGAN', ' 26 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109516526'),
('0109610099', '16096', 'DEWI FATHATI', 'IX E', 'PEKALONGAN', ' 11 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109610099'),
('0109739534', '16134', 'Ghina Annisa Sakhi', 'IX F', 'Pekalongan', ' 04 Mei 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109739534'),
('0109795031', '16112', 'Naufal Rafid Ilyasa', 'IX C', 'Pekalongan', ' 10 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109795031'),
('0109843977', '16064', 'Hana liviana', 'IX D', 'Pekalongan', ' 11 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109843977'),
('0109920517', '15962', 'AKBAR NOVAL PRAKASA PUTRA', 'IX B', 'Pekalongan', ' 16 November 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109920517'),
('0109958223', '16039', 'Marsa Lujain', 'IX E', 'Pekalongan', ' 08 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109958223'),
('0109993981', '15981', 'MUHAMMAD FATUR REZA', 'IX F', 'PEKALONGAN', ' 29 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '0109993981'),
('0117088609', '16028', 'AQILA MARCHA NAURA', 'IX A', 'Pekalongan', ' 14 Maret 2011', 'SMP Negeri 1 Pekalongan', 'LULUS', '0117088609'),
('3084492151', '16136', 'INTAN PUTRI MAHARTANTI', 'IX A', 'Pekalongan', ' 09 Desember 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '3084492151'),
('3087862731', '16132', 'FADHILLAH ROSADZA', 'IX C', 'Pekalongan', ' 29 Mei 2008', 'SMP Negeri 1 Pekalongan', 'LULUS', '3087862731'),
('3091995443', '16012', 'MUHAMMAD VEMAS RAMADHANI', 'IX E', 'Pekalongan', ' 27 Agustus 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '3091995443'),
('3092274428', '16024', 'ZA\'IMATUZ ZULFA', 'IX C', 'Pekalongan', ' 10 Desember 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '3092274428'),
('3097050293', '16062', 'DISTYANDA ZAHRA AZZATI', 'IX A', 'Pekalongan', ' 16 Oktober 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '3097050293'),
('3099712641', '16124', 'ANANDA PANJI SAMUDRA', 'IX A', 'Pekalongan', ' 10 April 2009', 'SMP Negeri 1 Pekalongan', 'LULUS', '3099712641'),
('3100234085', '16038', 'M. SUBHAN', 'IX B', 'Pekalongan', ' 09 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3100234085'),
('3100733767', '16080', 'NAUFAL AZMI FADHIL', 'IX A', 'Pontianak', ' 22 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3100733767'),
('3101595932', '15990', 'TSABHITA PUTRI ALMIRA', 'IX E', 'Pekalongan', ' 01 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3101595932'),
('3102603372', '16119', 'Sayf Askaril Akbar', 'IX A', 'Pekalongan', ' 13 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3102603372'),
('3104158855', '16001', 'FINA MAHALIL ASNA', 'IX D', 'Pekalongan', ' 23 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3104158855'),
('3106156008', '16072', 'MOHAMMAD YUSQI', 'IX C', 'Pekalongan', ' 24 Januari 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3106156008'),
('3106207467', '16074', 'MUHAMMAD DIMAS PUTRA RAMADHANI', 'IX E', 'PEKALONGAN', ' 06 September 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3106207467'),
('3107204475', '16116', 'RANU SHOIFUL IMAN', 'IX E', 'Pekalongan', ' 07 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3107204475'),
('3107505716', '16057', 'ABBIYU AMAR ISMAIL', 'IX F', 'Pekalongan', ' 07 Juni 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3107505716'),
('3108516981', '16066', 'JAFAR UMAR TALIB', 'IX F', 'Pekalongan', ' 17 Oktober 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3108516981'),
('3108732917', '16022', 'UMAR SHAFIYYUR RAHMAN', 'IX B', 'Pekalongan', ' 14 April 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3108732917'),
('3109149262', '16141', 'Mezhi Ayu Pramita', 'IX D', 'Pekalongan', ' 04 Juli 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3109149262'),
('3109347334', '16034', 'DEWI AULIA INDAH', 'IX D', 'Pekalongan', ' 08 Agustus 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3109347334'),
('3109637923', '16129', 'BAYU SEGORO', 'IX F', 'Pekalongan', ' 16 Maret 2010', 'SMP Negeri 1 Pekalongan', 'LULUS', '3109637923');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nisn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

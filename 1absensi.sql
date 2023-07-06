-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 09.11
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `employee_id` int(8) NOT NULL,
  `tgl` varchar(255) DEFAULT NULL,
  `clock_in` varchar(255) DEFAULT NULL,
  `clock_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `tgl`, `clock_in`, `clock_out`) VALUES
(1, 101, '2023-01-15', '14:56:29', NULL),
(2, 101, '2023-01-16', '14:57:14', NULL),
(35, 101, '2023-01-17', '17:59:26', '19:53:18'),
(36, 102, '2023-01-17', '19:54:42', '19:54:47'),
(37, 105, '2023-01-18', '21:01:46', NULL),
(38, 106, '2023-01-20', '17:52:43', NULL),
(39, 102, '2023-01-22', '14:36:41', '14:36:45'),
(40, 104, '2023-01-22', '15:10:12', '15:13:29'),
(41, 105, '2023-01-22', '15:15:53', '15:15:57'),
(42, 101, '2023-06-26', '13:24:44', '13:24:49'),
(43, 102, '2023-06-26', '13:26:23', '13:26:26'),
(44, 104, '2023-06-26', '13:44:21', '13:44:24'),
(45, 105, '2023-06-26', '14:12:16', '14:12:19'),
(46, 102, '2023-06-27', '08:03:08', '08:03:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kode_buku` varchar(25) NOT NULL,
  `nama_buku` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  `ekstensi` varchar(25) NOT NULL,
  `berkas` varchar(2000) NOT NULL,
  `tgl_file` date NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`kode_buku`, `nama_buku`, `title`, `size`, `ekstensi`, `berkas`, `tgl_file`, `jenis`) VALUES
('01', 'Keputusan Direktur RSPR', 'Keputusan Direktur RSUD Pasar Rebo.pdf', 302135, 'pdf', 'file/Keputusan Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Keputusan Direktur RSUD Pasar Rebo'),
('012', 'Keputusan Direktur RSPR 2', 'Keputusan Direktur RSUD Pasar Rebo.pdf', 302135, 'pdf', 'file/Keputusan Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Keputusan Direktur RSUD Pasar Rebo'),
('013', 'Keputusan Direktur RSPR 3', 'Keputusan Direktur RSUD Pasar Rebo.pdf', 302135, 'pdf', 'file/Keputusan Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Keputusan Direktur RSUD Pasar Rebo'),
('014', 'Keputusan Direktur RSPS', 'Keputusan Direktur RSUD Pasar Rebo.pdf', 302135, 'pdf', 'file/Keputusan Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Keputusan Direktur RSUD Pasar Rebo'),
('02', 'Surat Edaran Direktur RSPR', 'Surat Edaran Direktur RSUD Pasar Rebo.pdf', 1424409, 'pdf', 'file/Surat Edaran Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Surat Edaran Direktur RSUD Pasar Rebo'),
('022', 'Surat Direktur RSPR 2', 'Surat Edaran Direktur RSUD Pasar Rebo.pdf', 1424409, 'pdf', 'file/Surat Edaran Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Surat Edaran Direktur RSUD Pasar Rebo'),
('023', 'Surat Edaran Direktur RSPR 3', 'Surat Edaran Direktur RSUD Pasar Rebo.pdf', 1424409, 'pdf', 'file/Surat Edaran Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Surat Edaran Direktur RSUD Pasar Rebo'),
('024', 'Surat Edaran Direktur RSPR 4', 'Surat Edaran Direktur RSUD Pasar Rebo.pdf', 1424409, 'pdf', 'file/Surat Edaran Direktur RSUD Pasar Rebo.pdf', '2023-07-03', 'Surat Edaran Direktur RSUD Pasar Rebo'),
('091', 'Keputusan Gubernur 1', 'Contoh Keputusan Gubernur.pdf', 451866, 'pdf', 'file/Contoh Keputusan Gubernur.pdf', '2023-07-03', 'Keputusan Gubernur'),
('092', 'Pergub', 'Peraturan Gubernur.pdf', 397217, 'pdf', 'file/Peraturan Gubernur.pdf', '2023-07-03', 'Peraturan Gubernur'),
('093', 'Contoh Keputusan Menteri', 'Keputusan Menteri.pdf', 1293867, 'pdf', 'file/Keputusan Menteri.pdf', '2023-07-03', 'Keputusan Menteri'),
('111', 'SK Direktur 1', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-13', 'SK Direktur'),
('112', 'SK Direktur 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-26', 'SK Direktur'),
('113', 'SK Direktur 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-12', 'SK Direktur'),
('114', 'SK Direktur 4', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-26', 'SK Direktur'),
('115', 'SK Direktur 5', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-26', 'SK Direktur'),
('116', 'SK Direktur 6', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-16', 'SK Direktur'),
('117', 'SK Direktur 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-17', 'SK Direktur'),
('118', 'SK Direktur 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'SK Direktur'),
('119', 'SK Direktur 9', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-24', 'SK Direktur'),
('12', 'SK Direktur 2012', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2012-01-01', 'SK Direktur'),
('13', 'SK Direktur 2013', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2013-01-01', 'SK Direktur'),
('14', 'SK Direktur 2014', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2014-01-01', 'SK Direktur'),
('15', 'SK Direktur 2015', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2015-01-01', 'SK Direktur'),
('16', 'SK Direktur 2016', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2016-01-01', 'SK Direktur'),
('17', 'SK Direktur 2017', '501-862-1-SM.pdf', 1683613, 'pdf', 'file/501-862-1-SM.pdf', '2017-01-01', 'SK Direktur'),
('18', 'SK Direktur 2018', '(1) Pendahuluan.pdf', 1137037, 'pdf', 'file/(1) Pendahuluan.pdf', '2018-01-01', 'SK Direktur'),
('19', 'SK Direktur 2019', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2019-01-01', 'SK Direktur'),
('21', 'Peraturan Gubernur 1', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-03', 'Peraturan Gubernur'),
('22', 'Peraturan Gubernur 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-13', 'Peraturan Gubernur'),
('23', 'Peraturan Gubernur 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-14', 'Peraturan Gubernur'),
('24', 'Peraturan Gubernur 4', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-15', 'Peraturan Gubernur'),
('25', 'Peraturan Gubernur 5', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Gubernur'),
('26', 'Peraturan Gubernur 6', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Gubernur'),
('27', 'Peraturan Gubernur 7', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Gubernur'),
('28', 'Peraturan Gubernur 8', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-24', 'Peraturan Gubernur'),
('29', 'Peraturan Gubernur 9', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Gubernur'),
('290', 'Peraturan Gubernur 10', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Gubernur'),
('30', 'Peraturan DPRD', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-13', 'Peraturan DPRD'),
('31', 'Peraturan DPRD 1', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-20', 'Peraturan DPRD'),
('32', 'Peraturan DPRD 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-21', 'Peraturan DPRD'),
('33', 'Peraturan DPRD 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-20', 'Peraturan DPRD'),
('34', 'Peraturan DPRD 4', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-26', 'Peraturan DPRD'),
('35', 'Peraturan DPRD 5', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-22', 'Peraturan DPRD'),
('36', 'Peraturan DPRD 6', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan DPRD'),
('37', 'Peraturan DPRD 7', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-03', 'Peraturan DPRD'),
('38', 'Peraturan DPRD 8', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-27', 'Peraturan DPRD'),
('39', 'Peraturan DPRD 9', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-20', 'Peraturan DPRD'),
('41', 'Peraturan Daerah 1', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Peraturan Daerah'),
('42', 'Peraturan Daerah 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-06', 'Peraturan Daerah'),
('43', 'Peraturan Daerah 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-03', 'Peraturan Daerah'),
('44', 'Peraturan Daerah 4', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-04', 'Peraturan Daerah'),
('45', 'Peraturan Daerah 5', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-05', 'Peraturan Daerah'),
('46', 'Peraturan Daerah 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Peraturan Daerah'),
('47', 'Peraturan Daerah 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Peraturan Daerah'),
('48', 'Peraturan Daerah 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Peraturan Daerah'),
('49', 'Peraturan Daerah 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Peraturan Daerah'),
('51', 'Keputusan Menteri 1', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Keputusan Menteri'),
('52', 'Keputusan Menteri 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-11', 'Keputusan Menteri'),
('53', 'Keputusan Menteri 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-03', 'Keputusan Menteri'),
('54', 'Keputusan Menteri 4', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-06', 'Keputusan Menteri'),
('55', 'Keputusan Menteri 5', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-06', 'Keputusan Menteri'),
('56', 'Keputusan Menteri 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Keputusan Menteri'),
('57', 'Keputusan Menteri 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Keputusan Menteri'),
('58', 'Keputusan Menteri 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Menteri'),
('59', 'Keputusan Menteri 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Menteri'),
('61', 'Keputusan Gubernur', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-06', 'Keputusan Gubernur'),
('610', 'Contoh Keputusan Gubernur', 'Contoh Keputusan Gubernur.pdf', 451866, 'pdf', 'file/Contoh Keputusan Gubernur.pdf', '2023-06-30', 'Keputusan Gubernur'),
('619', 'Surat Edaran Kepala Daerah 9', 'Contoh Keputusan Gubernur.pdf', 451866, 'pdf', 'file/Contoh Keputusan Gubernur.pdf', '2023-06-09', 'Surat Edaran Kepala Daerah'),
('62', 'Keputusan Gubernur 2', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Keputusan Gubernur'),
('63', 'Keputusan Gubernur 3', 'Rekapitulasi Absen.pdf', 121254, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-03', 'Keputusan Gubernur'),
('64', 'Keputusan Gubernur 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Gubernur'),
('65', 'Keputusan Gubernur 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Keputusan Gubernur'),
('66', 'Keputusan Gubernur 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Keputusan Gubernur'),
('67', 'Keputusan Gubernur 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Keputusan Gubernur'),
('68', 'Keputusan Gubernur 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Gubernur'),
('69', 'Keputusan Gubernur 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Gubernur'),
('71', 'Keputusan Sekretaris Daerah 1', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-01', 'Keputusan Sekretaris Daerah'),
('72', 'Keputusan Sekretaris Daerah 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-02', 'Keputusan Sekretaris Daerah'),
('73', 'Keputusan Sekretaris Daerah 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Keputusan Sekretaris Daerah'),
('74', 'Keputusan Sekretaris Daerah 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-04', 'Keputusan Sekretaris Daerah'),
('75', 'Keputusan Sekretaris Daerah 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-05', 'Keputusan Sekretaris Daerah'),
('76', 'Keputusan Sekretaris Daerah 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Sekretaris Daerah'),
('77', 'Keputusan Sekretaris Daerah 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Keputusan Sekretaris Daerah'),
('78', 'Keputusan Sekretaris Daerah 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Sekretaris Daerah'),
('79', 'Keputusan Sekretaris Daerah 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Sekretaris Daerah'),
('81', 'Keputusan Kepala Dinas', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-01', 'Keputusan Kepala Dinas'),
('82', 'Keputusan Kepala Dinas 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-02', 'Keputusan Kepala Dinas'),
('83', 'Keputusan Kepala Dinas 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Kepala Dinas'),
('84', 'Keputusan Kepala Dinas 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-04', 'Keputusan Kepala Dinas'),
('85', 'Keputusan Kepala Dinas 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-05', 'Keputusan Kepala Dinas'),
('86', 'Keputusan Kepala Dinas 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Kepala Dinas'),
('87', 'Keputusan Kepala Dinas 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Keputusan Kepala Dinas'),
('88', 'Keputusan Kepala Dinas 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Kepala Dinas'),
('89', 'Keputusan Kepala Dinas 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Kepala Dinas'),
('901', 'Surat Edaran Gubernur', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-01', 'Surat Edaran Gubernur'),
('902', 'Surat Edaran Gubernur 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-02', 'Surat Edaran Gubernur'),
('903', 'Surat Edaran Gubernur 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Surat Edaran Gubernur'),
('904', 'Surat Edaran Gubernur 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Surat Edaran Gubernur'),
('905', 'Surat Edaran Gubernur 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-05', 'Surat Edaran Gubernur'),
('906', 'Surat Edaran Gubernur 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Surat Edaran Gubernur'),
('907', 'Surat Edaran Gubernur 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Surat Edaran Gubernur'),
('908', 'Surat Edaran Gubernur 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Surat Edaran Gubernur'),
('909', 'Surat Edaran Gubernur 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Surat Edaran Gubernur'),
('911', 'Surat Edaran Kepala Daerah', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Surat Edaran Kepala Daerah'),
('912', 'Surat Edaran Kepala Daerah 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Surat Edaran Kepala Daerah'),
('913', 'Surat Edaran Kepala Daerah 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Surat Edaran Kepala Daerah'),
('914', 'Surat Edaran Kepala Daerah 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-04', 'Surat Edaran Kepala Daerah'),
('915', 'Surat Edaran Kepala Daerah 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-05', 'Surat Edaran Kepala Daerah'),
('916', 'Surat Edaran Kepala Daerah 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-06', 'Surat Edaran Kepala Daerah'),
('917', 'Surat Edaran Kepala Daerah 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Surat Edaran Kepala Daerah'),
('918', 'Surat Edaran Kepala Daerah 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Surat Edaran Kepala Daerah'),
('921', 'Surat Edaran 1', 'Rekapitulasi Absen.pdf', 121344, 'pdf', 'file/Rekapitulasi Absen.pdf', '2023-06-01', 'Surat Edaran'),
('922', 'Surat Edaran 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-02', 'Surat Edaran'),
('923', 'Surat Edaran 3', 'Contoh Keputusan Gubernur.pdf', 451866, 'pdf', 'file/Contoh Keputusan Gubernur.pdf', '2023-06-03', 'Surat Edaran'),
('924', 'Surat Edaran 4', 'Surat Edaran.pdf', 261650, 'pdf', 'file/Surat Edaran.pdf', '2023-06-04', 'Surat Edaran'),
('931', 'Pengumuman Gubernur', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-21', 'Pengumuman Gubernur'),
('932', 'Pengumuman Gubernur 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-22', 'Pengumuman Gubernur'),
('933', 'Pengumuman Gubernur 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-24', 'Pengumuman Gubernur'),
('941', 'Seruan Gubernur', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-20', 'Seruan Gubernur'),
('942', 'Seruan Gubernur 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-22', 'Seruan Gubernur'),
('943', 'Seruan Gubernur 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-23', 'Seruan Gubernur'),
('944', 'Seruan Gubernur 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-24', 'Seruan Gubernur'),
('951', 'Naskah Akademik 1', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-20', 'Naskah Akademik'),
('952', 'Naskah Akademik 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-22', 'Naskah Akademik'),
('961', 'PPID 1', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-21', 'PPID'),
('962', 'PPID 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-22', 'PPID'),
('963', 'PPID 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-23', 'PPID'),
('964', 'PPID 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-24', 'PPID'),
('965', 'PPID 5', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-25', 'PPID'),
('990', 'test', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-30', 'Keputusan Kepala Biro'),
('991', 'Keputusan Kepala Biro', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-01', 'Keputusan Kepala Biro'),
('992', 'Keputusan Kepala Biro 2', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Keputusan Kepala Biro'),
('993', 'Keputusan Kepala Biro 3', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-03', 'Keputusan Kepala Biro'),
('994', 'Keputusan Kepala Biro 4', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-04', 'Keputusan Kepala Biro'),
('996', 'Keputusan Kepala Biro 6', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-04', 'Keputusan Kepala Biro'),
('997', 'Keputusan Kepala Biro 7', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-07', 'Keputusan Kepala Biro'),
('998', 'Keputusan Kepala Biro 8', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-08', 'Keputusan Kepala Biro'),
('999', 'Keputusan Kepala Biro 9', 'CONTOH SURAT PDF.pdf', 33686, 'pdf', 'file/CONTOH SURAT PDF.pdf', '2023-06-09', 'Keputusan Kepala Biro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `employee_id` int(8) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `employee_id`, `fullname`, `role`, `password`) VALUES
(1, 101, 'karyawan1', 'karyawan', '$2y$10$zcS.WeRb5Vxtzt16m9Aa5uHny3QKTafwRZYB7KW2dmtopcuD7YeDy'),
(2, 102, 'perawat1', 'perawat', '$2y$10$ytRVcruDFSjun0FE6WUI3eXVQZ6LIPwlstfeMic.EJsfOMjFYo.7O'),
(3, 103, 'karyawan2', 'karyawan', '$2y$10$8DUec0WIUEk9EOMPpp/Heeswm0QG1dzPImDmZZmymA9.Eb0ND1ye2'),
(4, 104, 'dokter1', 'dokter', '$2y$10$gfGnpTiRPmqwDKs.me9ymeQXMkgBY2UKG75lYsQvmf/HBAhiQR/aW'),
(5, 105, 'Gilang Prasetya', 'dokter', '$2y$10$Gvg1Guxpl5WFg0aIsiIOXOtq0iGw2Io1hy14MPuqeld17/5hiLjGm'),
(7, 106, 'gilangprasetya', 'karyawan', '$2y$10$1wj5a6cs2L733X2uerwh8eGgecbHPpZZrUBdbi/lJcJpIbG.xc4IW'),
(9, 636363, 'setephen', 'karyawan', '$2y$10$69iz58.zYTbNSP66q3.NUu51NG6njCbPAFc7Nv8BIOyx7npE6z8/m'),
(10, 666, 'Uknown1', 'karyawan', '$2y$10$Yzi2pEaxPwoVnwpd/yIAIOE3SOeLORqt1Mo9B5xXga.SoSX6ZkzZe'),
(11, 6969, 'gilang prasetya', 'karyawan', '$2y$10$ebqE33021cTZvJDaHsw07ehZ2dHN4sMJ/.YGwBuEU3q1kkXPuuTLq'),
(12, 8, 'gilang prasetya', 'karyawan', '$2y$10$gf.kVGGF.uHbYkYsa2QKl.kN4w0cpaKEvBATJKoCoXNg3lGp.JIpe'),
(13, 99, 'test99', 'perawat', '$2y$10$jlm3pJk7ZW61qEHJE2oA2Ocqu0PowBq0vfkZXuvHGfa9e8dX08P3a'),
(14, 98, 'test98', 'karyawan', '$2y$10$5gioZpH8zCIfAVIYTuaW3uV1lqFGprTx.kXg/6BihRFCQmmXTwf1.'),
(15, 6, '06', 'Dokter', '$2y$10$mtscOZnB1p4wAPHW7h2rTewHo/RTfns6/6sJ0GP62zp8Trn4QOia6'),
(16, 606, 'Gilang prasetya6', 'Dokter', '$2y$10$fatJwroRXs.o30d7Vn5IkOTZWXzdgylyrIuem.KscCrbyjdg.X45i'),
(17, 6060, 'gilang prasetya60', 'Dokter', '$2y$10$pYUWAfl1hPe9RheIWhhV/OCTyP6fr8ru5m9iz5wC214kvAwgLtnAK');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `users` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

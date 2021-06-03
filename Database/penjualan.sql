-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2021 pada 11.33
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_akses`
--

CREATE TABLE `pj_akses` (
  `id_akses` tinyint(1) UNSIGNED NOT NULL,
  `label` varchar(10) NOT NULL,
  `level_akses` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_akses`
--

INSERT INTO `pj_akses` (`id_akses`, `label`, `level_akses`) VALUES
(1, 'admin', 'Administrator'),
(2, 'kasir', 'Staff Kasir'),
(3, 'inventory', 'Staff Inventory'),
(4, 'keuangan', 'Staff Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_barang`
--

CREATE TABLE `pj_barang` (
  `id_barang` int(1) UNSIGNED NOT NULL,
  `kode_barang` varchar(40) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `total_stok` mediumint(1) UNSIGNED NOT NULL,
  `size` varchar(10) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL,
  `id_merk_barang` mediumint(1) UNSIGNED DEFAULT NULL,
  `keterangan` text NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_barang`
--

INSERT INTO `pj_barang` (`id_barang`, `kode_barang`, `nama_barang`, `total_stok`, `size`, `harga`, `id_kategori_barang`, `id_merk_barang`, `keterangan`, `dihapus`) VALUES
(20, '113', 'Keyboard Aula 2088', 47, '100', '200000', 14, 23, 'Keyboard Aula 2088', 'tidak'),
(19, '101', 'Laptop Asus ROG Gaming', 19, '60', '10000000', 13, 21, 'Laptop Asus ROG Gaming RAM 16GB', 'tidak'),
(18, '001', 'Samsung Galaxy S10', 3, '15', '1000000', 11, 19, 'Samsung Galaxy S10+ 128GB', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_ci_sessions`
--

CREATE TABLE `pj_ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_ci_sessions`
--

INSERT INTO `pj_ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4pkvo189ortq71u805pld1eeev718tdm', '::1', 1615374141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337343134313b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('69fo7hfhj7uirq1t345s08r2gp4pmefm', '::1', 1615374453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337343435333b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('s7mpfl3gpkq5q6a2bk983e34k90jgvdb', '::1', 1615374762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337343736323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('g6c2hnspok2e86hvlgm82veib35vpu8k', '::1', 1615375149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337353134393b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('7p0d4bob06092g3bbc6fmhjvrnri4cmi', '::1', 1615375457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337353435373b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('2okmgtbs7sqj9hht9bq5bikelm3j6iea', '::1', 1615375772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337353737323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('s918oabms4r2q9pduleuop7jce6108o3', '::1', 1615376107, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337363130373b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('ruragu253urp4nd68980su49or4ec7or', '::1', 1615376409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337363430393b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('mtdloijldbab94gg5ellbp1lu1khu046', '::1', 1615376716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337363731363b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('q2ca7uhra1qkjpej29dp2sq131clmqtc', '::1', 1615377020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337373032303b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('602phic2rcblj9r973kl05tiakj48qfn', '::1', 1615377365, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337373336353b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('79j02ffiqkbmmgj9vbv7nulf9a2q227v', '::1', 1615377631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353337373336353b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('9ed01mrach72p019eveipe45jfirmebc', '::1', 1615456232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353435363233323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('i2l71e8ijsal6k8ebemp85nu6d0tohhg', '::1', 1615456232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353435363233323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('rp9sssv59i92fkvg5pu13bmupl2cn7p6', '::1', 1615459058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353435393033333b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('8r7197fiddt9dqcv6dq8mn7r1e9gmekm', '::1', 1615459959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353435393636343b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('hnln3rcbbo1bpsmlftvc2ergkm3v4f4g', '::1', 1615460331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353436303333313b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('3kcnmrmiugatimgkogsg15ogk9mjhb5l', '::1', 1615460708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353436303730383b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('cbppvatncfsqs6s6rhh720d6j8gmg7a3', '::1', 1615460925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353436303730383b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('qmtm8j68p55r9lgeg95rsj388hkn0bqf', '::1', 1615530941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353533303934313b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('5mtlts4hrtla426vqnuikua07o3tgab3', '::1', 1615531602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353533313630323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('t6eqjn4sjnk6k1h43n9m2p3hp2t9ovao', '::1', 1615532092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353533323039323b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('ovm3q40b0p1h7s5e7t7vu01m9tfitr64', '::1', 1615532704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353533323730343b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('q9nlfvajqp02shl9c0dombssqu3q008c', '::1', 1615532706, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353533323730343b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('737s1kf6f80224e89oovemtdokt6grfp', '::1', 1615621546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632313534363b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('0p88k6gn6h0sp2dph1kjthgv45vsbjl1', '::1', 1615621850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632313835303b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('u1r7hiqt0v7jln12uiegpnpct7jtmv5s', '::1', 1615621961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632313835303b),
('fcpu6cu44k5fdka4n6mn7f07spadvbkd', '::1', 1615622658, 0x61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b5f5f63695f6c6173745f726567656e65726174657c693a313631353632323436303b),
('9cguup6mo48mbeuplchk03lhu6tvh0o8', '::1', 1615624884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632343737353b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('eopcr83qg9cslsdnl7ldseki1q47k5fc', '::1', 1615625315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632353238353b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('g31sat03rqtu5frji7ubsntgs2ecs30h', '::1', 1615629501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632393530313b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('c8lsj4062mmkcuglmcraql8ur0a9dteb', '::1', 1615629841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632393834313b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b),
('a2h3ccs6meb55ea7eud3gh65pabpsdhe', '::1', 1615629862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353632393834313b),
('rt3579664oeifgpg57bbgme7lsc6i5vn', '::1', 1621592907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632313539323930373b),
('3gb9mq7gnk76vdcn6o8lug08hv18kecm', '::1', 1622567279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323536373237393b),
('3k7ck2s3ivp15rurr9set05is8gtdcqr', '::1', 1622712761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632323731323732383b61705f69645f757365727c733a313a2231223b61705f70617373776f72647c733a34303a2264303333653232616533343861656235363630666332313430616563333538353063346461393937223b61705f6e616d617c733a31303a2242616e672041646d696e223b61705f6c6576656c7c733a353a2261646d696e223b61705f6c6576656c5f63617074696f6e7c733a31333a2241646d696e6973747261746f72223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_kategori_barang`
--

CREATE TABLE `pj_kategori_barang` (
  `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL,
  `kategori` varchar(40) NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_kategori_barang`
--

INSERT INTO `pj_kategori_barang` (`id_kategori_barang`, `kategori`, `dihapus`) VALUES
(14, 'Keyboard', 'tidak'),
(13, 'Laptop', 'tidak'),
(12, 'Komputer', 'tidak'),
(11, 'Handphone', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_merk_barang`
--

CREATE TABLE `pj_merk_barang` (
  `id_merk_barang` mediumint(1) UNSIGNED NOT NULL,
  `merk` varchar(40) NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_merk_barang`
--

INSERT INTO `pj_merk_barang` (`id_merk_barang`, `merk`, `dihapus`) VALUES
(23, 'Aula', 'tidak'),
(22, 'Nvidia GTX', 'tidak'),
(21, 'Asus ROG', 'tidak'),
(20, 'Lenovo', 'tidak'),
(19, 'Samsung', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_pelanggan`
--

CREATE TABLE `pj_pelanggan` (
  `id_pelanggan` mediumint(1) UNSIGNED NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(40) DEFAULT NULL,
  `info_tambahan` text DEFAULT NULL,
  `kode_unik` varchar(30) NOT NULL,
  `waktu_input` datetime NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_pelanggan`
--

INSERT INTO `pj_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`, `info_tambahan`, `kode_unik`, `waktu_input`, `dihapus`) VALUES
(24, 'Azhar', 'Tasikmalaya', '08229464', '', '16156218711', '2021-03-13 14:51:11', 'tidak'),
(23, 'RadityaSN', 'Tasikmalaya, Saguling Babakan', '082295153654', '', '16153044351', '2021-03-09 22:40:35', 'tidak'),
(22, 'Moch Azmi Iskandar', 'Tasikmalaya', '082295153183', 'dasdas', '16153044141', '2021-03-09 22:40:14', 'tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_penjualan_detail`
--

CREATE TABLE `pj_penjualan_detail` (
  `id_penjualan_d` int(1) UNSIGNED NOT NULL,
  `id_penjualan_m` int(1) UNSIGNED NOT NULL,
  `id_barang` int(1) NOT NULL,
  `jumlah_beli` smallint(1) UNSIGNED NOT NULL,
  `harga_satuan` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_penjualan_detail`
--

INSERT INTO `pj_penjualan_detail` (`id_penjualan_d`, `id_penjualan_m`, `id_barang`, `jumlah_beli`, `harga_satuan`, `total`) VALUES
(37, 23, 20, 1, '200000', '200000'),
(36, 22, 20, 1, '200000', '200000'),
(35, 21, 20, 1, '200000', '200000'),
(34, 20, 18, 1, '1000000', '1000000'),
(33, 20, 19, 1, '10000000', '10000000'),
(32, 19, 18, 1, '1000000', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_penjualan_master`
--

CREATE TABLE `pj_penjualan_master` (
  `id_penjualan_m` int(1) UNSIGNED NOT NULL,
  `nomor_nota` varchar(40) NOT NULL,
  `tanggal` datetime NOT NULL,
  `grand_total` decimal(10,0) NOT NULL,
  `bayar` decimal(10,0) NOT NULL,
  `keterangan_lain` text DEFAULT NULL,
  `id_pelanggan` mediumint(1) UNSIGNED DEFAULT NULL,
  `id_user` mediumint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_penjualan_master`
--

INSERT INTO `pj_penjualan_master` (`id_penjualan_m`, `nomor_nota`, `tanggal`, `grand_total`, `bayar`, `keterangan_lain`, `id_pelanggan`, `id_user`) VALUES
(23, '604C7A7401DE71', '2021-03-13 09:40:20', '200000', '500000', '', NULL, 1),
(22, '604C6EDF8BD6A1', '2021-03-13 08:50:55', '200000', '1000000', '', 24, 1),
(21, '604C6E85998681', '2021-03-13 08:49:25', '200000', '500000', 'Bayar lunas', NULL, 1),
(20, '60479DF9A68971', '2021-03-09 17:10:33', '11000000', '11000000', 'Laris Manis', NULL, 1),
(19, '604796D9AB5561', '2021-03-09 16:40:09', '1000000', '1000000', 'Samsung Galaxy S10 64GB Ram 8GB', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_retur_penjualan`
--

CREATE TABLE `pj_retur_penjualan` (
  `id` int(11) NOT NULL,
  `id_penjualan` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `total_barang` varchar(255) NOT NULL,
  `aksi` enum('1','0') NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pj_retur_penjualan`
--

INSERT INTO `pj_retur_penjualan` (`id`, `id_penjualan`, `total_harga`, `total_barang`, `aksi`, `date`) VALUES
(1, '32', '1000000', '1', '0', '2021-03-12 06:47:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj_user`
--

CREATE TABLE `pj_user` (
  `id_user` mediumint(1) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_akses` tinyint(1) UNSIGNED NOT NULL,
  `status` enum('Aktif','Non Aktif') NOT NULL,
  `dihapus` enum('tidak','ya') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pj_user`
--

INSERT INTO `pj_user` (`id_user`, `username`, `password`, `nama`, `id_akses`, `status`, `dihapus`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Bang Admin', 1, 'Aktif', 'tidak'),
(2, 'kasir', '8691e4fc53b99da544ce86e22acba62d13352eff', 'Ujang Andi', 2, 'Aktif', 'tidak'),
(3, 'kasir2', '08dfc5f04f9704943a423ea5732b98d3567cbd49', 'Kasir Dua', 2, 'Aktif', 'ya'),
(4, 'jaka', '2ec22095503fe843326e7c19dd2ab98716b63e4d', 'Jaka Sembung', 3, 'Aktif', 'ya'),
(5, 'gudang', 'a80dd043eb5b682b4148b9fc2b0feabb2c606fff', 'Jaka Sembung', 3, 'Aktif', 'tidak'),
(6, 'keuangan', '1f931595786f2f178358d0af5fe4d75eaee46819', 'Raditya Kustiawan', 4, 'Aktif', 'tidak'),
(7, 'amir', '1dd89e5367785ba89076cd264daac0464fdf0d7b', 'amir', 3, 'Aktif', 'ya'),
(8, 'azmi', '67aa67cf2daea1ce5a922dab3a37f49c9d2477c8', 'Moch Azmi Iskandar', 1, 'Aktif', 'tidak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pj_akses`
--
ALTER TABLE `pj_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `pj_barang`
--
ALTER TABLE `pj_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `pj_ci_sessions`
--
ALTER TABLE `pj_ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `pj_kategori_barang`
--
ALTER TABLE `pj_kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indeks untuk tabel `pj_merk_barang`
--
ALTER TABLE `pj_merk_barang`
  ADD PRIMARY KEY (`id_merk_barang`);

--
-- Indeks untuk tabel `pj_pelanggan`
--
ALTER TABLE `pj_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pj_penjualan_detail`
--
ALTER TABLE `pj_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_d`);

--
-- Indeks untuk tabel `pj_penjualan_master`
--
ALTER TABLE `pj_penjualan_master`
  ADD PRIMARY KEY (`id_penjualan_m`);

--
-- Indeks untuk tabel `pj_retur_penjualan`
--
ALTER TABLE `pj_retur_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pj_user`
--
ALTER TABLE `pj_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pj_akses`
--
ALTER TABLE `pj_akses`
  MODIFY `id_akses` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pj_barang`
--
ALTER TABLE `pj_barang`
  MODIFY `id_barang` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pj_kategori_barang`
--
ALTER TABLE `pj_kategori_barang`
  MODIFY `id_kategori_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pj_merk_barang`
--
ALTER TABLE `pj_merk_barang`
  MODIFY `id_merk_barang` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pj_pelanggan`
--
ALTER TABLE `pj_pelanggan`
  MODIFY `id_pelanggan` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pj_penjualan_detail`
--
ALTER TABLE `pj_penjualan_detail`
  MODIFY `id_penjualan_d` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pj_penjualan_master`
--
ALTER TABLE `pj_penjualan_master`
  MODIFY `id_penjualan_m` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pj_retur_penjualan`
--
ALTER TABLE `pj_retur_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pj_user`
--
ALTER TABLE `pj_user`
  MODIFY `id_user` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 15 Des 2019 pada 17.59
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(5) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5069 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Nawawi', 'admin', '202cb962ac59075b964b07152d234b70'),
(2, 'Imam Nawawi', 'imam', '200ceb26807d6bf99fd6f4f0d1ca54d4'),
(3, 'Maruloh', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(5057, 'Lail Fajri', 'fajri', '670b14728ad9902aecba32e22fa4f6bd'),
(5067, 'Itu5', 'itujuga5', 'c3bfd7f654821bc899da86202a2ecef1'),
(5060, 'Itu', 'itujuga2', '33b4eb591618a970c4fc2b3bdb6385ac');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama_anggota` varchar(45) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `username`, `nama_anggota`, `gender`, `no_telp`, `alamat`, `email`, `password`) VALUES
(1, '', 'Irfan Maulana', 'Laki-Laki', '02144445566', 'BSD', 'irfanmaulana@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'kumala', 'Nur Kumalasari', 'Perempuan', '02133335555', 'Ciledug', 'nur@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, '', 'Sanjaya Wijaya', 'Laki-Laki', '02111115555', 'Cimone', 'sanjaya@gmail.com', '123'),
(4, '', 'Eva Irfianingsih', 'Perempuan', '02166665555', 'Tangerang', 'eva@gmail.com', '123'),
(6, '', 'Indah Riana', 'Perempuan', '02188885555', 'Fatmawati', 'indah@gmail.com', '123'),
(7, '', 'Tiwie Andrawati', 'Perempuan', '02199995555', 'Warung Jati', 'tiwie@gmail.com', '123'),
(11, 'imam', 'Imam Nawawi', 'Laki-Laki', '087829398630', 'jl H Isa no 1 Rengas Ciputat Timur', 'imam.imw@bsi.ac.id', '01cfcd4f6b8770febfb40cb906715822'),
(9, '', 'Hisbu Utomo', 'Laki-Laki', '02133336666', 'Salemba', 'hisbu@gmail.com', '123'),
(10, '', 'Zaenal Abidin', 'Laki-Laki', '02133337777', 'Bekasi', 'Zaenal@gmail.com', '123'),
(12, 'maruloh', 'Maruloh', 'Laki-Laki', '081519940383', 'Pedongkelan', 'maruloh.mru@gmail.com', '8d57dfe7398336d6b9164b4d62b6b42b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(35) NOT NULL,
  `thn_terbit` date NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak 2','Rak 3') NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_input` date NOT NULL,
  `status_buku` enum('1','0') NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul_buku`, `pengarang`, `thn_terbit`, `penerbit`, `isbn`, `jumlah_buku`, `lokasi`, `gambar`, `tgl_input`, `status_buku`) VALUES
(1, 3, 'Robotika Sederhana Tingkat Fundamental', 'Siswoyo Utomo', '2013-01-01', 'Wacana Ria', '34354422', 21, 'Rak 3', 'gambar1554035778.jpg', '2019-03-31', '1'),
(2, 3, 'Mahir Pemrograman Web dengan PHP', 'Adri Kusuma Wardana', '2014-03-18', 'Elex Media', '65412345', 21, 'Rak 3', 'gambar1539746444.jpg', '2018-07-24', '1'),
(4, 1, 'Dasar Dasar Fisika', 'Kurnia Sandi', '2013-04-04', 'Wacana Ria', '23321441', 19, 'Rak 2', 'gambar1554036324.png', '2018-07-24', '1'),
(5, 8, 'Mahir Bahasa Inggris', 'Aliuddin', '2013-05-05', 'CV. Indo Kreasi', '35532344', 19, 'Rak 1', 'gambar1554036306.jpg', '2018-10-17', '1'),
(6, 4, 'Public Speaking', 'Pambudi Prasetyo', '2015-06-06', 'Aldi Pustaka', '84359475', 20, 'Rak 2', 'gambar1554036289.jpg', '2019-01-24', '1'),
(7, 3, 'Trik SQL', 'Ahdim Makaren', '2014-07-07', 'Wacana Ria', '54234762', 20, 'Rak 1', 'gambar1539747068.jpg', '2018-03-14', '1'),
(8, 6, 'Kemurnian Agama', 'Pambudi Prasetyo', '2014-08-08', 'Aldi Pustaka', '98095860', 20, 'Rak 3', 'gambar1554036259.jpg', '2018-07-24', '1'),
(9, 1, 'Mikrokontroler', 'Ahdim Makaren', '2012-09-09', 'Wacana Ria', '12121314', 20, 'Rak 2', 'gambar1554035861.jpg', '2018-04-11', '1'),
(10, 1, '24 Jam Belajar FrameWork', 'Rudi Hartono', '2017-03-02', 'Ujung Pena', '12345345', 20, 'Rak 2', 'gambar1539747110.jpg', '2018-05-08', '1'),
(11, 2, 'JavaScript uncover', 'Andre Pratama', '2015-03-12', 'Dunia ilkom', '90876542', 20, 'Rak 1', 'gambar1554036408.jpg', '2018-07-24', '1'),
(12, 3, 'Pemrograman dan Hack Android untuk pemula', 'Edy Winarno ST', '2016-09-23', 'Elex Media', '42342522', 20, 'Rak 1', 'gambar1554036439.jpg', '2018-07-25', '1'),
(16, 3, 'VB .Net', 'Azka', '2018-10-01', 'Elex Media', '12345678', 20, 'Rak 1', 'gambar1554035751.jpg', '2018-10-17', '1'),
(18, 3, 'Arduino Mega', 'Abdul Kadir', '2018-02-16', 'Ilmu komputer', '12121154', 20, 'Rak 2', 'gambar1554035724.jpg', '2019-03-31', '1'),
(19, 3, 'Java Fundamental', 'Nofriadi M.Kom', '2019-03-31', 'Saung coding', '11012006', 20, 'Rak 2', 'gambar1554036382.jpg', '2019-03-31', '1'),
(20, 3, 'Metode Numerik', 'Rinaldi Munir', '2019-03-31', 'Informatika', '12121155', 20, 'Rak 2', 'gambar1554036211.JPG', '2019-03-31', '1'),
(21, 3, 'Pemrograman Sistem Pakar', 'Anik Andriani M.Kom', '2019-03-31', 'Bukukita.com', '11012077', 21, 'Rak 3', 'gambar1554036530.jpg', '2019-03-31', '1'),
(22, 3, 'Pengantar Teknologi Informasi', 'Edhy Sutanta', '2019-03-31', 'Graha Ilmu', '12121157', 20, 'Rak 3', 'gambar1554036609.jpg', '2019-03-31', '1'),
(23, 3, 'Belajar VB.Net Secara Mandiri', 'Uus Rusmawan', '2019-03-31', 'Elex Media', '12121150', 20, 'Rak 3', 'gambar1554036734.jpg', '2019-03-31', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pinjam`
--

CREATE TABLE IF NOT EXISTS `detail_pinjam` (
  `id_pinjam` varchar(5) NOT NULL,
  `id_buku` int(5) NOT NULL,
  `denda` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`id_pinjam`, `id_buku`, `denda`) VALUES
('PJ001', 16, 10000),
('PJ001', 6, 10000),
('PJ002', 1, 10000),
('PJ003', 1, 10000),
('PJ005', 10, 10000),
('PJ006', 1, 10000),
('PJ006', 3, 10000),
('PJ007', 1, 10000),
('PJ008', 9, 10000),
('PJ009', 9, 10000),
('PJ009', 1, 10000),
('PJ010', 9, 10000),
('PJ011', 1, 10000),
('PJ010', 3, 10000),
('PJ035', 2, 10000),
('PJ010', 5, 10000),
('PJ011', 1, 10000),
('PJ012', 4, 10000),
('PJ013', 1, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sains'),
(2, 'Hobby'),
(3, 'Komputer'),
(4, 'Komunikasi'),
(5, 'Hukum'),
(6, 'Agama'),
(7, 'Populer'),
(8, 'Bahasa'),
(9, 'Komik'),
(18, 'Ilmu Hitam'),
(22, 'Matematika'),
(24, 'HOpal'),
(25, 'HOpaaaal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_pinjam` varchar(5) NOT NULL,
  `tanggal_input` datetime NOT NULL,
  `id_anggota` int(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `totaldenda` double NOT NULL DEFAULT '0',
  `status_peminjaman` enum('Booking','Selesai','Belum Selesai') DEFAULT 'Belum Selesai',
  `status_pengembalian` enum('Kembali','Belum Kembali') NOT NULL,
  PRIMARY KEY (`id_pinjam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tanggal_input`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `tgl_pengembalian`, `totaldenda`, `status_peminjaman`, `status_pengembalian`) VALUES
('PJ001', '2019-01-24 12:01:33', 11, '2019-01-24', '2019-01-30', '2019-01-31', 0, 'Selesai', 'Kembali'),
('PJ002', '2019-03-06 09:03:15', 1, '2019-03-06', '2019-03-12', '2019-03-06', 0, 'Selesai', 'Kembali'),
('PJ003', '2019-03-06 10:03:15', 1, '2019-03-06', '2019-03-12', '2019-03-13', 0, 'Selesai', 'Kembali'),
('PJ010', '2019-03-31 20:03:58', 19, '2019-03-31', '2019-04-06', '2019-04-04', 0, 'Selesai', 'Kembali'),
('PJ005', '2019-03-06 10:03:26', 1, '2019-03-06', '2019-03-12', '2019-03-23', 0, 'Selesai', 'Kembali'),
('PJ006', '2019-03-06 17:03:41', 1, '2019-03-12', '2019-03-18', '2019-03-18', 0, 'Selesai', 'Kembali'),
('PJ007', '2019-03-12 08:03:33', 1, '2019-03-12', '2019-03-18', '2019-03-18', 0, 'Selesai', 'Kembali'),
('PJ008', '2019-03-12 11:03:13', 1, '2019-03-12', '2019-03-18', '2019-03-18', 0, 'Selesai', 'Kembali'),
('PJ009', '2019-03-25 17:03:08', 1, '2019-03-25', '2019-03-31', '2019-03-25', 0, 'Selesai', 'Kembali'),
('PJ011', '2019-03-31 20:03:11', 17, '2019-03-31', '2019-04-06', '2019-04-04', 0, 'Selesai', 'Kembali'),
('PJ012', '2019-03-31 23:03:06', 16, '2019-03-31', '2019-04-06', '2019-03-31', 0, 'Selesai', 'Kembali'),
('PJ013', '2019-04-03 22:04:24', 16, '2019-04-03', '2019-04-09', '2019-04-04', 0, 'Selesai', 'Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_pinjam` varchar(5) NOT NULL,
  `tgl_pencatatan` datetime NOT NULL,
  `id_anggota` int(4) NOT NULL,
  `id_buku` int(4) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` double NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `total_denda` double NOT NULL,
  `status_pengembalian` varchar(15) NOT NULL,
  `status_peminjaman` varchar(25) NOT NULL,
  KEY `id_pinjam` (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

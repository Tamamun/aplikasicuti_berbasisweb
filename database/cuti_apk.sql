-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 08:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `nama_adm` varchar(50) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(100) NOT NULL,
  `foto_adm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_adm`, `nama_adm`, `telp_adm`, `user_adm`, `pass_adm`, `foto_adm`) VALUES
(1, 'Administrator', '0896888360333', 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `no_cuti` varchar(30) NOT NULL,
  `npp` varchar(20) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `leader` varchar(20) NOT NULL,
  `manager` varchar(30) NOT NULL,
  `spv` varchar(20) NOT NULL,
  `stt_cuti` varchar(50) NOT NULL,
  `ket_reject` text NOT NULL,
  `hrd_app` int(2) NOT NULL,
  `lead_app` int(2) NOT NULL,
  `spv_app` int(2) NOT NULL,
  `mng_app` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`no_cuti`, `npp`, `tgl_pengajuan`, `tgl_awal`, `tgl_akhir`, `durasi`, `keterangan`, `leader`, `manager`, `spv`, `stt_cuti`, `ket_reject`, `hrd_app`, `lead_app`, `spv_app`, `mng_app`) VALUES
('08052021093958', '12345', '2021-05-08', '2021-05-08', '2021-05-09', 2, 'Sakit', '123', '1111', '22222', 'Approved', '', 1, 1, 1, 1),
('08052021100852', '002', '2021-05-08', '2021-05-08', '2021-05-09', 2, 'Sakit', '123', '1111', '001', 'Approved', '', 1, 1, 1, 1),
('11052019221922', '12345', '2019-05-11', '2019-05-12', '2019-05-13', 2, 'asda', '11111', '1111', '22222', 'Rejected', '', 0, 0, 0, 0),
('12052019121722', '11111', '2019-05-12', '2019-05-14', '2019-05-14', 1, 'Menengok orang tua', '', '33333', '22222', 'Approved', '', 1, 0, 1, 1),
('12052019143232', '22222', '2019-05-12', '2019-05-16', '2019-05-16', 1, 'Jalan jalan', '', '33333', '', 'Approved', '', 1, 0, 0, 1),
('13052019195049', '33333', '2019-05-13', '2019-05-14', '2019-05-14', 1, 'asdakjd', '', '', '', 'Approved', '', 1, 0, 0, 0),
('14052019105620', '12345', '2019-05-14', '2019-05-16', '2019-05-17', 2, 'kjfsk', '11111', '33333', '22222', 'Approved', '', 1, 1, 1, 1),
('22042021190410', '11111', '2021-04-22', '2021-04-22', '2021-04-26', 5, 'anak', '', '1111', '22222', 'Approved', '', 1, 0, 1, 1),
('22042021191652', '123', '2021-04-22', '2021-04-22', '2021-04-26', 5, 'Anak Lahiran', '', '1111', '22222', 'Approved', '', 1, 0, 1, 1),
('22042021192903', '001', '2021-04-22', '2021-04-22', '2021-04-26', 5, 'Menengok orang tua', '', '1111', '', 'Approved', '', 1, 0, 0, 1),
('22042021203229', '123', '2021-04-22', '2021-04-22', '2021-04-26', 5, 'lahiran', '', '1111', '001', 'Approved', '', 1, 0, 1, 1),
('22042021205212', '002', '2021-04-22', '2021-04-22', '2021-04-25', 4, 'Nikahan', '11111', '1111', '22222', 'Approved', '', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `npp` varchar(20) NOT NULL,
  `nama_emp` varchar(100) NOT NULL,
  `jk_emp` varchar(20) NOT NULL,
  `telp_emp` varchar(20) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `jml_cuti` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto_emp` text NOT NULL,
  `active` varchar(20) NOT NULL,
  `id_adm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`npp`, `nama_emp`, `jk_emp`, `telp_emp`, `divisi`, `jabatan`, `alamat`, `hak_akses`, `jml_cuti`, `password`, `foto_emp`, `active`, `id_adm`) VALUES
('001', 'Rahmat', 'Laki-Laki', '02133331', 'Management', 'Seketetaris', 'Jakarta Selatan', 'Supervisor', 5, '001', 'foto001m.png', 'Aktif', 1),
('002', 'Nurhikmah ', 'Perempuan', '02100340021', 'Seketaris', 'Leader', 'Tanggerang Selatan', 'Pegawai', 5, '002', 'foto002m.png', 'Aktif', 1),
('1111', 'Novita', 'Laki-Laki', '081287189898', 'IT', 'Manager IT', 'Jakarta', 'Manager', 1, '1111', 'foto33333r.jpg', 'Aktif', 1),
('123', 'Aulia', 'Perempuan', '0821345333', 'IT', 'Leader', 'Jakarta', 'Leader', 5, '123', 'foto123m.png', 'Aktif', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`no_cuti`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`npp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

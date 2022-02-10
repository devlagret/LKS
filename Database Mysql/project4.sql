-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 06:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventaris`
--

CREATE TABLE `tbl_inventaris` (
  `ID` int(25) NOT NULL,
  `IDJenis` text NOT NULL,
  `KdBrg` text NOT NULL,
  `NmBrg` text NOT NULL,
  `JML` int(20) NOT NULL,
  `IDSatuan` int(25) NOT NULL,
  `Hapok` float NOT NULL,
  `IDSupplier` int(25) NOT NULL,
  `Tempat` text NOT NULL,
  `Ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_barang`
--

CREATE TABLE `tbl_jenis_barang` (
  `IDJenis` int(25) NOT NULL,
  `JenisBrg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `IDSatuan` int(25) NOT NULL,
  `Satuan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `IDSupplier` int(25) NOT NULL,
  `Nama` tinytext DEFAULT NULL,
  `Alamat` text NOT NULL,
  `Kota` text NOT NULL,
  `Telp` text NOT NULL,
  `Fax` text NOT NULL,
  `Website` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_inventaris`
--
ALTER TABLE `tbl_inventaris`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_jenis_barang`
--
ALTER TABLE `tbl_jenis_barang`
  ADD PRIMARY KEY (`IDJenis`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`IDSatuan`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`IDSupplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_inventaris`
--
ALTER TABLE `tbl_inventaris`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jenis_barang`
--
ALTER TABLE `tbl_jenis_barang`
  MODIFY `IDJenis` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `IDSatuan` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `IDSupplier` int(25) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

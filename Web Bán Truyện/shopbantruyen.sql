-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2023 at 12:54 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopbantruyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint NOT NULL,
  `sodh` bigint NOT NULL,
  `masp` bigint NOT NULL,
  `soluong` int NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(146, 129, 216, 1, 110, '110.00', '15,16');

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint NOT NULL,
  `tendv` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc Truyện', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint NOT NULL,
  `emailkh` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `diachi` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dienthoai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(129, 'hau@gmail.com', '2023-11-21', 'Hoang Nguyen Hau', 'gdgdsg', '123456789', 'ATM', '140.00');

-- --------------------------------------------------------

--
-- Table structure for table `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `matkhau` int NOT NULL,
  `HoTen` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `DienThoai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('hau@gmail.com', 123, 'Hoang Nguyen Hau', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(15, 'NXB Kim Đồng'),
(16, 'NXB Mỹ Thuật'),
(17, 'NXB Văn Học');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint NOT NULL,
  `Ten` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Manhasx` bigint NOT NULL,
  `Mota` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(212, 'Doraemon Tập 4', 799, 'Doraemon 4.jpg', 15, 'Doraemon là một chú mèo máy được Nobi Sewashi (Nobi Nobito), cháu năm đời của Nobi Nobita, gửi từ thế kỷ 22 về quá khứ của ông mình để giúp đỡ Nobita trở nên tiến bộ và giàu có, tức là cũng sẽ cải thiện hoàn cảnh của con cháu Nobita sau này. Còn ở hiện tại, Nobita là một cậu bé luôn thất bại ở trường học, và sau đó công ty phá sản, thất bại trong công việc, đẩy gia đình và con cháu sau này vào cảnh nợ nần', '2023-08-26', 1, 789, 'Fujiko F. Fujio '),
(213, 'DORAEMON Tập 3', 699, 'Doraemon 3.jpg', 15, 'Doraemon là một chú mèo máy được Nobi Sewashi (Nobi Nobito), cháu năm đời của Nobi Nobita, gửi từ thế kỷ 22 về quá khứ của ông mình để giúp đỡ Nobita trở nên tiến bộ và giàu có, tức là cũng sẽ cải thiện hoàn cảnh của con cháu Nobita sau này. Còn ở hiện tại, Nobita là một cậu bé luôn thất bại ở trường học, và sau đó công ty phá sản, thất bại trong công việc, đẩy gia đình và con cháu sau này vào cảnh nợ nần', '2021-06-26', 1, 678, 'Fujiko F. Fujio '),
(214, 'DORAEMON Tập 2', 599, 'Doraemon 2.jpg', 15, 'Nội dung series kể về cuộc đời của cậu bé Nobita và chú mèo máy Doraemon từ tương lai đến để giúp cuộc sống của cậu bé trở nên tốt hơn. ', '2021-06-26', 1, 567, 'Fujiko F. Fujio '),
(215, 'DORAEMON Tập 1', 499, 'Doraemon 1.jpg', 15, 'Nội dung series kể về cuộc đời của cậu bé Nobita và chú mèo máy Doraemon từ tương lai đến để giúp cuộc sống của cậu bé trở nên tốt hơn. ', '2021-06-26', 1, 456, 'Fujiko.F. Fujio'),
(216, 'Tấm Cám', 399, 'Tấm Cám.jpg', 16, 'Nội dung kể về cuộc đời của Tấm, một cô gái hiền lành, xinh đẹp, bị dì ghẻ và em gái Cám hãm hại.', '2021-06-26', 0, 345, 'Dân gian'),
(217, 'Sọ Dừa', 299, 'Sọ Dừa.jpg', 17, 'Nội dung truyện kể về một cậu bé tên Sọ Dừa, sinh ra không có tay không chân, nhưng lại rất thông minh và tài giỏi. Cậu bé đã vượt qua khó khăn, trở thành người chăn bò giỏi, và cuối cùng cưới được cô gái xinh đẹp.', '2021-06-26', 0, 234, 'Dân gian'),
(218, 'Cây Tre Trăm Đốt', 199, 'Cây Tre Trăm Đốt.jpg', 17, '“Cây tre trăm đốt” kể về một chàng trai hiền lành, khỏe mạnh đi cày thuê cho vợ chồng ông phú hộ. Hai người này có hứa: “Con chịu khó làm lụng giúp ta, ba năm nữa ta sẽ gả con gái ta cho”. Tin vào lời hứa, anh ra sức làm việc không ngại khó nhọc. Nhưng ba năm sau, khi mà nhà ông đã có mọi thứ của cải, ông bèn trở mặt, ông đưa ra một điều kiện là phải tìm được một cây tre trăm đốt để làm nhà cưới vợ thì ông mới gả con gái cho. Vì muốn có cơ hội để cưới con gái của chủ, anh bèn lên rừng quyết tâm tìm được một cây tre trăm đốt. Tìm mãi không thấy, anh thất vọng ngồi khóc. Bỗng Bụt hiện lên và bảo anh đi tìm, chặt cho đủ 100 đốt tre rời rồi giúp anh bằng hai câu thần chú: “khắc nhập, khắc nhập!” để gắn kết 100 đốt tre rời thành một cây tre trăm đốt và “khắc xuất, khắc xuất!” để tách các đốt tre ra. Nhờ là các khúc tre rời nên anh cũng dễ dàng gánh về làng được. Về nhà, anh cho cha vợ tương lai của mình xem cây tre trăm đốt. Không tin vào điều mắt mình nhìn thấy, ông nhà giàu sờ tay vào cây đếm từng khúc tre. Phép màu của Bụt đã hút ông dính luôn vào cây tre. Khi ông đồng ý giữ lời hứa, anh mới sực nhớ ra câu “khắc xuất” để giải thoát cho cha vợ của mình. Sợ hãi, ông phú hộ phải giữ lời hứa, gả con gái cho anh nông dân. Cuối cùng, anh và con gái ông phú hộ sống với nhau hạnh phúc mãi mãi.', '2021-06-26', 0, 123, 'Dân gian'),
(219, 'Thánh Gióng', 99, 'Thánh Gióng.jpg', 17, 'Truyện kể về một đứa bé mới sinh ra có tên là Gióng, sau này trở thành một anh hùng giúp đỡ người dân chống lại giặc ngoại xâm. Truyện Thánh Gióng được coi là một trong những truyền thuyết dân gian nổi tiếng nhất của Việt Nam.', '2021-06-26', 0, 12, 'Dân gian');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Indexes for table `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

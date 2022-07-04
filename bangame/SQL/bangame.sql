-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 11:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangame`
--

-- --------------------------------------------------------

--
-- Table structure for table `blsanpham`
--

CREATE TABLE `blsanpham` (
  `id_bl` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binh_luan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blsanpham`
--

INSERT INTO `blsanpham` (`id_bl`, `id_sp`, `ten`, `dien_thoai`, `binh_luan`, `ngay_gio`) VALUES
(1, 17, 'khoa', '0123456789', 'Game hay', '2021-12-08 15:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `dmsanpham`
--

CREATE TABLE `dmsanpham` (
  `id_dm` int(11) NOT NULL,
  `ten_dm` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dmsanpham`
--

INSERT INTO `dmsanpham` (`id_dm`, `ten_dm`) VALUES
(1, 'Bắn súng'),
(2, 'Hành động'),
(3, 'Nhập vai'),
(4, 'Phiêu lưu'),
(5, 'Đua xe'),
(6, 'Thể thao'),
(7, 'Đối kháng');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) UNSIGNED NOT NULL,
  `id_dm` int(11) UNSIGNED NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bao_hanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phu_kien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khuyen_mai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dac_biet` int(1) NOT NULL,
  `chi_tiet_sp` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dm`, `ten_sp`, `anh_sp`, `gia_sp`, `bao_hanh`, `phu_kien`, `tinh_trang`, `khuyen_mai`, `trang_thai`, `dac_biet`, `chi_tiet_sp`) VALUES
(1, 1, 'Call of Duty: Black Ops Cold War - Playstation 4', 'CallofDutyBlackOpsCold War Playstation 4.jpg', ' 1.380.000', '1 tháng', '1 đĩa game, hộp cover', 'Mới 100%', 'Không có', 'Còn hàng', 1, 'Giới thiệu :	Call of Duty Black Ops Cold War là một trò chơi điện tử bắn súng góc nhìn thứ nhất được phát triển bởi Treyarch và Raven Software và được phát hành bởi Activision. Đây là phần thứ sáu của loạt trò chơi Black Ops, và phần thứ mười bảy trong toàn bộ loạt trò chơi Call of Duty.\r\n'),
(2, 1, 'Đĩa Game PS4 Call of Duty: Black Ops 4 Hệ US', 'Đĩa Game PS4 Call of Duty.jpg', '550.000', '1 tháng', '1 đĩa game, hộp cover', 'Mới 100%', 'không có', 'Còn hàng', 0, 'Giới thiệu :	Call of Duty Black là một trò chơi điện tử bắn súng góc nhìn thứ nhất được phát triển bởi Treyarch và Raven Software và được phát hành bởi Activision. Đây là phần thứ sáu của loạt trò chơi Black Ops, và phần thứ mười bảy trong toàn bộ loạt trò chơi Call of Duty.'),
(3, 1, 'Đĩa Game PS4 Killzone: Shadow Fall Hệ US - New', 'Đĩa Game PS4 Killzone.jpg', '400.000', '2 tháng', 'kèm hộp', ' Mới 100%', 'Mã code', 'còn hàng', 0, 'Phát hành 15/11/2013 Hành động bắn súng'),
(4, 2, 'Đĩa Game PS4 Red Dead Redemption 2 Hệ US', 'Đĩa Game PS4 Red Dead Redemption 2.jpg', '940.000', '1 tháng', '1 đĩa game, hộp, sách hướng dẫn', 'Mới 100%', 'Không có', 'Còn hàng', 1, 'Giới thiệu:	Red Dead Redemption 2 là một trò chơi video phiêu lưu hành động theo chủ đề phương Tây sắp được phát triển và xuất bản bởi Rockstar Games. Nó được dự kiến ​​sẽ được phát hành cho PlayStation 4 và Xbox One vào ngày 26 tháng 10 năm 2018.\r\n'),
(5, 2, 'Đĩa Game PS4 Fallout 4 Game Of The Year Edition', 'Đĩa Game PS4 Fallout 4 Game Of The Year Edition.jpg', '500.000', '1 tháng', 'Kèm hộp', 'New ', 'Không có', 'Còn hàng', 0, 'Giới thiệu:	Fallout 4 là một game nhập vai hành động trực tuyến được phát triển bởi Bethesda Game Studios và được xuất bản bởi Bethesda Softworks, một phần của loạt phim Fallout. Phát hành cho Microsoft Windows, PlayStation 4 và Xbox One vào ngày 14 tháng 11 năm 2018, nó là một phần trước cho các trò chơi hàng loạt trước đó.'),
(6, 2, 'Đĩa Game PS4 Tales of Arise Hệ US', 'Đĩa Game PS4 Tales of Arise Hệ US.jpg', '990.000', '1 tháng', 'Kèm hướng dẫn', 'New', 'No', 'Còn hàng', 1, 'Giới thiệu:	Tales of Arise là một trò chơi nhập vai hành động được phát triển và phát hành bởi Bandai Namco Entertainment cho PlayStation 4'),
(7, 3, 'Đĩa Game PS4 Marvel\'s Spider-Man: Miles Morales Hệ US', 'Đĩa Game PS4 Marvel\'s Spider-ManMiles Morales Hệ US.jpg', '1.480.000', '1 tháng', 'Kèm hộp', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu:	Marvel\'s Spider-Man Miles Morales là một trò chơi phiêu lưu hành động năm 2020 được phát triển bởi Insomniac Games và được phát hành bởi Sony Interactive Entertainment cho PlayStation 4 và PlayStation 5.'),
(8, 3, 'Final Fantasy VII: Remake - Playstation 4 Hệ US', 'Final Fantasy VIIRemake Playstation 4 Hệ US.jpg', '980.000', '1 tháng', 'No', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu:	Final Fantasy VII Remake là một game hành động nhập vai sắp tới được hãng Square Enix đồng phát triển và phát hành cho PlayStation 4.'),
(9, 4, 'Đĩa Game PS4 It Takes Two Hệ US - New', 'Đĩa Game PS4 It Takes Two Hệ US.jpg', '880.000', '1 tháng', 'Kèm hộp', 'New', 'No', 'Còn hàng', 1, 'Giới thiệu:	It Takes Two là một trò chơi phiêu lưu hành động được phát triển bởi Hazelight Studios và được xuất bản bởi Electronic Arts dưới nhãn EA Originals.'),
(10, 4, 'Ghost Of Tsushima - Playstation 4', 'Ghost Of Tsushima - Playstation 4.jpg', '1.080.000', '1 tháng', 'No', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu :	Bối cảnh Tsushima vào năm 1274. Người chơi sẽ vào vai vị chiến binh Samurai cuối cùng của Nhật Bản thời bấy giờ, Jin Sakai và sứ mệnh bảo vệ quê hương của ông khỏi tay Quân Mông Cổ (dựa vào cuộc xâm lăng đầu tiên của Quân Mông Cổ vào Nhật Bản có thật trong lịch sử).'),
(11, 5, 'Đĩa Game PS4 Need For Speed Payback Hệ US', 'Đĩa Game PS4 Need For Speed Payback Hệ US.jpg', '750.000', '1 tháng', 'No', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu:	Need for Speed Payback là một trò chơi điện tử đua xe thế giới mở sắp phát hành vào năm 2017. Trò chơi được phát triển bởi Ghost Games và phát hành bởi Electronic Arts.'),
(12, 6, 'Đĩa Game PS4 NBA 2K22 Hệ US', 'Đĩa Game PS4 NBA 2K22 Hệ US.jpg', '1.050.000', '1 tháng', 'No', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu:	NBA 2K22 là một trò chơi điện tử mô phỏng bóng rổ được phát triển bởi Visual Con Concept và được xuất bản bởi 2K Sports, dựa trên Hiệp hội Bóng rổ Quốc gia. Đây là phần thứ 23 trong loạt phim NBA 2K và là phần kế thừa của NBA 2K21.'),
(13, 6, 'Đĩa Game PS4 FIFA 22', 'Đĩa Game PS4 FIFA 22.jpg', '880.000', '1 tháng', 'Tay cầm', 'New', ' Mã code', 'Hết hàng', 0, 'Ngày phát hành ban đầu:'),
(14, 7, 'Mortal Kombat 11 - Playstation 4', 'Mortal Kombat 11 - Playstation 4.jpg', '790.000', '1 tháng', 'No', 'New', 'No', 'Còn hàng', 0, 'Giới thiệu:	Mortal Kombat 11 là phần thứ 11 của trò chơi điện tử đối kháng Mortal Kombat, do NetherRealm Studios sản xuất và Warner Bros. Interactive Entertainment phân phối.'),
(15, 7, 'Đĩa Game PS4 Street Fighter V Champion Edition Hệ US', 'Đĩa Game PS4 Street Fighter V Champion Edition Hệ US.jpg', '950.000', '1 tháng ', 'No', 'New', 'No', 'Còn hàng', 0, 'Game Đối kháng 2020'),
(16, 4, 'Đĩa Game PS4 Death Stranding Hệ US', 'Đĩa Game PS4 Death Stranding Hệ US.jpg', '680.000', '1 Tháng', 'CD,Box', ' Mới 100%', 'Tay cầm', 'Còn hàng', 1, 'Giới thiệu:	Death Stranding là một trò chơi hành động sắp tới được phát triển bởi Kojima Productions. Đây là trò chơi đầu tiên của đạo diễn Hideo Kojima và Kojima Productions sau khi họ tan rã khỏi Konami vào năm 2015.'),
(17, 3, 'Đĩa Game PS4 Yakuza 6: The Song of Life', 'Đĩa Game PS4 Yakuza 6 The Song of Life.jpg', '880.000', '1 Tháng', 'Box', ' Mới 100%', 'không', 'Còn hàng', 1, 'Giá dự kiến là giá dành cho khách hàng đặt trướcGiá bán cho khách không đặt trước sẽ cao hơn.'),
(18, 5, 'Đĩa Game PS4 Ride 3 Hệ EU 8059617108519', 'Đĩa Game PS4 Ride 3 Hệ EU.jpg', '550.000', '1 tháng', 'CD,Box', ' Mới 100%', 'Tay cầm', 'Còn hàng', 1, 'Trải nghiệm game đua mô tô hoàn chỉnh và chuyên nghiệp với RIDE 3. Đua xe trên nhiều cung đường vòng quanh thế giới, thử nghiệm tốc độ'),
(19, 3, 'Đĩa Game PS4 God Of War 4 ', 'Đĩa Game PS4 God Of War 4 .jpg', '980.000', '1 Tháng', 'CD,Box', ' Mới 100%', 'No', 'Còn hàng', 1, 'Cam kết đĩa game gốc đúng như hình\r\nĐĩa game này chơi được trên tất cả máy PS4 ngoài thị trường, không bị kén đĩa');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen_truy_cap` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `email`, `mat_khau`, `quyen_truy_cap`) VALUES
(1, 'Khoak3@gmail.com', 'Khoa123', 2),
(2, 'Khoadanglenguyen2000@gmail.com', 'Khoa123', 1),
(3, 'bao@gmail.com', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blsanpham`
--
ALTER TABLE `blsanpham`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_dm` (`id_dm`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blsanpham`
--
ALTER TABLE `blsanpham`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dmsanpham`
--
ALTER TABLE `dmsanpham`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

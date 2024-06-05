-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 06:43 PM
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
-- Database: `webbansach`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `machitietdonhang` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `giatien` int(11) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`machitietdonhang`, `madonhang`, `masanpham`, `giatien`, `soluong`) VALUES
(35, 38, 11, 51000, 1),
(36, 39, 12, 40000, 1),
(37, 40, 12, 40000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `machuyenmuc` int(11) NOT NULL,
  `tenchuyenmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`machuyenmuc`, `tenchuyenmuc`) VALUES
(1, 'Sách Giáo Khoa'),
(5, 'Truyện Đọc'),
(6, 'Truyện tranh '),
(8, 'Khoa học'),
(10, 'Truyện trinh thám');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`madonhang`, `makhachhang`, `trangthai`, `tongtien`, `diachi`, `thoigian`) VALUES
(38, 5, 3, 51000, '15, lda, alsdfj, laksdjfl, ', '2024-05-14'),
(39, 5, 3, 40000, ', , , , ', '2024-05-14'),
(40, 5, 3, 40000, ', , , , ', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `taikhoan` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT 1,
  `thoigian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tenkhachhang`, `diachi`, `sodienthoai`, `taikhoan`, `matkhau`, `trangthai`, `thoigian`) VALUES
(1, 'Nguyễn Văn A', 'Hà Nội', '0379962045', 'nguyenvana', 'nguyenvana', 1, '2024-04-03'),
(2, 'Chu Minh Nam', 'Hà Nội', '0379966666', 'chuminhnam', '123456', 1, '2024-04-03'),
(4, 'Tạ Thị Lạng', 'Lạng Sơn', '0382673684', 'tathilang', '123456789', 1, '0000-00-00'),
(5, 'Cao Hoàng Long', 'Diễn Châu, Nghệ An', '0382673325', 'caolong', '123456789', 1, '2024-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manhanvien` int(11) NOT NULL,
  `taikhoan` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sodienthoai` varchar(11) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manhanvien`, `taikhoan`, `matkhau`, `hoten`, `sodienthoai`, `diachi`) VALUES
(1, 'admin', 'admin', 'Cao Hoàng Long', '0382673325', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `giagoc` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `machuyenmuc` int(11) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `mota` varchar(500) NOT NULL,
  `anhchinh` text NOT NULL,
  `anhphu1` text NOT NULL,
  `anhphu2` text NOT NULL,
  `anhphu3` text NOT NULL,
  `anhphu4` text NOT NULL,
  `motachitiet` text NOT NULL,
  `loaisanpham` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `giagoc`, `giaban`, `machuyenmuc`, `tag`, `mota`, `anhchinh`, `anhphu1`, `anhphu2`, `anhphu3`, `anhphu4`, `motachitiet`, `loaisanpham`) VALUES
(8, 'Sách Bộ 6 Cuốn Ehon Cùng Con Học Cách Ứng Xử', 234000, 198900, 5, 'ehon, Muki, sách trẻ con', 'Ehon Kỹ Năng Sống - Cùng Con Học Cách Cư Xử (1-6 tuổi)  Trẻ nhỏ lớn lên cần rất nhiều sự giúp đỡ và giáo dục của ba mẹ, ba mẹ hãy cùng đồng hành cùng con trên chặng đường phát triển này để có', 'admin/upload/a363501_bschehon.jpg', 'admin/upload/bP95924Eimage_219463.jpg', 'admin/upload/cP95925Eimage_219462.jpg', 'admin/upload/dP95929Eimage_219465.jpg', 'admin/upload/eP96176E19d40a020d2d7e89dfb9b6ec328886ec.jpg', 'Sách Bộ 6 Cuốn Ehon Cùng Con Học Cách Ứng XửThông tin tác giả\r\nNhiều tác giả\r\nVào trang riêng của tác giả\r\nXem tất cả các sách của tác giả\r\nEhon Kỹ Năng Sống - Cùng Con Học Cách Cư Xử (1-6 tuổi) \r\n\r\n Trẻ nhỏ lớn lên cần rất nhiều sự giúp đỡ và giáo dục của ba mẹ, ba mẹ hãy cùng đồng hành cùng con trên chặng đường phát triển này để có một tương lai tươi đẹp. Vậy nên trẻ nhỏ rất cần sự sát cánh của ba mẹ. \r\n\r\n Bộ sách này là những “bức tranh” sinh động, gần gũi về cuộc sống hàng ngày của các bạn nhỏ như Gấu con, Nhím con, Sư Tử con, Sóc nhỏ... Với các màu sắc nổi bật, hình ảnh sinh động, câu từ gần gũi sẽ giúp các bé học được những bài học kĩ năng sống bổ ích về cách ứng xử trong cuộc sống. \r\n\r\n Trọn bộ 6 quyển bao gồm: - Dọn Dẹp Nào Sóc Nhỏ! - Lười Nhỏ Cảm Ơn Con! - Nhím Con Ai Lại Nói Trống Không Như Thế! - Vui Lên Nào Sư Tử Con! - Cánh Cụt Con Cho Mẹ Xin Lỗi Nhé! - Chú Ý Lắng Nghe Nhé Gấu Con!', 0),
(9, '1111 - Nhật Ký Sáu Vạn Dặm Trên Yên Xe Cà Tàng', 325000, 276000, 5, 'NXB trẻ, 1111 nhật ký', 'Trần Đặng Đăng Khoa bắt đầu hành trình vạn dặm vòng quanh thế giới từ ngày 01/06/2017 tại cửa khẩu Mộc Bài (Tây Ninh). Với chiếc xe 100cc mang biển số Việt Nam, trong hành trình kéo dài 1.111 ngày,', 'admin/upload/a363119_1111.jpg', 'admin/upload/bP97058Escreenshot_2022_11_07_160303.jpg', 'admin/upload/c363119_1111.jpg', 'admin/upload/d363119_1111.jpg', 'admin/upload/e363119_1111.jpg', '1111 - Nhật Ký Sáu Vạn Dặm Trên Yên Xe Cà TàngThông tin tác giả\r\nTrần Đặng Đăng Khoa\r\nVào trang riêng của tác giả\r\nXem tất cả các sách của tác giả\r\nTrần Đặng Đăng Khoa bắt đầu hành trình vạn dặm vòng quanh thế giới từ ngày 01/06/2017 tại cửa khẩu Mộc Bài (Tây Ninh). Với chiếc xe 100cc mang biển số Việt Nam, trong hành trình kéo dài 1.111 ngày, anh đã đặt chân tới 7 châu lục, 65 quốc gia và vùng lãnh thổ, băng qua đường xích đạo 8 lần. \r\nMỗi ngày trong chuyến đi - trừ ba tháng cuối cùng kẹt ở Mozambique vì dịch COVID-19 - anh đều ghi lại nhật ký, và cuốn sách này chính là tập hợp những trang viết của anh theo mốc thời gian. Những trang du ký vút nhanh, xoay đều như những vòng bánh xe, cuốn ta theo cùng trong chuyến đi “không hẹn ngày về”. Những ngoạn mục của thiên nhiên, những sặc sỡ của văn hóa, những bình dị ấm áp của cuộc sống con người, cộng với những kinh nghiệm và trải nghiệm rất cá nhân của một kẻ độc hành ham phiêu lưu, tất cả hứa hẹn sẽ thỏa mãn trí tưởng tượng và tò mò của độc giả, truyền cảm hứng cho những đam mê xê dịch biến thành những chuyến đi tiếp nối.\r\n\r\nSách còn bao gồm Phụ lục: Từ ý tưởng đến hiện thực cung cấp tất cả các thông tin cần thiết để độc giả thực hiện một chuyến đi vòng quanh thế giới bằng xe máy. Phụ lục được thực hiện dưới dạng file sách để làm quà tặng cho độc giả. Độc giả quét mã QR trên bìa sách để đọc và tải file.', 0),
(10, 'Ehon - Mọt Sách Mogu - Câu Chuyện Của Những Giọt Nước (Từ 3 Tuổi Trở Lên)', 65000, 55000, 5, 'Nổi bật, truyện', 'Một cuốn sách ảnh khoa học giải thích sự tuần hoàn của nước trên trái đất với nội dung và hình ảnh vô cùng bắt mắt, sống động.Tóm tắtHành trình của nước như thế nào nhỉ? Liệu có phải trái đất đã có nước ngay từ khi sinh ra?', 'admin/upload/aP96472Escreenshot_2022_09_05_110204.jpg', 'admin/upload/bP97058Escreenshot_2022_11_07_160303.jpg', 'admin/upload/cP96472Escreenshot_2022_09_05_110204.jpg', 'admin/upload/dbP97058Escreenshot_2022_11_07_160303.jpg', 'admin/upload/eP96472Escreenshot_2022_09_05_110204.jpg', 'Ehon - Mọt Sách Mogu - Câu Chuyện Của Những Giọt Nước (Từ 3 Tuổi Trở Lên)\r\nMột cuốn sách ảnh khoa học giải thích sự tuần hoàn của nước trên trái đất với nội dung và hình ảnh vô cùng bắt mắt, sống động.\r\n\r\nTóm tắt\r\n\r\nHành trình của nước như thế nào nhỉ? Liệu có phải trái đất đã có nước ngay từ khi sinh ra? Nước đi khắp thế giới và là tài nguyên tái chế cuối cùng có thể được sử dụng vì sự tuần hoàn của nó. Chúng ta hãy cũng xem xét kỹ hơn cách thức hoạt động của chu kì tuần hoàn nước trong câu chuyện này nhé.\r\n\r\nĐối tượng độc giả\r\n\r\nĐọc cho bé: từ 3 tuổi trở lên\r\n\r\nBé tự đọc: từ 6 tuổi trở lên', 2),
(11, 'Chú Thợ Cắt Tóc Xoẹt Xoẹt', 59000, 51000, 5, 'Mới, Truyện Đọc', 'Sách dành cho các bạn từ 3-6 tuổi, cùng tìm hiểu xem công việc của chú Xoẹt Xoẹt nhé', 'admin/upload/aP96470Escreenshot_2022_09_05_110421.jpg', 'admin/upload/bP96470Escreenshot_2022_09_05_110421.jpg', 'admin/upload/cP96470Escreenshot_2022_09_05_110421.jpg', 'admin/upload/dP96470Escreenshot_2022_09_05_110421.jpg', 'admin/upload/eP96470Escreenshot_2022_09_05_110421.jpg', 'Chú Thợ Cắt Tóc Xoẹt XoẹtThông tin tác giả\r\nEriko Inui, Toshio Nishimura\r\nVào trang riêng của tác giả\r\nXem tất cả các sách của tác giả\r\nSách dành cho các bạn từ 3-6 tuổi, cùng tìm hiểu xem công việc của chú Xoẹt Xoẹt nhé', 3),
(12, 'Sách Nối', 47000, 40000, 5, 'Truyện, Mới, Nối', 'Sách hay dành cho bé 1 tuổi, còn các bạn 6 tuổi thì rất hào hứng vì có thể tự đọc được những câu chữ ngắn, hình ảnh sách sinh động.', 'admin/upload/aP96471Escreenshot_2022_09_05_110527.jpg', 'admin/upload/bP96471Escreenshot_2022_09_05_110527.jpg', 'admin/upload/cP96471Escreenshot_2022_09_05_110527.jpg', 'admin/upload/dP96471Escreenshot_2022_09_05_110527.jpg', 'admin/upload/eP96471Escreenshot_2022_09_05_110527.jpg', 'NốiThông tin tác giả\r\nTaro Miura\r\nVào trang riêng của tác giả\r\nXem tất cả các sách của tác giả\r\nSách hay dành cho bé 1 tuổi, còn các bạn 6 tuổi thì rất hào hứng vì có thể tự đọc được những câu chữ ngắn, hình ảnh sách sinh động.', 3),
(13, 'Truyện Doraemon - Cuộc phiêu lưu ở xứ sở thần tiên', 180000, 150000, 6, 'Truyện tranh, Hài hước', 'Truyện tranh hài hước', 'admin/upload/aaaDoraemon.webp', 'admin/upload/bbbDoraemon02.webp', 'admin/upload/ccDoraemon3.jpg', 'admin/upload/deDoraemon5.jpg', 'admin/upload/eDoraemon4.webp', 'Truyện kể về chú mèo máy Doraemon ', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`machitietdonhang`);

--
-- Indexes for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`machuyenmuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manhanvien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `machitietdonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `machuyenmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

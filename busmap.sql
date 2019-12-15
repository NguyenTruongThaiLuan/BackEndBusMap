-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2019 lúc 05:48 PM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `busmap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bus`
--

CREATE TABLE `bus` (
  `Id` varchar(10) COLLATE utf8mb4_german2_ci NOT NULL,
  `IdBusInfo` int(11) NOT NULL,
  `Latitude` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL,
  `Longitude` varchar(100) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `businfo`
--

CREATE TABLE `businfo` (
  `Id` int(11) DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `Description` text COLLATE utf8mb4_german2_ci NOT NULL,
  `Amount` double NOT NULL,
  `AmountForStudent` double NOT NULL,
  `AdditionalInfo` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `Time` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `RouteLength` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `RunTime` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `TripDistance` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `NumberOfTrips` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `businfo`
--

INSERT INTO `businfo` (`Id`, `Name`, `Description`, `Amount`, `AmountForStudent`, `AdditionalInfo`, `Time`, `RouteLength`, `RunTime`, `TripDistance`, `NumberOfTrips`) VALUES
(24, 'Bến Xe Miền Đông - Hóc Môn', 'Xe buýt số 24 (Hướng dẫn: Bãi Xe Buýt 19/5‎→Bến Xe Miền Đông) có 63 stops khởi hành từ Bãi Xe Buýt 19/5 và kết thúc tại Bến Xe Miền Đông. Tổng quan thời gian biểu xe buýt 24 cho tuần tới: Bắt đầu hoạt động lúc 04:00 và kết thúc vào lúc 19:45. Các ngày hoạt động trong tuần này: ngày thường.', 7000, 3000, '24 có 63 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 75 phút.', '04:00 - 20:30', '26.10 km', '75', '5 - 12 phút', '350 chuyến/ngày'),
(7, 'Bến xe Chợ Lớn - Gò vấp', 'Xe buýt số 07 (Hướng dẫn: Bãi Hậu Cần Số 1‎→Bến Xe Chợ Lớn) có 51 stops khởi hành từ Bãi Hậu Cần Số 1 và kết thúc tại Bến Xe Chợ Lớn.', 6000, 3000, 'Xe buýt số 07 có 51 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 68 phút.', '05:00 - 19:30', '15.85', '70', '15', '140'),
(18, 'Bến Thành - Chợ Hiệp Thành', 'Xe buýt số 18 (Hướng dẫn: Hiệp Thành‎→Tđh Xe Buýt Sài Gòn) có 65 stops khởi hành từ Hiệp Thành và kết thúc tại Tđh Xe Buýt Sài Gòn.', 6000, 3000, 'Xe buýt số 18 có 65 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 75 phút.', '05:00 - 20:30', '22.73', '75', '7 - 15', '220'),
(148, 'Bến xe Miền Tây - Gò Vấp', 'Xe buýt số 148 (Hướng dẫn: Bãi Hậu Cần Số 1‎→Bến Xe Miền Tây) có 52 stops khởi hành từ Bãi Hậu Cần Số 1 và kết thúc tại Bến Xe Miền Tây.', 6000, 3000, 'Xe buýt số 148 có 52 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 57 phút.', '05:00 - 18:45', '16.90', '57 - 62', '11 - 15', '140');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `busstation`
--

CREATE TABLE `busstation` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `Latitude` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `Longitude` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_german2_ci NOT NULL,
  `Street` varchar(50) COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Đang đổ dữ liệu cho bảng `busstation`
--

INSERT INTO `busstation` (`Id`, `Name`, `Latitude`, `Longitude`, `Address`, `Street`) VALUES
(1, 'Bến xe Chợ Lớn', '10.751253128052', '106.65256500244', 'GA HKXB CHO LON', 'Lê Quang Sung'),
(2, 'Chu Văn An', '10.750232', '106.652554', '27', 'Tháp Mười'),
(3, 'Tháp Mười', '10.750326', '106.653036', '13C-13D', 'Tháp Mười'),
(4, 'Chợ Kim Biên', '10.750732', '106.655075', '11-12', 'Hải Thượng Lãn Ông'),
(5, 'Bưu điện Quận 5', '10.751368', '106.659203', '14-16', 'Châu Văn Liêm'),
(6, 'Rạp Đại Quang', '10.752566', '106.658937', '68', 'Châu Văn Liêm'),
(7, 'Bệnh viện Chợ Rẫy', '10.754553', '106.659232', '357-359', 'Hồng Bàng'),
(8, 'Đại học Y Dược', '10.75536', '106.663191', '217', 'Hồng Bàng'),
(9, 'Bệnh viện Đại học Y Dược', '10.755671', '106.664683', '215', 'Hồng Bàng'),
(10, 'Công viên Văn Lang', '10.757151', '106.669613', '132A', 'Nguyễn Tri Phương'),
(11, 'Trường Trần Khai Nguyên', '10.758706', '106.66928', '138G-138F', 'Nguyễn Tri Phương'),
(12, 'Đại học kinh tế', '10.761386', '106.668564', '234-236', 'Nguyễn Tri Phương'),
(13, 'Trường Hoàng Văn Thụ', '10.763073', '106.668213', '336', 'Nguyễn Tri Phương'),
(14, 'Chợ Nhật Tảo', '10.765397', '106.667702', '426', 'Nguyễn Tri Phương'),
(15, 'Học viện quân y', '10.767052', '106.667313', '476', 'Nguyễn Tri Phương'),
(16, 'Bệnh viện nhi đồng', '10.769518', '106.670609', 'Đối diện 350', 'Đường 3/2'),
(17, 'Nhà thờ Vinh Sơn', '10.770269', '106.672166', '273-275', 'Đường 3/2'),
(18, 'Nhà hát Hòa Bình', '10.771855', '106.674805', '183A-183B', 'Đường 3/2'),
(19, 'Học viện hành chính quốc gia', '10.77323', '106.677015', '113', 'Đường 3/2'),
(20, 'BV Bình Dân', '10.774421', '106.67885', '51', 'Đường 3/2'),
(21, 'Maximark', '10.776977', '106.68099', '3', 'Đường 3/2'),
(22, 'Nhà thờ Dòng chúa Cứu thế', '10.780805', '106.681305', '25', 'Kỳ Đồng'),
(23, 'Trần Quốc Thảo', '10.784504', '106.683022', '5', 'Kỳ Đồng'),
(24, 'Chợ Nguyễn Văn Trỗi', '10.787041', '106.679535', '332 - 334', 'Lê Văn Sỹ'),
(25, 'Trần Quang Diệu', '10.788373', '106.678299', '24 - 26', 'Trần Quang Diệu'),
(26, 'Bệnh viện An Sinh', '10.791023', '106.678123', '8', 'Trần Huy Liệu'),
(27, 'Ngã Tư Nguyễn Văn Trỗi', '10.793028', '106.677992', '60', 'Trần Huy Liệu'),
(28, 'Trung tâm văn hóa Quận Phú Nhuận', '10.795421', '106.676093', '68', 'Nguyễn Văn Trỗi'),
(29, 'Học viện Hàng kHông', '10.79677', '106.673797', '104', 'Nguyễn Văn Trỗi'),
(30, 'Bệnh viện Quận Phú Nhuận', '10.798525', '106.670793', '142', 'Nguyễn Văn Trỗi'),
(31, 'Cây xăng Quân khu 7', '10.799642', '106.66891', '180', 'Nguyễn Văn Trỗi'),
(32, 'Cổng trước SVĐ Quân Khu 7', '10.800848', '106.66678', 'A2 (Sân vận động Quân khu 7)', 'Phan Đình Giót'),
(33, 'Rạp Tân Sơn Nhất', '10.80244', '106.665924', '2B (Hông sân vận động Quân Khu 7)', 'Phổ Quang'),
(34, 'Trung tâm sát hạch lái xe', '10.805417', '106.6667', '66 (Công ty Xe khách Sài Gòn)', 'Phổ Quang'),
(35, 'Cây xăng Quân đội', '10.807221', '106.668495', '96-100', 'Phổ Quang'),
(36, 'Trường Đại học Kỹ thuật Công nghệ', '10.808204', '106.672236', '140', 'Phổ Quang'),
(37, 'Cuối công viên Gia Định', '10.809727', '106.674929', '7', 'Hoàng Minh Giám'),
(38, 'Ngã ba Đặng Văn Sâm', '10.811382', '106.676399', 'Ngã ba Đặng Văn Sâm', 'Hoàng Minh Giám'),
(39, 'Đầu công viên Gia Định', '10.8135', '106.678222', 'Cây xanh số 7', 'Hoàng Minh Giám'),
(40, 'Trạm đầu Nguyễn Thái Sơn', '10.815178', '106.679596', '36', 'Nguyễn Thái Sơn'),
(41, 'Bệnh Viện 175', '10.81674', '106.680847', '90', 'Nguyễn Thái Sơn'),
(42, 'Ngã Ba Phạm Ngũ Lão', '10.819923', '106.683378', '182 (148B)', 'Nguyễn Thái Sơn'),
(43, 'Ngã Ba Phạm Ngũ Lão', '10.820508', '106.683828', '246 (180)', 'Nguyễn Thái Sơn'),
(44, 'Trường Đại học Công nghiệp', '10.822789', '106.685636', '320', 'Nguyễn Thái Sơn'),
(45, 'UBND Phường 5, Quận Gò Vấp', '10.82507', '106.687881', '396', 'Nguyễn Thái Sơn'),
(46, 'BÃI HẬU CẦN SỐ 1', '10.82361125946', '106.69189453125', 'BÃI HẬU CẦN SỐ 1', 'Phan Văn Trị'),
(47, 'Phú Xuân', '10.703697', '106.732317', 'Bến Phú Xuân', 'Đường số 15B'),
(48, 'Chợ Phú Xuân', '10.701088', '106.73817', '1678-1680 (26/1-26/2)', 'Huỳnh Tấn Phát'),
(49, 'Nha khoa Khánh Minh', '10.6984', '106.738785', '1901B', 'Huỳnh Tấn Phát'),
(50, 'Công an Thị trấn Nhà Bè', '10.695869', '106.739666', '42/7', 'Huỳnh Tấn Phát'),
(51, 'Trường Lâm Văn Bền', '10.69345', '106.740546', '57/4', 'Huỳnh Tấn Phát'),
(52, 'Chùa Lá', '10.690113', '106.741694', '4/11C', 'Huỳnh Tấn Phát'),
(53, 'Ngân hàng Agribank', '10.686992', '106.743314', '2132', 'Huỳnh Tấn Phát'),
(54, 'Chùa Tháp Võ', '10.683998', '106.74538', '536', 'Huỳnh Tấn Phát'),
(55, 'Đào Tông Nguyên', '10.682021', '106.746764', 'Đối diện 23/3', 'Huỳnh Tấn Phát'),
(56, 'Công Tiến Thọ', '10.679275', '106.750803', '15/6B', 'Huỳnh Tấn Phát'),
(57, 'Ngã Ba Bờ Đăng', '10.6784', '106.753196', '12/8H', 'Huỳnh Tấn Phát'),
(58, 'Ngã Ba Bờ Đăng', '10.67775', '106.751747', '32', 'Nguyễn Bình'),
(59, 'Nguyễn Bình', '10.676867', '106.747803', '98', 'Nguyễn Bình'),
(60, 'Nguyễn Bình', '10.676117', '106.744499', '192 (13/1)', 'Nguyễn Bình'),
(61, 'Đình Đức Hưng Thạnh', '10.67545', '106.741402', '243 ( Đình Đức Hưng Thạnh)', 'Nguyễn Bình'),
(62, 'Trường tiểu học Nguyễn Bình', '10.67475', '106.738251', 'Đối diện 269A (Đ/d 1/2C)', 'Nguyễn Bình'),
(63, 'Kho bạc Huyện Nhà Bè', '10.67385', '106.734154', 'UBND Huyện Nhà Bè', 'Nguyễn Bình'),
(64, 'Cầu Mương Chuối', '10.673017', '106.730316', '486 (17/6)', 'Nguyễn Bình'),
(65, 'Cầu Bà Chiêm', '10.671817', '106.724968', '578 (5/12)', 'Nguyễn Bình'),
(66, 'Đối diện Bưu điện Long Thới, Nguyễn Văn Tạo', '10.670545', '106.72375', 'Đối diện Bưu điện Long Thới', 'Nguyễn Văn Tạo'),
(67, 'Vòng xoay Long Thới', '10.667366', '106.724791', '74', 'Nguyễn Văn Tạo'),
(68, 'Hàng Tre', '10.663817', '106.725929', 'Đối diện 206', 'Nguyễn Văn Tạo'),
(69, 'Công an Nhà Bè', '10.656775', '106.728176', 'Công an huyện Nhà Bè', 'Nguyễn Văn Tạo'),
(70, 'UBND Xã Long Thới', '10.6529', '106.729431', '288 (239)', 'Nguyễn Văn Tạo'),
(71, 'Chợ Bà Chồi', '10.650117', '106.730316', '372 (Chợ Bà Chồi)', 'Nguyễn Văn Tạo'),
(72, 'Công ty may Đại Sơn', '10.647797', '106.73103', '482B', 'Nguyễn Văn Tạo'),
(73, 'Trung tâm dạy nghề', '10.642867', '106.732651', '568 (Đ/d Trung tâm dạy nghề Nhà Bè )', 'Nguyễn Văn Tạo'),
(74, 'Cầu Hiệp Phước', '10.634253', '106.735284', '718', 'Nguyễn Văn Tạo'),
(75, 'Ngã tư Long Hậu', '10.630992', '106.736023', '780 (116/5)', 'Nguyễn Văn Tạo'),
(76, 'Cầu Đồng Điền', '10.626165', '106.737118', 'CHVLXD Thành Công', 'Nguyễn Văn Tạo'),
(77, 'Trường PTTH Long Thới', '10.622401', '106.737939', 'Kế 280 (Cửa sắt Hoàng Cẩn)', 'Nguyễn Văn Tạo'),
(78, 'Chùa Phước Linh', '10.617386', '106.739017', 'Đối diện cửa hàng Ba Thủy', 'Nguyễn Văn Tạo'),
(79, 'Công an Huyện Nhà Bè', '10.609535', '106.739983', 'Cột điện 141P', 'Nguyễn Văn Tạo'),
(80, 'Nhà Tưởng niệm Liệt sỹ Nhà Bè', '10.604421', '106.741072', '1/58A', 'Nguyễn Văn Tạo'),
(81, 'Hiệp Phước', '10.602154', '106.741635', 'Bến Hiệp Phước', 'Nguyễn Văn Tạo'),
(82, 'TĐH xe buýt Sài Gòn', '10.767676', '106.689362', 'TĐH xe buýt Sài Gòn- CV 23/9', 'Lê Lai'),
(83, 'Trống Đồng', '10.773046', '106.690813', 'Đối diện số 89', 'Cách Mạng Tháng Tám'),
(84, 'Bệnh viện Mắt TPHCM', '10.776461', '106.684467', '108', 'Cách Mạng Tháng Tám'),
(85, 'Vòng xoay Dân Chủ', '10.778516', '106.680481', '132C - 132D', 'Cách Mạng Tháng Tám'),
(86, 'Ngã Ba Chí Hòa', '10.780703', '106.676345', '276 Bis', 'Cách Mạng Tháng Tám'),
(87, 'Công viên Lê Thị Riêng', '10.785814', '106.66693', '542', 'Cách Mạng Tháng Tám'),
(88, 'Ngã tư Bảy Hiền', '10.792649', '106.653991', '1236 (544)', 'Cách Mạng Tháng Tám'),
(89, 'Hội Chợ Triển lãm Tân Bình', '10.796122', '106.655145', '20 (B9)', 'Xuân Diệu'),
(90, 'Hoàng Hoa Thám', '10.796053', '106.647747', '162T', 'Trường Chinh'),
(91, 'Tân Kỳ Tân Quý', '10.804732', '106.635629', '638', 'Trường Chinh'),
(92, 'Khu Công Nghiệp tân Bình', '10.821644', '106.630447', '906', 'Trường Chinh'),
(93, 'Siêu thị Chợ Lớn', '10.82868', '106.624594', '189/4', 'Trường Chinh'),
(94, 'Bến xe An Sương', '10.844971', '106.614026', '116', 'Quốc lộ 22'),
(95, 'Trung tâm văn hóa Quận 12', '10.85466', '106.607863', 'Trung tâm văn hóa Quận 12', 'Quốc lộ 22'),
(96, 'Ngã 3 Củ Cải', '10.861856', '106.602844', '8/6B', 'Quốc lộ 22'),
(97, 'Ngã 3 Bùi Môn', '10.875053', '106.593626', '3/19', 'Quốc lộ 22'),
(98, 'Cây xăng Thành Công - Ngã tư Giếng Nước', '10.877482', '106.591748', '3/88C', 'Quốc lộ 22'),
(99, 'Ngã tư Hóc Môn', '10.884615', '106.586732', '206', 'Quốc lộ 22'),
(100, 'Ngã 3 Hồng Châu', '10.899733', '106.576191', '2/63', 'Quốc lộ 22'),
(101, 'Xí nghiệp', '10.904305', '106.572956', '186', 'Quốc lộ 22'),
(102, 'Chợ chiều Tân Phú Trung', '10.931343', '106.553714', '102', 'Quốc lộ 22'),
(103, 'Trường Tân Phú Trung', '10.939433', '106.540335', 'Trường Tân Phú Trung', 'Quốc lộ 22'),
(104, 'Ngã tư Quân đội', '10.947133', '106.524635', '40', 'Quốc lộ 22'),
(105, 'Hồng Đào', '10.95003', '106.520369', '140', 'Quốc lộ 22'),
(106, 'Điện lực Củ Chi - Ngã 3 Việt Kiều', '10.961317', '106.501617', '400', 'Quốc lộ 22'),
(107, 'Bến xe Củ Chi', '10.971617', '106.482099', 'Bến xe Củ Chi', 'Quốc lộ 22'),
(108, 'Bến xe Miền Tây', '10.740705', '106.618317', 'Bến xe Miền Tây', 'Kinh Dương Vương'),
(109, '49-51 (317), Kinh Dương Vương', '10.743396', '106.62136', '49-51 (317)', 'Kinh Dương Vương'),
(110, 'Dương Tự Quản', '10.744919', '106.623162', '7', 'Kinh Dương Vương'),
(111, 'Mũi Tàu Phú Lâm', '10.745362', '106.624466', '1031C', 'Hậu Giang'),
(112, 'Đồng Quê', '10.746311', '106.628092', '919', 'Hậu Giang'),
(113, 'Bình Phú', '10.747623', '106.633526', '733-735', 'Hậu Giang'),
(114, 'Nguyễn Văn Luông', '10.74826', '106.636192', '517-519', 'Hậu Giang'),
(115, 'Chợ Hoa', '10.748814', '106.638359', '411', 'Hậu Giang'),
(116, 'Chợ Minh Phụng', '10.750869', '106.642619', '122', 'Minh Phụng'),
(117, 'Cây Gõ', '10.753468', '106.643096', '242', 'Minh Phụng'),
(118, 'Cây Gõ', '10.755328', '106.643486', '248-250', 'Minh Phụng'),
(119, 'UBND P2, Q11', '10.757536', '106.643874', '328', 'Minh Phụng'),
(120, 'THCS Lê Anh Xuân', '10.759729', '106.64426', '382', 'Minh Phụng'),
(121, 'Đội Cung', '10.761849', '106.644592', '470', 'Minh Phụng'),
(122, 'công an P10', '10.763865', '106.644928', '618', 'Minh Phụng'),
(123, 'Trường Lê Quý Đôn', '10.767508', '106.64296', '310', 'Lạc Long Quân'),
(124, 'Trạm Đăng Kiểm', '10.770437', '106.645073', '432', 'Lạc Long Quân'),
(125, 'Âu Cơ', '10.773831', '106.647461', '612', 'Lạc Long Quân'),
(126, 'Ngã Tư Âu Cơ', '10.775206', '106.648471', '632', 'Lạc Long Quân'),
(127, 'Chùa Giác Lâm', '10.77821', '106.64992', '794', 'Lạc Long Quân'),
(128, 'Ni sư Huỳnh Liên', '10.781066', '106.650093', '930', 'Lạc Long Quân'),
(129, 'Công Thọ', '10.784291', '106.651009', '1100', 'Lạc Long Quân'),
(130, 'Cây xăng Lạc Long Quân', '10.788412', '106.651851', '1274', 'Lạc Long Quân'),
(131, 'Bệnh viện Thống Nhất', '10.792101', '106.653074', 'Bệnh viện Thống Nhất', 'Lý Thường Kiệt'),
(132, 'Hội Chợ Triển lãm Tân Bình', '10.79472', '106.655198', '605 (Bệnh viện Tân Bình)', 'Hoàng Văn Thụ'),
(133, 'Nhà hàng Đông Phương', '10.798556', '106.659216', '431', 'Hoàng Văn Thụ'),
(134, 'Phạm Văn Hai', '10.800469', '106.663578', '259', 'Hoàng Văn Thụ'),
(135, 'Trạm Bảo Tàng Miền Đông', '10.800237', '106.666372', '247', 'Hoàng Văn Thụ'),
(136, 'Cổng trước SVĐ Quân Khu 7', '10.800848', '106.66678', 'A2 (Sân vận động Quân khu 7)', 'Phan Đình Giót'),
(137, 'Rạp Tân Sơn Nhất', '10.80244', '106.665924', '2B (Hông sân vận động Quân Khu 7)', 'Phổ Quang'),
(138, 'Trung tâm sát hạch lái xe', '10.805417', '106.6667', '66 (Công ty Xe khách Sài Gòn)', 'Phổ Quang'),
(139, 'Cây xăng Quân đội', '10.807221', '106.668495', '96-100', 'Phổ Quang'),
(140, 'Trường Đại học Kỹ thuật Công nghệ', '10.808204', '106.672236', '140', 'Phổ Quang'),
(141, 'Cuối công viên Gia Định', '10.809727', '106.674929', '7', 'Hoàng Minh Giám'),
(142, 'Ngã ba Đặng Văn Sâm', '10.811382', '106.676399', 'Ngã ba Đặng Văn Sâm', 'Hoàng Minh Giám'),
(143, 'Đầu công viên Gia Định', '10.8135', '106.678222', 'Cây xanh số 7', 'Hoàng Minh Giám'),
(144, 'Trạm đầu Nguyễn Thái Sơn', '10.815178', '106.679596', '36', 'Nguyễn Thái Sơn'),
(145, 'Bệnh Viện 175', '10.81674', '106.680847', '90', 'Nguyễn Thái Sơn'),
(146, 'Ngã Ba Phạm Ngũ Lão', '10.819923', '106.683378', '182 (148B)', 'Nguyễn Thái Sơn'),
(147, 'Ngã Ba Phạm Ngũ Lão', '10.820508', '106.683828', '246 (180)', 'Nguyễn Thái Sơn'),
(148, 'Trường Đại học Công nghiệp', '10.822789', '106.685636', '320', 'Nguyễn Thái Sơn'),
(149, 'UBND Phường 5, Quận Gò Vấp', '10.82507', '106.687881', '396', 'Nguyễn Thái Sơn'),
(150, 'BÃI HẬU CẦN SỐ 1', '10.82361125946', '106.69189453125', 'BÃI HẬU CẦN SỐ 1', 'Phan Văn Trị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trip`
--

CREATE TABLE `trip` (
  `Id` int(11) NOT NULL,
  `IdBus` int(11) DEFAULT NULL,
  `IdBusStation` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trip`
--

INSERT INTO `trip` (`Id`, `IdBus`, `IdBusStation`, `Name`) VALUES
(1, 7, 1, ''),
(2, 7, 2, ''),
(3, 7, 3, ''),
(4, 7, 4, ''),
(5, 7, 5, ''),
(6, 7, 6, ''),
(7, 7, 7, ''),
(8, 7, 8, ''),
(9, 7, 9, ''),
(10, 7, 10, ''),
(11, 7, 11, ''),
(12, 7, 12, ''),
(13, 7, 13, ''),
(14, 7, 14, ''),
(15, 7, 15, ''),
(16, 7, 16, ''),
(17, 7, 17, ''),
(18, 7, 18, ''),
(19, 7, 19, ''),
(20, 7, 20, ''),
(21, 7, 21, ''),
(22, 7, 22, ''),
(23, 7, 23, ''),
(24, 7, 24, ''),
(25, 7, 25, ''),
(26, 7, 26, ''),
(27, 7, 27, ''),
(28, 7, 28, ''),
(29, 7, 29, ''),
(30, 7, 30, ''),
(31, 7, 31, ''),
(32, 7, 32, ''),
(33, 7, 33, ''),
(34, 7, 34, ''),
(35, 7, 35, ''),
(36, 7, 36, ''),
(37, 7, 37, ''),
(38, 7, 38, ''),
(39, 7, 39, ''),
(40, 7, 40, ''),
(41, 7, 41, ''),
(42, 7, 42, ''),
(43, 7, 43, ''),
(44, 7, 44, ''),
(45, 7, 45, ''),
(46, 7, 46, ''),
(47, 18, 47, ''),
(48, 18, 48, ''),
(49, 18, 49, ''),
(50, 18, 50, ''),
(51, 18, 51, ''),
(52, 18, 52, ''),
(53, 18, 53, ''),
(54, 18, 54, ''),
(55, 18, 55, ''),
(56, 18, 56, ''),
(57, 18, 57, ''),
(58, 18, 58, ''),
(59, 18, 59, ''),
(60, 18, 60, ''),
(61, 18, 61, ''),
(62, 18, 62, ''),
(63, 18, 63, ''),
(64, 18, 64, ''),
(65, 18, 65, ''),
(66, 18, 66, ''),
(67, 18, 67, ''),
(68, 18, 68, ''),
(69, 18, 69, ''),
(70, 18, 70, ''),
(71, 18, 71, ''),
(72, 18, 72, ''),
(73, 18, 73, ''),
(74, 18, 74, ''),
(75, 18, 75, ''),
(76, 18, 76, ''),
(77, 18, 77, ''),
(78, 18, 78, ''),
(79, 18, 79, ''),
(80, 18, 80, ''),
(81, 18, 81, ''),
(82, 24, 82, ''),
(83, 24, 83, ''),
(84, 24, 84, ''),
(85, 24, 85, ''),
(86, 24, 86, ''),
(87, 24, 87, ''),
(88, 24, 88, ''),
(89, 24, 89, ''),
(90, 24, 90, ''),
(91, 24, 91, ''),
(92, 24, 92, ''),
(93, 24, 93, ''),
(94, 24, 94, ''),
(95, 24, 95, ''),
(96, 24, 96, ''),
(97, 24, 97, ''),
(98, 24, 98, ''),
(99, 24, 99, ''),
(100, 24, 100, ''),
(101, 24, 101, ''),
(102, 24, 102, ''),
(103, 24, 103, ''),
(104, 24, 104, ''),
(105, 24, 105, ''),
(106, 24, 106, ''),
(107, 24, 107, ''),
(108, 148, 108, ''),
(109, 148, 109, ''),
(110, 148, 110, ''),
(111, 148, 111, ''),
(112, 148, 112, ''),
(113, 148, 113, ''),
(114, 148, 114, ''),
(115, 148, 115, ''),
(116, 148, 116, ''),
(117, 148, 117, ''),
(118, 148, 118, ''),
(119, 148, 119, ''),
(120, 148, 120, ''),
(121, 148, 121, ''),
(122, 148, 122, ''),
(123, 148, 123, ''),
(124, 148, 124, ''),
(125, 148, 125, ''),
(126, 148, 126, ''),
(127, 148, 127, ''),
(128, 148, 128, ''),
(129, 148, 129, ''),
(130, 148, 130, ''),
(131, 148, 131, ''),
(132, 148, 132, ''),
(133, 148, 133, ''),
(134, 148, 134, ''),
(135, 148, 135, ''),
(136, 148, 136, ''),
(137, 148, 137, ''),
(138, 148, 138, ''),
(139, 148, 139, ''),
(140, 148, 140, ''),
(141, 148, 141, ''),
(142, 148, 142, ''),
(143, 148, 143, ''),
(144, 148, 144, ''),
(145, 148, 145, ''),
(146, 148, 146, ''),
(147, 148, 147, ''),
(148, 148, 148, ''),
(149, 148, 149, ''),
(150, 148, 150, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `busstation`
--
ALTER TABLE `busstation`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `busstation`
--
ALTER TABLE `busstation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `trip`
--
ALTER TABLE `trip`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

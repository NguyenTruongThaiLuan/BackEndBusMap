-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2019 lúc 07:49 AM
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
(24, 'Bến Xe Miền Đông - Hóc Môn', 'Xe buýt số 24 (Hướng dẫn: Bãi Xe Buýt 19/5‎→Bến Xe Miền Đông) có 63 stops khởi hành từ Bãi Xe Buýt 19/5 và kết thúc tại Bến Xe Miền Đông. Tổng quan thời gian biểu xe buýt 24 cho tuần tới: Bắt đầu hoạt động lúc 04:00 và kết thúc vào lúc 19:45. Các ngày hoạt động trong tuần này: ngày thường.', 7000, 3000, '24 có 63 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 75 phút.', '04:00 - 20:30', '26.10', '75', '5 - 12', '350'),
(7, 'Bến xe Chợ Lớn - Gò vấp', 'Xe buýt số 07 (Hướng dẫn: Bãi Hậu Cần Số 1‎→Bến Xe Chợ Lớn) có 51 stops khởi hành từ Bãi Hậu Cần Số 1 và kết thúc tại Bến Xe Chợ Lớn.', 6000, 3000, 'Xe buýt số 07 có 51 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 68 phút.', '05:00 - 19:30', '15.85', '70', '15', '140'),
(18, 'Bến Thành - Chợ Hiệp Thành', 'Xe buýt số 18 (Hướng dẫn: Hiệp Thành‎→Tđh Xe Buýt Sài Gòn) có 65 stops khởi hành từ Hiệp Thành và kết thúc tại Tđh Xe Buýt Sài Gòn.', 6000, 3000, 'Xe buýt số 18 có 65 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 75 phút.', '05:00 - 20:30', '22.73', '75', '7 - 15', '220'),
(148, 'Bến xe Miền Tây - Gò Vấp', 'Xe buýt số 148 (Hướng dẫn: Bãi Hậu Cần Số 1‎→Bến Xe Miền Tây) có 52 stops khởi hành từ Bãi Hậu Cần Số 1 và kết thúc tại Bến Xe Miền Tây.', 6000, 3000, 'Xe buýt số 148 có 52 stops và tổng thời lượng chuyến đi trên tuyến đường này là khoảng 57 phút.', '05:00 - 18:45', '16.90', '57 - 62', '11 - 15', '140'),
(0, 'Di chuyển đến các quận huyện nội và ngoại thành', 'Xe buýt số 7, 18, 24, 148 (Di chuyển đến các quận huyện nội và ngoại thành) có 173 stops. Tổng quan thời gian biểu xe buýt 7, 18, 24, 148 cho tuần tới: Bắt đầu hoạt động lúc 04:00 và kết thúc vào lúc 20:30. Các ngày hoạt động trong tuần này: ngày thường.', 7000, 3000, '7, 18, 24 & 148 có 173 stops và tổng thời lượng chuyến đi trên các tuyến đường là khoảng 56 - 75 phút.', '04:00 - 20:30', '26.10', '56 - 75', '5 - 12', '140 - 350');

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
(47, 'TĐH xe buýt Sài Gòn', '10.767676', '106.689362', 'TĐH xe buýt Sài Gòn- CV 23/9', 'Lê Lai'),
(48, 'Tôn Thất Tùng', '10.768651', '106.690555', 'Đối diện 204', 'Lê Lai'),
(49, 'Nguyễn Thị Nghĩa', '10.769778', '106.693436', 'Đối diện 96', 'Lê Lai'),
(50, 'Khách sạn New world', '10.77107', '106.696714', 'Đối diện 1A Phạm Hồng Thái', 'Lê Lai'),
(51, 'Bến Thành F', '10.770472', '106.698456', 'Bến Thành', 'Phạm Ngũ Lão'),
(52, 'Hàm Nghi', '10.770943', '106.699562', '163', 'Hàm Nghi'),
(53, 'Chợ Củ', '10.770822', '106.70196', '89A', 'Hàm Nghi'),
(54, 'Đền Thờ Ấn Giáo, Pasteur', '10.773595', '106.70139', 'Đền Thờ Ấn Giáo', 'Pasteur'),
(55, 'Lê Thánh Tôn', '10.775088', '106.700768', '144', 'Pasteur'),
(56, 'Lý Tự Trọng', '10.777089', '106.699657', '158', 'Pasteur'),
(57, 'Công viên 30/4', '10.778308', '106.698333', '178', 'Pasteur'),
(58, 'Nhà thờ Đức Bà', '10.780794', '106.69912', '47', 'Lê Duẩn'),
(59, 'Cty Xổ Số Kiến Thiết', '10.78417', '106.702303', 'Sofitel Plaza', 'Lê Duẩn'),
(60, 'Đại học Khoa học xã hội nhân văn', '10.785778', '106.702663', '10', 'Đinh Tiên Hoàng'),
(61, 'SVĐ Hoa Lư', '10.7872', '106.701027', '2', 'Đinh Tiên Hoàng'),
(62, 'Nguyễn Đình Chiểu', '10.788253', '106.699898', '18', 'Đinh Tiên Hoàng'),
(63, 'Điện Biên Phủ', '10.789892', '106.698135', '68', 'Đinh Tiên Hoàng'),
(64, 'Cầu Bông', '10.796032', '106.696225', '96', 'Đinh Tiên Hoàng'),
(65, 'Bệnh viện Bình Thạnh', '10.79864', '106.696419', '114', 'Đinh Tiên Hoàng'),
(66, 'Lăng Ông Bà Chiểu', '10.80107', '106.696579', 'Đối diện 129', 'Đinh Tiên Hoàng'),
(67, 'UBND Quận Bình Thạnh', '10.802819', '106.695786', '6-8', 'Phan Đăng Lưu'),
(68, 'Bệnh Viện Gia Định', '10.803488', '106.695013', '2', 'Nơ Trang Long'),
(69, 'Hồ bơi Đại Đồng', '10.806355', '106.695131', '48', 'Nơ Trang Long'),
(70, 'Ngã Tư Bình Hòa', '10.80871', '106.694418', '276', 'Lê Quang Định'),
(71, 'Chùa Hưng Gia Tự ', '10.810033', '106.692637', '336', 'Lê Quang Định'),
(72, 'Ngã Tư Xóm Gà', '10.811666', '106.69085', '424', 'Lê Quang Định'),
(73, 'Chùa Già Lam', '10.814522', '106.68974', '488', 'Lê Quang Định'),
(74, 'Ngã Ba Nguyên Hồng', '10.817873', '106.689278', '566', 'Lê Quang Định'),
(75, 'Trường Đại học Công nghiệp', '10.821646', '106.688759', '28', 'Nguyễn Văn Nghi'),
(76, 'Siêu thị Văn Lang', '10.826804', '106.679354', 'Siêu thị Văn Lang', 'Quang Trung'),
(77, 'Công ty 32', '10.827779', '106.676559', '138', 'Quang Trung'),
(78, 'Nhà Thờ Xóm Thuốc', '10.829186', '106.672606', '190', 'Quang Trung'),
(79, 'UBND Quận Gò Vấp', '10.831641', '106.668502', '328', 'Quang Trung'),
(80, 'VKS nhân dân Quận Gò Vấp', '10.833374', '106.666313', '402 - 404', 'Quang Trung'),
(81, 'Chùa Huỳnh Kim', '10.835234', '106.663315', '548', 'Quang Trung'),
(82, 'Siêu thị Bình Dân, Quang Trung', '10.835988', '106.660675', '628A', 'Quang Trung'),
(83, 'Chợ Thông Tây', '10.836836', '106.657355', '734', 'Quang Trung'),
(84, 'Trường THPT Nguyễn Công Trứ', '10.838', '106.652741', '872 (96H)', 'Quang Trung'),
(85, 'Dệt may Phương Đông', '10.838654', '106.650091', '930 (Kho 97)', 'Quang Trung'),
(86, 'Làng SOS', '10.839881', '106.646621', '1010', 'Quang Trung'),
(87, 'Công ty Đồng Tâm', '10.842279', '106.643348', '1134', 'Quang Trung'),
(88, 'Ngã Tư Cầu cống', '10.843743', '106.641186', '1246', 'Quang Trung'),
(89, 'Chợ Cầu', '10.845532', '106.638435', '1324', 'Quang Trung'),
(90, 'Chợ Cầu', '10.848253', '106.634363', '113', 'Quang Trung'),
(91, 'Cầu vượt Quang Trung', '10.849784', '106.63221', '170', 'Quang Trung'),
(92, 'Công viên phần mềm Quang Trung', '10.852995', '106.626434', 'Công viên phần mềm Quang Trung', 'Tô Ký'),
(93, 'Đông Bắc', '10.855729', '106.623039', '288', 'Tô Ký'),
(94, 'Điện lực Hóc Môn', '10.856714', '106.620909', 'Điền lực Hóc Môn', 'Tô Ký'),
(95, 'Chiếc nón Kỳ Diệu', '10.857816', '106.619294', '312', 'Tô Ký'),
(96, 'chợ Tân Chánh Hiệp', '10.859275', '106.617867', '414', 'Tô Ký'),
(97, 'Doanh trại Quân Đội', '10.86154', '106.617427', 'A49', 'Tô Ký'),
(98, 'Trường Đại học Lao động Xã hội', '10.863368', '106.616945', '72', 'Tô Ký'),
(99, 'Ngã 3 Bầu', '10.867625', '106.615899', 'Lô A4D', 'Nguyễn Ảnh Thủ'),
(100, 'Trạm y tế', '10.869577', '106.617981', '772', 'Nguyễn Ảnh Thủ'),
(101, 'Trung tâm y tế Quận 12', '10.871676', '106.619911', '927', 'Nguyễn Ảnh Thủ'),
(102, 'Quán Năm Lửa', '10.87539', '106.623355', '785', 'Nguyễn Ảnh Thủ'),
(103, 'Ngã tư Nước đá', '10.878219', '106.625812', '753', 'Nguyễn Ảnh Thủ'),
(104, 'Trường tiểu học Nguyễn Trãi', '10.88118', '106.627995', 'Trường Nguyễn Trãi', 'Nguyễn Ảnh Thủ'),
(105, 'Ngã 3 Đông Quang', '10.882892', '106.630087', '581-577', 'Nguyễn Ảnh Thủ'),
(106, 'Cây xăng Hiệp Thành', '10.880437', '106.634513', '46/8', 'Nguyễn Ảnh Thủ'),
(107, 'Cửa hàng Ngọc Sơn', '10.879073', '106.636975', '86H', 'Nguyễn Ảnh Thủ'),
(108, 'Công an Hiệp Thành', '10.878066', '106.638708', '425', 'Nguyễn Ảnh Thủ'),
(109, 'Ngân hàng Agribank', '10.877192', '106.640645', '296', 'Nguyễn Ảnh Thủ'),
(110, 'Hiệp Thành', '10.877449989319', '106.64203643799', 'BÃI XE HIỆP THÀNH', 'Nguyễn Ảnh Thủ'),
(111, 'Bến xe Miền Đông', '10.814733', '106.711294', 'Bến xe Miền Đông', 'Đinh Bộ Lĩnh'),
(112, 'Ngã Tư Nguyễn Xí', '10.812625', '106.709223', '291-293', 'Đinh Bộ Lĩnh'),
(113, 'Ngã Tư Chu Văn An', '10.809759', '106.709143', '183', 'Đinh Bộ Lĩnh'),
(114, 'Cầu Đinh Bộ Lĩnh', '10.806908', '106.709341', '85', 'Đinh Bộ Lĩnh'),
(115, 'Trạm xăng dầu', '10.804421', '106.709395', '17', 'Đinh Bộ Lĩnh'),
(116, 'Nhà thờ Hàng Xanh', '10.803177', '106.708032', '96', 'Bạch Đằng'),
(117, 'Chùa Bồ Đề', '10.803483', '106.704015', '246', 'Bạch Đằng'),
(118, 'Tòa Án nhân dân Quận Bình Thạnh', '10.803873', '106.701187', '288', 'Bạch Đằng'),
(119, 'Chợ Bà Chiểu', '10.803125', '106.699374', '368', 'Bạch Đằng'),
(120, 'Trường TH Nguyễn Đình Chiểu', '10.803546', '106.698409', '22-24', 'Lê Quang Định'),
(121, 'Cây Xăng 178', '10.80656', '106.696976', '164', 'Lê Quang Định'),
(122, 'Ngã Tư Bình Hòa', '10.80871', '106.694418', '276', 'Lê Quang Định'),
(123, 'Chùa Hưng Gia Tự ', '10.810033', '106.692637', '336', 'Lê Quang Định'),
(124, 'Ngã Tư Xóm Gà', '10.811666', '106.69085', '424', 'Lê Quang Định'),
(125, 'Chùa Già Lam', '10.814522', '106.68974', '488', 'Lê Quang Định'),
(126, 'Ngã Ba Nguyên Hồng', '10.817873', '106.689278', '566', 'Lê Quang Định'),
(127, 'Trường Đại học Công nghiệp', '10.821646', '106.688759', '28', 'Nguyễn Văn Nghi'),
(128, 'Ngã Ba Nguyễn Du', '10.825329', '106.684998', '250', 'Nguyễn Văn Nghi'),
(129, 'Chi cục Thuế Quận Gò Vấp', '10.826383', '106.682732', '308', 'Nguyễn Văn Nghi'),
(130, 'Siêu thị Văn Lang', '10.826804', '106.679354', 'Siêu thị Văn Lang', 'Quang Trung'),
(131, 'Công ty 32', '10.827779', '106.676559', '138', 'Quang Trung'),
(132, 'Nhà Thờ Xóm Thuốc', '10.829186', '106.672606', '190', 'Quang Trung'),
(133, 'UBND Quận Gò Vấp', '10.831641', '106.668502', '328', 'Quang Trung'),
(134, 'VKS nhân dân Quận Gò Vấp', '10.833374', '106.666313', '402 - 404', 'Quang Trung'),
(135, 'Chùa Huỳnh Kim', '10.835234', '106.663315', '548', 'Quang Trung'),
(136, 'Siêu thị Bình Dân, Quang Trung', '10.835988', '106.660675', '628A', 'Quang Trung'),
(137, 'Chợ Thông Tây', '10.836836', '106.657355', '734', 'Quang Trung'),
(138, 'Trường THPT Nguyễn Công Trứ', '10.838', '106.652741', '872 (96H)', 'Quang Trung'),
(139, 'Dệt may Phương Đông', '10.838654', '106.650091', '930 (Kho 97)', 'Quang Trung'),
(140, 'Làng SOS', '10.839881', '106.646621', '1010', 'Quang Trung'),
(141, 'Công ty Đồng Tâm', '10.842279', '106.643348', '1134', 'Quang Trung'),
(142, 'Ngã Tư Cầu cống', '10.843743', '106.641186', '1246', 'Quang Trung'),
(143, 'Chợ Cầu', '10.845532', '106.638435', '1324', 'Quang Trung'),
(144, 'Chợ Cầu', '10.847842', '106.634422', '154', 'Quang Trung'),
(145, 'Cầu vượt Quang Trung', '10.849784', '106.63221', '170', 'Quang Trung'),
(146, 'Công viên phần mềm Quang Trung', '10.852995', '106.626434', 'Công viên phần mềm Quang Trung', 'Tô Ký'),
(147, 'Cửa hàng Vinh Phú', '10.854931', '106.624161', '79', 'Tô Ký'),
(148, 'Công viên PM Quang Trung', '10.852871', '106.626099', '389', 'Tô Ký'),
(149, 'Chung cư Thái An', '10.84907', '106.624348', 'Chung cư Thái An', 'Quốc lộ 1A'),
(150, 'Trạm đăng kiểm', '10.8475', '106.621059', 'Trạm đăng kiểm', 'Quốc lộ 1A'),
(151, 'bãi xe Tây Nam', '10.845935', '106.618758', 'Đối diện bến xe Tây Nam', 'Quốc lộ 1A'),
(152, 'Cầu vượt An Sương', '10.843623', '106.616081', 'Xưởng Z735', 'Quốc lộ 1A'),
(153, 'Bến xe An Sương', '10.844971', '106.614026', '116', 'Quốc lộ 22'),
(154, 'Trạm cây xăng', '10.845487', '106.61371', '128', 'Quốc lộ 22'),
(155, 'Cư xá Bà Điểm', '10.845845', '106.613474', '7C', 'Quốc lộ 22'),
(156, 'Cây xăng Quân Đội', '10.850034', '106.610845', '2', 'Quốc lộ 22'),
(157, 'Cảnh sát giao thông số 5', '10.851009', '106.610186', 'Kế cảnh sát giao thông số 5', 'Quốc lộ 22'),
(158, 'Trung tâm văn hóa Quận 12', '10.85466', '106.607863', 'Trung tâm văn hóa Quận 12', 'Quốc lộ 22'),
(159, 'Trung tâm Văn hóa quận 12', '10.855634', '106.607578', 'Hông Trung tâm văn hóa Quận 12', 'Nguyễn Ảnh Thủ'),
(160, 'Trường Cao đẳng Giao thông vận tải', '10.857552', '106.608839', '8', 'Nguyễn Ảnh Thủ'),
(161, 'Nhà thờ Trung Chánh', '10.859981', '106.610422', '349', 'Nguyễn Ảnh Thủ'),
(162, 'Chợ Vạn Hạnh', '10.862873', '106.612412', '7', 'Nguyễn Ảnh Thủ'),
(163, 'Nhà sách Nguyễn Hữu Cầu', '10.865112', '106.614016', '1C', 'Nguyễn Ảnh Thủ'),
(164, 'Ngã 3 Bầu', '10.867839813232', '106.61540222168', 'Ct dệt Sài Gòn', 'Tô Ký'),
(165, 'Trạm bưu điện', '10.876423', '106.610856', '40/9D', 'Tô Ký'),
(166, 'Thép Đăng Khoa', '10.872714', '106.612921', '515', 'Tô Ký'),
(167, 'Nghĩa trang liệt sỹ Trung Chánh', '10.86831', '106.615169', 'Nghĩa trang liệt sỹ Trung Chánh', 'Tô Ký'),
(168, 'Cống Đôi', '10.880301', '106.609192', 'Đối diện 370L', 'Tô Ký'),
(169, 'Trạm cây xăng', '10.88639', '106.604462', '14/1', 'Tô Ký'),
(170, 'Cây Bàng', '10.876423', '106.611178', '1/1', 'Tô Ký'),
(171, 'Ngã 3 Chùa', '10.887975', '106.601688', '4/36', 'Quang Trung'),
(172, 'Chợ Hóc Môn', '10.888287', '106.598663', '1/18', 'Quang Trung'),
(173, 'Ngân hàng Nông Nghiệp', '10.888333', '106.594368', '13/3 (số củ 12)', 'Lý Thường Kiệt '),
(174, 'Thanh Trúc', '10.88715', '106.590866', '78', 'Lý Thường Kiệt '),
(175, 'Ngã tư Hóc Môn', '10.884733', '106.58757', '51/8', 'Lý Thường Kiệt '),
(176, 'Ngã tư Hóc Môn', '10.884615', '106.586732', '206', 'Quốc lộ 22'),
(177, 'Bích Phương', '10.886817', '106.58522', '58/2', 'Quốc lộ 22'),
(178, 'Bãi xe buýt 19/5', '10.893196', '106.583473', 'BÃI XE BUÝT 19/5', 'Hương Lộ 60B'),
(179, 'Bến xe Miền Tây', '10.740705', '106.618317', 'Bến xe Miền Tây', 'Kinh Dương Vương'),
(180, '49-51 (317), Kinh Dương Vương', '10.743396', '106.62136', '49-51 (317)', 'Kinh Dương Vương'),
(181, 'Dương Tự Quản', '10.744919', '106.623162', '7', 'Kinh Dương Vương'),
(182, 'Mũi Tàu Phú Lâm', '10.745362', '106.624466', '1031C', 'Hậu Giang'),
(183, 'Đồng Quê', '10.746311', '106.628092', '919', 'Hậu Giang'),
(184, 'Bình Phú', '10.747623', '106.633526', '733-735', 'Hậu Giang'),
(185, 'Nguyễn Văn Luông', '10.74826', '106.636192', '517-519', 'Hậu Giang'),
(186, 'Chợ Hoa', '10.748814', '106.638359', '411', 'Hậu Giang'),
(187, 'Chợ Minh Phụng', '10.750869', '106.642619', '122', 'Minh Phụng'),
(188, 'Cây Gõ', '10.753468', '106.643096', '242', 'Minh Phụng'),
(189, 'Cây Gõ', '10.755328', '106.643486', '248-250', 'Minh Phụng'),
(190, 'UBND P2, Q11', '10.757536', '106.643874', '328', 'Minh Phụng'),
(191, 'THCS Lê Anh Xuân', '10.759729', '106.64426', '382', 'Minh Phụng'),
(192, 'Đội Cung', '10.761849', '106.644592', '470', 'Minh Phụng'),
(193, 'công an P10', '10.763865', '106.644928', '618', 'Minh Phụng'),
(194, 'Trường Lê Quý Đôn', '10.767508', '106.64296', '310', 'Lạc Long Quân'),
(195, 'Trạm Đăng Kiểm', '10.770437', '106.645073', '432', 'Lạc Long Quân'),
(196, 'Âu Cơ', '10.773831', '106.647461', '612', 'Lạc Long Quân'),
(197, 'Ngã Tư Âu Cơ', '10.775206', '106.648471', '632', 'Lạc Long Quân'),
(198, 'Chùa Giác Lâm', '10.77821', '106.64992', '794', 'Lạc Long Quân'),
(199, 'Ni sư Huỳnh Liên', '10.781066', '106.650093', '930', 'Lạc Long Quân'),
(200, 'Công Thọ', '10.784291', '106.651009', '1100', 'Lạc Long Quân'),
(201, 'Cây xăng Lạc Long Quân', '10.788412', '106.651851', '1274', 'Lạc Long Quân'),
(202, 'Bệnh viện Thống Nhất', '10.792101', '106.653074', 'Bệnh viện Thống Nhất', 'Lý Thường Kiệt'),
(203, 'Hội Chợ Triển lãm Tân Bình', '10.79472', '106.655198', '605 (Bệnh viện Tân Bình)', 'Hoàng Văn Thụ'),
(204, 'Nhà hàng Đông Phương', '10.798556', '106.659216', '431', 'Hoàng Văn Thụ'),
(205, 'Phạm Văn Hai', '10.800469', '106.663578', '259', 'Hoàng Văn Thụ'),
(206, 'Trạm Bảo Tàng Miền Đông', '10.800237', '106.666372', '247', 'Hoàng Văn Thụ'),
(207, 'Cổng trước SVĐ Quân Khu 7', '10.800848', '106.66678', 'A2 (Sân vận động Quân khu 7)', 'Phan Đình Giót'),
(208, 'Rạp Tân Sơn Nhất', '10.80244', '106.665924', '2B (Hông sân vận động Quân Khu 7)', 'Phổ Quang'),
(209, 'Trung tâm sát hạch lái xe', '10.805417', '106.6667', '66 (Công ty Xe khách Sài Gòn)', 'Phổ Quang'),
(210, 'Cây xăng Quân đội', '10.807221', '106.668495', '96-100', 'Phổ Quang'),
(211, 'Trường Đại học Kỹ thuật Công nghệ', '10.808204', '106.672236', '140', 'Phổ Quang'),
(212, 'Cuối công viên Gia Định', '10.809727', '106.674929', '7', 'Hoàng Minh Giám'),
(213, 'Ngã ba Đặng Văn Sâm', '10.811382', '106.676399', 'Ngã ba Đặng Văn Sâm', 'Hoàng Minh Giám'),
(214, 'Đầu công viên Gia Định', '10.8135', '106.678222', 'Cây xanh số 7', 'Hoàng Minh Giám'),
(215, 'Trạm đầu Nguyễn Thái Sơn', '10.815178', '106.679596', '36', 'Nguyễn Thái Sơn'),
(216, 'Bệnh Viện 175', '10.81674', '106.680847', '90', 'Nguyễn Thái Sơn'),
(217, 'Ngã Ba Phạm Ngũ Lão', '10.819923', '106.683378', '182 (148B)', 'Nguyễn Thái Sơn'),
(218, 'Ngã Ba Phạm Ngũ Lão', '10.820508', '106.683828', '246 (180)', 'Nguyễn Thái Sơn'),
(219, 'Trường Đại học Công nghiệp', '10.822789', '106.685636', '320', 'Nguyễn Thái Sơn'),
(220, 'UBND Phường 5, Quận Gò Vấp', '10.82507', '106.687881', '396', 'Nguyễn Thái Sơn'),
(221, 'BÃI HẬU CẦN SỐ 1', '10.82361125946', '106.69189453125', 'BÃI HẬU CẦN SỐ 1', 'Phan Văn Trị');

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
(82, 18, 82, ''),
(83, 18, 83, ''),
(84, 18, 84, ''),
(85, 18, 85, ''),
(86, 18, 86, ''),
(87, 18, 87, ''),
(88, 18, 88, ''),
(89, 18, 89, ''),
(90, 18, 90, ''),
(91, 18, 91, ''),
(92, 18, 92, ''),
(93, 18, 93, ''),
(94, 18, 94, ''),
(95, 18, 95, ''),
(96, 18, 96, ''),
(97, 18, 97, ''),
(98, 18, 98, ''),
(99, 18, 99, ''),
(100, 18, 100, ''),
(101, 18, 101, ''),
(102, 18, 102, ''),
(103, 18, 103, ''),
(104, 18, 104, ''),
(105, 18, 105, ''),
(106, 18, 106, ''),
(107, 18, 107, ''),
(108, 18, 108, ''),
(109, 18, 109, ''),
(110, 18, 110, ''),
(111, 24, 111, ''),
(112, 24, 112, ''),
(113, 24, 113, ''),
(114, 24, 114, ''),
(115, 24, 115, ''),
(116, 24, 116, ''),
(117, 24, 117, ''),
(118, 24, 118, ''),
(119, 24, 119, ''),
(120, 24, 120, ''),
(121, 24, 121, ''),
(122, 24, 122, ''),
(123, 24, 123, ''),
(124, 24, 124, ''),
(125, 24, 125, ''),
(126, 24, 126, ''),
(127, 24, 127, ''),
(128, 24, 128, ''),
(129, 24, 129, ''),
(130, 24, 130, ''),
(131, 24, 131, ''),
(132, 24, 132, ''),
(133, 24, 133, ''),
(134, 24, 134, ''),
(135, 24, 135, ''),
(136, 24, 136, ''),
(137, 24, 137, ''),
(138, 24, 138, ''),
(139, 24, 139, ''),
(140, 24, 140, ''),
(141, 24, 141, ''),
(142, 24, 142, ''),
(143, 24, 143, ''),
(144, 24, 144, ''),
(145, 24, 145, ''),
(146, 24, 146, ''),
(147, 24, 147, ''),
(148, 24, 148, ''),
(149, 24, 149, ''),
(150, 24, 150, ''),
(151, 24, 151, ''),
(152, 24, 152, ''),
(153, 24, 153, ''),
(154, 24, 154, ''),
(155, 24, 155, ''),
(156, 24, 156, ''),
(157, 24, 157, ''),
(158, 24, 158, ''),
(159, 24, 159, ''),
(160, 24, 160, ''),
(161, 24, 161, ''),
(162, 24, 162, ''),
(163, 24, 163, ''),
(164, 24, 164, ''),
(165, 24, 165, ''),
(166, 24, 166, ''),
(167, 24, 167, ''),
(168, 24, 168, ''),
(169, 24, 169, ''),
(170, 24, 170, ''),
(171, 24, 171, ''),
(172, 24, 172, ''),
(173, 24, 173, ''),
(174, 24, 174, ''),
(175, 24, 175, ''),
(176, 24, 176, ''),
(177, 24, 177, ''),
(178, 24, 178, ''),
(179, 148, 179, ''),
(180, 148, 180, ''),
(181, 148, 181, ''),
(182, 148, 182, ''),
(183, 148, 183, ''),
(184, 148, 184, ''),
(185, 148, 185, ''),
(186, 148, 186, ''),
(187, 148, 187, ''),
(188, 148, 188, ''),
(189, 148, 189, ''),
(190, 148, 190, ''),
(191, 148, 191, ''),
(192, 148, 192, ''),
(193, 148, 193, ''),
(194, 148, 194, ''),
(195, 148, 195, ''),
(196, 148, 196, ''),
(197, 148, 197, ''),
(198, 148, 198, ''),
(199, 148, 199, ''),
(200, 148, 200, ''),
(201, 148, 201, ''),
(202, 148, 202, ''),
(203, 148, 203, ''),
(204, 148, 204, ''),
(205, 148, 205, ''),
(206, 148, 206, ''),
(207, 148, 207, ''),
(208, 148, 208, ''),
(209, 148, 209, ''),
(210, 148, 210, ''),
(211, 148, 211, ''),
(212, 148, 212, ''),
(213, 148, 213, ''),
(214, 148, 214, ''),
(215, 148, 215, ''),
(216, 148, 216, ''),
(217, 148, 217, ''),
(218, 148, 218, ''),
(219, 148, 219, ''),
(220, 148, 220, ''),
(221, 148, 221, '');

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT cho bảng `trip`
--
ALTER TABLE `trip`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

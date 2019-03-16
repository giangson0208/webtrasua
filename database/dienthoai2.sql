-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 23, 2018 lúc 06:48 PM
-- Phiên bản máy phục vụ: 10.1.25-MariaDB
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
('21', 'Trà nhật đậu đỏ', 1, 42000, 3, 7),
('21', 'Trà Sữa Kim Cương Đen Okinawa', 1, 42000, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(17, 'Trà', 0),
(18, 'Trà sữa', 17),
(19, 'Trà hoa quả', 17),
(20, 'Macchiato', 17),
(21, 'Đồ uống đặc biệt', 17),
(22, 'Bánh tráng miệng', 0),
(23, 'Bánh ngọt', 22),
(24, 'Bánh kem', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(21, 5, 'ssadasd', 'sadsadas', 1696945990, 'giangson@gmail.com', '2018-06-23', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotro`
--

CREATE TABLE `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hotro`
--

INSERT INTO `hotro` (`idht`, `chude`, `noidung`, `hoten`, `dienthoai`, `email`, `ngaygui`) VALUES
(2, 'Điện thoại', 'Làm ăn uy tín, chất lượng. Cảm ơn website rất nhiều.', 'Nguyễn Thành Đạt', 978164307, 'thanhdat21293@gmail.com', '2014-05-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-05-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thuong', '2014-05-26', 0),
(4, 'Thành Đạt', 'thanhdat21293', '96e79218965eb72c92a549dd5a330112', '1993-12-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thượng', '2014-06-01', 1),
(5, 'ssadasd', 'pdc150', '4297f44b13955235245b2497399d7a93', '2018-06-06', 'nam', 'giangson@gmail.com', 1696945990, 'sadsadas', '2018-06-22', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasx`
--

CREATE TABLE `nhasx` (
  `idnsx` int(11) NOT NULL,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(84, 'Hồng Trà', '201806231707522018514151332-hongtra.jpg', '', '<p>Hồng tr&agrave; Cozy được chế biến từ những b&uacute;p tr&agrave; tr&ecirc;n đỉnh n&uacute;i cao bốn m&ugrave;a m&acirc;y phủ tạo n&ecirc;n hương vị thuần khiết đặc biệt m&agrave; kh&ocirc;ng nơi n&agrave;o c&oacute; được. Kh&aacute;c với tr&agrave; đen, Hồng Tr&agrave; vẫn giữ được vị ch&aacute;t m&ocirc;i, ngọt họng trong khi thưởng thức tr&agrave;. Với c&ocirc;ng nghệ chế biến đặc biệt đ&atilde; tạo cho Hồng tr&agrave; Cozy một m&agrave;u nước hồng đỏ, trong s&aacute;ng, vị dịu.</p>\r\n', 20, 0, 25000, 0, '', 18, '2018-06-23', 0),
(85, 'Trà sữa Panda', '20180623163341tra-sua-panda-hoang-gia-1510629720-1-4206532-1510669027.jpg', '', '<p>Ly n&agrave;y tr&acirc;n ch&acirc;u ngập tr&agrave;n đầy cả miệng ly. Gồm 2 loại l&agrave; tr&acirc;n ch&acirc;u đen v&agrave; tr&acirc;n ch&acirc;u sợi h&uacute;t v&agrave;o cho cảm gi&aacute;c mềm dẻo v&ocirc; c&ugrave;ng th&uacute; vị.</p>\r\n', 20, 0, 35000, 0, '', 18, '2018-06-23', 0),
(86, 'Trà nhật đậu đỏ', '20180623163618tra-sua-toco-toco-khai-truong-chi-nhanh-quan-4-giam-gia-20-84be40f0636350444379669973.jpg', '', '<p>Được pha chế theo c&ocirc;ng thức ri&ecirc;ng biệt với bột matcha 100% Nhật Bản, Tr&agrave; Nhật đậu đỏ c&oacute; m&ugrave;i thơm đặc trưng, một ch&uacute;t ch&aacute;t nhẹ từ matcha c&ugrave;ng vị thơm ngậy của sữa. Th&ecirc;m topping đậu đỏ b&ugrave;i b&ugrave;i, ngọt mềm, rất dễ &quot;g&acirc;y nghiện&quot;.</p>\r\n', 20, 1, 42000, 0, '', 18, '2018-06-23', 0),
(87, 'Hồng trà kem dừa', '201806231708192018623144120-tra-sua-toco.jpg', '', '<p>HỒNG TR&Agrave; KEM DỪA&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ff3/1.5/16/2764.png?_nc_eui2=AeE4uWv54s7e6EmxVVeMhTx3xoAj5gKbBrD9-aDV18lTgfW__P197oKEJmvsO6vJrutHbIQEEhz8BzIGIs5tj-lHCxDKgCc8tjFLqZ3qEJgmbA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />&lt;3&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ff3/1.5/16/2764.png?_nc_eui2=AeE4uWv54s7e6EmxVVeMhTx3xoAj5gKbBrD9-aDV18lTgfW__P197oKEJmvsO6vJrutHbIQEEhz8BzIGIs5tj-lHCxDKgCc8tjFLqZ3qEJgmbA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />&lt;3&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ff3/1.5/16/2764.png?_nc_eui2=AeE4uWv54s7e6EmxVVeMhTx3xoAj5gKbBrD9-aDV18lTgfW__P197oKEJmvsO6vJrutHbIQEEhz8BzIGIs5tj-lHCxDKgCc8tjFLqZ3qEJgmbA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />&lt;3<br />\r\nNgon ngon, m&aacute;t ngậy, được h&ograve;a quyện giữa hương vị thơm ngon của hồng tr&agrave; v&agrave; vi&ecirc;n kem dừa m&aacute;t lạnh, ngọt ng&agrave;o. Thơm ngon, ngọt m&aacute;t nơi đầu lưỡi.Chắc hẳn Hồng tr&agrave; kem dừa sẽ để lại cho bạn một ấn tượng kh&oacute; qu&ecirc;n đấy ạ&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa5/1.5/16/1f642.png?_nc_eui2=AeGOYQqAxKqssDJ4iyP5aumXKSYD7bcERQKY9BN76IEW6eOEOGBvIrdSpgyMNvBuW-TDHQzXXCZnmkmJQ91suZJVgciDkdq748k0IYV5qs6TKw\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />:)<br />\r\nHỒNG TR&Agrave; KEM DỪA c&ograve;n ấn tượng bởi ta c&oacute; thể thưởng thức đồ uống n&agrave;y theo nhiều c&aacute;ch kh&aacute;c nhau&nbsp;</p>\r\n', 20, 0, 38000, 0, '', 18, '2018-06-23', 0),
(88, 'Trà sữa cafe', '201806231647242016815171145-phe.jpg', '', '<p><strong>Tr&agrave; sữa</strong>&nbsp;cafe&nbsp;l&agrave; loại thức uống được nhiều người y&ecirc;u th&iacute;ch, đặc biệt l&agrave; trẻ em v&agrave; c&aacute;c bạn học sinh, sinh vi&ecirc;n. Kh&ocirc;ng chỉ thơm m&agrave; c&ograve;n c&oacute; ch&uacute;t b&eacute;o v&agrave; ngọt dễ uống.&nbsp;Tr&agrave; sữa c&oacute; rất nhiều hương vị, trong đ&oacute; hương vị c&agrave; ph&ecirc; cũng l&agrave; một trong những m&ugrave;i hương hấp dẫn nhiều người bởi vị đắng h&ograve;a quyện c&ugrave;ng b&eacute;o, ngọt của kem tươi tạo n&ecirc;n loại nước uống tuyệt vời. H&atilde;y c&ugrave;ng&nbsp;<a href=\"http://hoiquanamthuc.com/\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 13.9997px; font-family: \" target=\"_blank\">hội qu&aacute;n ẩm thực</a>&nbsp;<strong>học c&aacute;ch pha tr&agrave; sữa c&agrave; ph&ecirc; thơm nồng với vị ngọt đậm đ&agrave;</strong>&nbsp;dưới đ&acirc;y nh&eacute;. Chắc chắn bạn sẽ ghiền đấy !</p>\r\n', 20, 0, 39000, 0, '', 18, '2018-06-23', 0),
(89, 'Trà Sữa Kim Cương Đen Okinawa', '20180623164911201816105052-okinawa.jpg', '', '<p>&quot;Tr&agrave; sữa Kim Cương Đen Okinawa&quot; l&agrave; một si&ecirc;u phẩm đồ uống đ&atilde; được lọt trong TOP BEST SELLER của TOCOTOCO&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f8c/1/16/1f389.png?_nc_eui2=AeEjMIY78q0unRZNYs1qhbPa2SQUW_35_EL9pZmPYkU2XvFHjhIUVh4dCvHhFxQ9zxS5kBbaxIVTIcIOIGswVH21QHNAapYWty4wlHLWFlO1gA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nMột sự kết hợp ho&agrave;n hảo giữa vị đắng dịu của Cafe v&agrave; sự ngọt ng&agrave;o của caramel&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f0/1/16/1f60b.png?_nc_eui2=AeFQQHljcd69mQkUeZXAxsTakuVf9iIakOkzlVkLWrLasLPocoFudi150YFOu0tW-R4FxGZAZ57V8YhZkryuAVXFZa2ok1u7SUujFsqBaB95jw\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nỞ đ&acirc;y c&oacute; bạn n&agrave;o thắc mắc &quot;Kim cương đen&quot; l&agrave; g&igrave; kh&ocirc;ng&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????. H&ocirc;m nay ad sẽ bật m&iacute; cho c&aacute;c bạn biết nh&eacute;&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1e/1/16/1f61a.png?_nc_eui2=AeEOLfEcsaD_NRdV2-I1aYA7lTZJYqoGZ6pFmqOG8Q5JOuShL9mzebKEkJYmckYLeFAs0lG89Xn4SbMrNGLMEGpOoDToD_9jT_fe7xERgxSm_A\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????. Đ&oacute; ch&iacute;nh l&agrave; những hạt THẠCH CAFE GI&Ograve;N GI&Ograve;N THƠM PHỨC&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nC&oacute; bạn n&agrave;o nghe xong bị k&iacute;ch th&iacute;ch kh&ocirc;ng nhỉ&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png?_nc_eui2=AeHFgd-R-g66iwjV_loxsnX3P6aSv3EQUPoNfo-RSKIuRuaejGsnOU0CSyeuGf7oOmlNII0aVZ-OyvnxSucoZ7pYvrwKkqNS2MkofrwDwTTyKg\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png?_nc_eui2=AeHFgd-R-g66iwjV_loxsnX3P6aSv3EQUPoNfo-RSKIuRuaejGsnOU0CSyeuGf7oOmlNII0aVZ-OyvnxSucoZ7pYvrwKkqNS2MkofrwDwTTyKg\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png?_nc_eui2=AeHFgd-R-g66iwjV_loxsnX3P6aSv3EQUPoNfo-RSKIuRuaejGsnOU0CSyeuGf7oOmlNII0aVZ-OyvnxSucoZ7pYvrwKkqNS2MkofrwDwTTyKg\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????&nbsp;hehe<br />\r\nNếu đ&atilde; bị em n&agrave;y &quot;m&ecirc; hoặc&quot; rồi th&igrave; c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng mau mau đến TocoToco 83 Trần Ph&uacute; Hải Ph&ograve;ng ch&uacute;ng tớ để thưởng thức em &yacute; ngay th&ocirc;i n&agrave;o&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f75/1/16/1f618.png?_nc_eui2=AeEEMC4foGEUZE9lygxHakxjburhyoxq2TlxQPNOV0dSpIy8qaAi5TaGjIBYktq4i5-bSDeHBW4_BclALrYsqSGzxhw--NmkFIjouyS49zJwNA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f75/1/16/1f618.png?_nc_eui2=AeEEMC4foGEUZE9lygxHakxjburhyoxq2TlxQPNOV0dSpIy8qaAi5TaGjIBYktq4i5-bSDeHBW4_BclALrYsqSGzxhw--NmkFIjouyS49zJwNA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f75/1/16/1f618.png?_nc_eui2=AeEEMC4foGEUZE9lygxHakxjburhyoxq2TlxQPNOV0dSpIy8qaAi5TaGjIBYktq4i5-bSDeHBW4_BclALrYsqSGzxhw--NmkFIjouyS49zJwNA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????</p>\r\n', 20, 1, 42000, 0, '', 18, '2018-06-23', 0),
(90, 'Trà Sữa Dưa Gang', '20180623165051201681517124-tra-sua-dua-gang.jpg', '', '<h3>Tr&agrave; Sữa Dưa Gang [<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ff9/1/16/1f48e.png?_nc_eui2=AeGHwSgNR9ONZbbcfdtG17G58y5fsbURZ0xTKwF7DB8hkNmjPWluFwlLHZHdbjzbqcFCTrxI83yg5_a98WD9GylX9HTIlLQuRRSFyE0205uzcQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????]<br />\r\n&quot;Tr&agrave; sữa Kim Cương Đen Okinawa&quot; l&agrave; một si&ecirc;u phẩm đồ uống đ&atilde; được lọt trong TOP BEST SELLER của TOCOTOCO&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f8c/1/16/1f389.png?_nc_eui2=AeEjMIY78q0unRZNYs1qhbPa2SQUW_35_EL9pZmPYkU2XvFHjhIUVh4dCvHhFxQ9zxS5kBbaxIVTIcIOIGswVH21QHNAapYWty4wlHLWFlO1gA\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nMột sự kết hợp ho&agrave;n hảo giữa vị đắng dịu của Cafe v&agrave; sự ngọt ng&agrave;o của caramel&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f0/1/16/1f60b.png?_nc_eui2=AeFQQHljcd69mQkUeZXAxsTakuVf9iIakOkzlVkLWrLasLPocoFudi150YFOu0tW-R4FxGZAZ57V8YhZkryuAVXFZa2ok1u7SUujFsqBaB95jw\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nỞ đ&acirc;y c&oacute; bạn n&agrave;o thắc mắc &quot;Kim cương đen&quot; l&agrave; g&igrave; kh&ocirc;ng&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fa1/1/16/1f61d.png?_nc_eui2=AeEhNIau5Eng9es2ORaQEMpALwOVmEM5S4rJYMfnW5TZLLvJSTZePOo-7eRxJrJ9qkXgaQ_H2iIgza78ExYYaivHjtsoIBJMUn50nP2syE6t0w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????. H&ocirc;m nay ad sẽ bật m&iacute; cho c&aacute;c bạn biết nh&eacute;&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f1e/1/16/1f61a.png?_nc_eui2=AeEOLfEcsaD_NRdV2-I1aYA7lTZJYqoGZ6pFmqOG8Q5JOuShL9mzebKEkJYmckYLeFAs0lG89Xn4SbMrNGLMEGpOoDToD_9jT_fe7xERgxSm_A\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????. Đ&oacute; ch&iacute;nh l&agrave; những hạt THẠCH CAFE GI&Ograve;N GI&Ograve;N THƠM PHỨC&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f2/1/16/1f60d.png?_nc_eui2=AeGGhISvBg-RKzdZPL4OdX9aL1dVQ2_aen-TKyhU0kB7uALE__GPm4a4VbXvOrsOCXjToVH--YYyuSzGaBY3to2t-bh9GtN1L53S6HC0UDjfLQ\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????</h3>\r\n', 20, 0, 37000, 0, '', 18, '2018-06-23', 0),
(91, ' Trà Sữa Rau Câu', '201806231652152016815171217-tra-sua-rau-cau.jpg', '', '<p><img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????&nbsp;TR&Agrave; C&Agrave;NG THƠM TH&Igrave; C&Agrave;NG NGON&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nKh&ocirc;ng hẳn đ&acirc;u nh&eacute;.Tr&agrave; ngon sẽ cho bạn hương tr&agrave; thơm nhẹ, tự nhi&ecirc;n thanh khiết, đủ để nhận ra chứ kh&ocirc;ng c&oacute; hương thơm qu&aacute; r&otilde; rệt. Ch&iacute;nh v&igrave; vậy để tr&agrave; th&ecirc;m hương người ta thường ướp tr&agrave; với hoa tạo ra c&aacute;c loại tr&agrave; vừa mang hương tr&agrave; vừa mang hương hoa như tr&agrave; ướp hoa nh&agrave;i, tr&agrave; ướp hoa sen,..</p>\r\n', 20, 0, 33000, 0, '', 18, '2018-06-23', 0),
(92, 'Trà Sữa Ba Anh Em', '201806231652572016815171123-tra-sua-ba-anh-em.jpg', '', '<h3>Tr&agrave; Sữa Ba Anh Em</h3>\r\n\r\n<p><img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????&nbsp;TR&Agrave; C&Agrave;NG THƠM TH&Igrave; C&Agrave;NG NGON&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nKh&ocirc;ng hẳn đ&acirc;u nh&eacute;.Tr&agrave; ngon sẽ cho bạn hương tr&agrave; thơm nhẹ, tự nhi&ecirc;n thanh khiết, đủ để nhận ra chứ kh&ocirc;ng c&oacute; hương thơm qu&aacute; r&otilde; rệt. Ch&iacute;nh v&igrave; vậy để tr&agrave; th&ecirc;m hương người ta thường ướp tr&agrave; với hoa tạo ra c&aacute;c loại tr&agrave; vừa mang hương tr&agrave; vừa mang hương hoa như tr&agrave; ướp hoa nh&agrave;i, tr&agrave; ướp hoa sen,..</p>\r\n', 20, 0, 44000, 0, '', 18, '2018-06-23', 0),
(93, 'Trà sữa trân châu Hoàng gia', '20180623165342201816105534-tra-sua-tran-chau-hoang-gia.jpg', '', '<h3>Tr&agrave; sữa tr&acirc;n ch&acirc;u Ho&agrave;ng gia</h3>\r\n\r\n<p><img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????&nbsp;TR&Agrave; C&Agrave;NG THƠM TH&Igrave; C&Agrave;NG NGON&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nKh&ocirc;ng hẳn đ&acirc;u nh&eacute;.Tr&agrave; ngon sẽ cho bạn hương tr&agrave; thơm nhẹ, tự nhi&ecirc;n thanh khiết, đủ để nhận ra chứ kh&ocirc;ng c&oacute; hương thơm qu&aacute; r&otilde; rệt. Ch&iacute;nh v&igrave; vậy để tr&agrave; th&ecirc;m hương người ta thường ướp tr&agrave; với hoa tạo ra c&aacute;c loại tr&agrave; vừa mang hương tr&agrave; vừa mang hương hoa như tr&agrave; ướp hoa nh&agrave;i, tr&agrave; ướp hoa sen,..</p>\r\n', 20, 0, 55000, 10, '', 18, '2018-06-23', 0),
(94, 'Trà Xanh Sữa Vị Nhài', '20180623165440201816112342-tra-xanh-sua-vi-nhai.jpg', '', '<h3>Tr&agrave; Xanh Sữa Vị Nh&agrave;i</h3>\r\n\r\n<p><img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????&nbsp;TR&Agrave; C&Agrave;NG THƠM TH&Igrave; C&Agrave;NG NGON&nbsp;<img alt=\"\" class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fbd/1/16/1f4a2.png?_nc_eui2=AeEbQ7IFQn0_kqxQVJ31ptA3W2KYiJFpMZqS7STq9_KSQKH1Lv8TaQ0Irb5PTvXL8ixZ8ZEeWsPeDipcIVr-P9jraTk6WnuoUmt9AzoM7Hql5w\" style=\"border:0px; height:16px; vertical-align:-3px; width:16px\" />????<br />\r\nKh&ocirc;ng hẳn đ&acirc;u nh&eacute;.Tr&agrave; ngon sẽ cho bạn hương tr&agrave; thơm nhẹ, tự nhi&ecirc;n thanh khiết, đủ để nhận ra chứ kh&ocirc;ng c&oacute; hương thơm qu&aacute; r&otilde; rệt. Ch&iacute;nh v&igrave; vậy để tr&agrave; th&ecirc;m hương người ta thường ướp tr&agrave; với hoa tạo ra c&aacute;c loại tr&agrave; vừa mang hương tr&agrave; vừa mang hương hoa như tr&agrave; ướp hoa nh&agrave;i, tr&agrave; ướp hoa sen,..</p>\r\n', 20, 0, 57000, 0, '', 18, '2018-06-23', 0),
(95, 'Trà Sữa Bạc Hà', '201806231656032016815171135-tra-sua-bac-ha.jpg', '', '<p>Nếu như m&oacute;n Tr&agrave; &Ocirc; Long Kem Ph&ocirc; Mai &ldquo;hớp hồn&rdquo; bạn bằng hương thơm nồng n&agrave;n của tr&agrave; &Ocirc; Long Tứ Q&uacute;y quyện với kem ph&ocirc; mai mằn mặn b&eacute;o ngậy, th&igrave; Tr&agrave; &Ocirc; Long Th&aacute;i Cực lại mang đến một trải nghiệm nhẹ nh&agrave;ng, dịu ngọt hơn với tr&agrave; &Ocirc; Long Tứ Q&uacute;y kết hợp c&ugrave;ng 2 best topping l&agrave; tr&acirc;n ch&acirc;u đen dẻo dai v&agrave; thạch kim cương trắng sừn sựt.</p>\r\n', 20, 0, 67000, 0, '', 18, '2018-06-23', 0),
(96, 'Trà Sữa Bánh Pudding', '20180623165700201816103536-ts-pudding-tocotoco.jpg', '', '<h3>Tr&agrave; Sữa B&aacute;nh Pudding</h3>\r\n\r\n<p>Nếu như m&oacute;n Tr&agrave; &Ocirc; Long Kem Ph&ocirc; Mai &ldquo;hớp hồn&rdquo; bạn bằng hương thơm nồng n&agrave;n của tr&agrave; &Ocirc; Long Tứ Q&uacute;y quyện với kem ph&ocirc; mai mằn mặn b&eacute;o ngậy, th&igrave; Tr&agrave; &Ocirc; Long Th&aacute;i Cực lại mang đến một trải nghiệm nhẹ nh&agrave;ng, dịu ngọt hơn với tr&agrave; &Ocirc; Long Tứ Q&uacute;y kết hợp c&ugrave;ng 2 best topping l&agrave; tr&acirc;n ch&acirc;u đen dẻo dai v&agrave; thạch kim cương trắng sừn sựt.</p>\r\n', 20, 0, 36000, 0, '', 18, '2018-06-23', 0),
(97, 'Trà xanh', '201806231736162018623144152-tra-xanh.jpg', '', '<p><strong>Tr&agrave; xanh</strong>&nbsp;l&agrave;m từ l&aacute;&nbsp;<em><a href=\"https://vi.wikipedia.org/wiki/Tr%C3%A0_(th%E1%BB%B1c_v%E1%BA%ADt)\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\" title=\"Trà (thực vật)\">c&acirc;y tr&agrave;</a></em>&nbsp;chưa trải qua qu&aacute; tr&igrave;nh h&eacute;o v&agrave; &ocirc;xi h&oacute;a tương tự như chế biến&nbsp;<a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/Tr%C3%A0_%C3%94_Long\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;\" title=\"Trà Ô Long\">tr&agrave; &Ocirc; Long</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%C3%A0_%C4%91en\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;\" title=\"Trà đen\">tr&agrave; đen</a>.<a href=\"https://vi.wikipedia.org/wiki/Tr%C3%A0_xanh#cite_note-Khan2013-1\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background: none;\">[1]</a>&nbsp;Tr&agrave; xanh c&oacute; nguồn gốc ở&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Trung_Qu%E1%BB%91c\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;\" title=\"Trung Quốc\">Trung Quốc</a>&nbsp;nhưng quy tr&igrave;nh sản xuất lan rộng tới nhiều quốc gia ở&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ch%C3%A2u_%C3%81\" style=\"text-decoration-line: none; color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif; font-size: 14px;\" title=\"Châu Á\">ch&acirc;u &Aacute;</a>. Tr&agrave; xanh c&oacute; nhiều loại, m&agrave; kh&aacute;c biệt đ&aacute;ng kể do sự đa dạng của c&acirc;y tr&agrave; được sử dụng, điều kiện tr&ocirc;ng trọt, phương ph&aacute;p canh t&aacute;c. qu&aacute; tr&igrave;nh trồng trọt v&agrave; thời gian thu h&aacute;i.</p>\r\n', 20, 0, 19000, 0, '', 19, '2018-06-23', 0),
(98, 'Hồng Trà Việt Quất', '201806231741072018161147-hong-tra-viet-quat.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 33000, 15, '', 19, '2018-06-23', 0),
(99, 'Trà Xanh Nho', '20180623174216201851415229-traxanhnho.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 44000, 22, '', 19, '2018-06-23', 0),
(100, 'Trà Xanh Xoài', '201806231743152018514152516-xanhxoai.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 36000, 0, '', 19, '2018-06-23', 0),
(101, 'Trà Xanh Chanh Leo', '201806231743522018514152126-traxanhchanhleo.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 27000, 0, '', 19, '2018-06-23', 0),
(102, 'Trà Xanh Đào & Chanh Leo', '20180623174429201862314423-tra-xanh-dao-chanh-leo.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 26000, 0, '', 19, '2018-06-23', 0),
(103, 'Trà Chanh Hoàng Gia', '201806231746172018623144055-tra-chanh-hoang-gia.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 44000, 0, '', 19, '2018-06-23', 0),
(104, 'Trà Bạc Hà', '201806231747152016815171135-tra-sua-bac-ha.jpg', '', '<p>&nbsp;</p>\r\n\r\n<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 35000, 0, '', 19, '2018-06-23', 0),
(105, 'Trà Dưa Gang', '20180623174753201681517124-tra-sua-dua-gang.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 55000, 0, '', 19, '2018-06-23', 0),
(106, 'Trà Trân Châu Sợi', '201806231748412018623144139-tra-sua-tran-chau-soi.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 38000, 0, '', 19, '2018-06-23', 0),
(107, 'Yakult Xoài', '201806231751522018514152740-yakunxoai.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 37000, 0, '', 21, '2018-06-23', 0),
(108, 'Yakult Chanh Leo', '201806231752192018514152619-yakunchanhleo.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 33000, 0, '', 21, '2018-06-23', 0),
(109, 'Yakult Trà Xanh', '20180623175247201816112839-yakult-tra-xanh.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 58000, 0, '', 21, '2018-06-23', 0),
(110, ' Matcha Kem Phô Mai', '20180623175544201832617051-matcha-kem-pho-mai.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 45000, 0, 47000, 15, '', 20, '2018-06-23', 0),
(111, 'Hồng Trà Kem Phô Mai', '2018062317560820183261741-hong-tra-kem-man.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 47000, 0, '', 20, '2018-06-23', 0),
(112, 'Socola Kem Phô Mai', '20180623175634201832617121-socola-kem-pho-mai.jpg', '', '<p>Với hương vị thơm ngon, chất lượng lu&ocirc;n được đảm bảo lại cộng với thực đơn lu&ocirc;n đa dạng v&agrave; phong ph&uacute;, tr&agrave; sữa&nbsp;Toco&nbsp;Toco d&ugrave; mới xuất hiện tại Việt Nam chưa l&acirc;u nhưng đ&atilde; chiếm được rất nhiều sự y&ecirc;u th&iacute;ch của nhiều gia đ&igrave;nh cũng như c&aacute;c bạn trẻ.&nbsp;</p>\r\n\r\n<p>Tr&agrave; sữa&nbsp;Toco&nbsp;c&oacute; hương vị rất đặc trưng, với c&aacute;i ngọt ng&agrave;o của sữa, c&aacute;i thơm thoảng nhẹ nh&agrave;ng của tr&agrave;, c&aacute;i b&eacute;o ngậy của những vi&ecirc;n tr&acirc;n ch&acirc;u hay l&aacute;t pudding, chưa kể đến hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n được pha chế h&agrave;i h&ograve;a.&nbsp;</p>\r\n', 20, 0, 45000, 0, '', 20, '2018-06-23', 0),
(113, 'Bánh ngọt pháp', '20180623180524foody-mobile-tiramisu-1-155034904-273-635984956616966331.jpg', '', '<p>B&aacute;nh m&igrave; rất mềm, rất nhẹ kiểu Sponge, nhưng cũng rất ẩm. Khi cắn v&agrave;o th&igrave; cảm nhận được rất r&otilde; vị bơ ngậy tan tr&ecirc;n đầu lưỡi. B&aacute;nh m&igrave; h&igrave;nh s&ograve; c&oacute; nhiều vị kh&aacute;c nhau. Thưởng thức một chiếc b&aacute;nh m&igrave; s&ograve; với 1 t&aacute;ch tr&agrave; thật l&agrave; &ldquo;l&atilde;ng mạn&rdquo; biết bao.</p>\r\n', 20, 0, 64000, 0, '', 23, '2018-06-23', 0),
(114, 'Bánh ngọt sừng bò chocolate', '20180623180858ngot2.jpg', '', '<p>&nbsp;L&agrave; m&oacute;n b&aacute;nh &ldquo;ăn kh&aacute;ch&rdquo; nhất trong c&aacute;c loại b&aacute;nh ngọt Ph&aacute;p. B&aacute;nh macaron l&agrave; loại b&aacute;nh ngọt được l&agrave;m từ nguy&ecirc;n liệu ch&iacute;nh l&agrave; trứng, đường c&aacute;t, bột hạnh nh&acirc;n, v&agrave; một ch&uacute;t m&agrave;u thực phẩm. Phủ b&ecirc;n trong hai lớp b&aacute;nh gi&ograve;n tan l&agrave; lớp nh&acirc;n được l&agrave;m từ kem bơ hoặc mứt.</p>\r\n', 20, 0, 54000, 10, '', 23, '2018-06-23', 0),
(115, 'Bánh ngọt sừng bò', '20180623180845ngot.jpg', '', '<h3>B&aacute;nh sừng b&ograve; &iacute;t nhiều ảnh hưởng từ phong c&aacute;ch ẩm thực cầu k&igrave; của b&aacute;nh ngọt Ph&aacute;p. Bởi vậy, sau n&agrave;y b&aacute;nh m&igrave; sừng b&ograve; c&oacute; thể c&oacute; nh&acirc;n chocolate, mứt, nho kh&ocirc; hoặc kem bơ mềm &oacute;ng như b&aacute;nh su kem.</h3>\r\n', 20, 0, 39000, 0, '', 23, '2018-06-23', 0),
(116, 'Bánh Alaska ', '20180623181119120716afamily-AN-banh-kem-alaska-7_ab47a.jpg', '', '<p>Madeleine l&agrave; t&ecirc;n 1 loại b&aacute;nh c&oacute; nguồn gốc từ Ph&aacute;p, thuộc thể loại&nbsp;<a href=\"http://gato.com.vn/banh-gato-sinh-nhat-voi-sang-tao-bat-ngo/\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(26, 13, 171); text-decoration-line: none; cursor: pointer; transition: all 0.2s linear; font-family: LatoWeb, Arial, Verdana, sans-serif; font-size: 15.96px;\" title=\"bánh gato\">b&aacute;nh gato</a>&nbsp;cơ bản (sponge cake), được đặc trưng bởi h&igrave;nh d&aacute;ng vỏ s&ograve; nhỏ nhắn xinh xắn.</p>\r\n', 20, 0, 54000, 5, '', 24, '2018-06-23', 0),
(117, 'Bánh su kem', '20180623181212130103-set-12-banh-su-tai-banh-su-kem-singapore-giao-hang-mien-phi.jpg', '', '<p>B&aacute;nh su kem, c&oacute; t&ecirc;n gốc trong tiếng Ph&aacute;p l&agrave; &ldquo;Choux &agrave; la cr&egrave;me&rdquo;, l&agrave; một m&oacute;n b&aacute;nh ngọt v&agrave; ở dạng kem được l&agrave;m từ c&aacute;c nguy&ecirc;n liệu như bột mỳ, trứng, sữa bơ&hellip;. đ&aacute;nh đều tạo th&agrave;nh một hỗn hợp v&agrave; sau đ&oacute; bằng thao t&aacute;c &eacute;p v&agrave; phun qua một c&aacute;i t&uacute;i để định h&igrave;nh th&agrave;nh những b&aacute;nh nhỏ v&agrave; cuối c&ugrave;ng được nướng ch&iacute;n.</p>\r\n', 20, 0, 13000, 0, '', 24, '2018-06-23', 0),
(118, 'Mochi', '20180623181325ngot_06.jpg', '', '<p>B&aacute;nh Mochi được l&agrave;m bằng 3 lớp nguy&ecirc;n liệu: b&ecirc;n ngo&agrave;i l&agrave; lớp bột gạo mochi thượng hạng, ch&iacute;nh giữa l&agrave; lớp m&ugrave;i vị pha với đậu Nhật, b&ecirc;n trong c&ugrave;ng l&agrave; kem lạnh.</p>\r\n', 20, 0, 23000, 0, '', 24, '2018-06-23', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tieude`, `ndngan`, `noidung`, `hinhanh`, `ngaydangtin`, `tacgia`, `trangthai`) VALUES
(8, 'Cách làm trân châu 3Q hoa đậu biếc', 'Mùa hè nóng nực được giải nhiệt cùng các loại chè có kèm trân châu 3Q hoa đậu biếc xanh trong mát lạnh thì còn gì bằng.\r\n', 'Mùa hè nóng nực được giải nhiệt cùng các loại chè có kèm trân châu 3Q hoa đậu biếc xanh trong mát lạnh thì còn gì bằng.\r\nCach lam tran chau 3Q hoa dau biec hinh anh 1\r\nChuẩn bị nguyên liệu: 5 gram hoa đậu biếc, 100 ml nước sôi, 800 ml nước, 3 gram bột rau câu aga, 10 gram bột rau câu dẻo, 150 gram đường, 100 ml dầu ăn, 10 viên đá lạnh, 1 bát nước đá lạnh, 1 miếng chanh, 1 chiếc chai nhựa đựng tương loại có lỗ trên nắp.\r\nCach lam tran chau 3Q hoa dau biec hinh anh 2\r\nHướng dẫn cách làm: Trước tiên bạn cho hoa đậu biếc vào bát và thêm nước sôi vào cùng, ngâm 5 phút cho hoa ra màu rồi lọc lấy nước hoa đậu biếc, phần bã hoa bỏ đi.\r\nCach lam tran chau 3Q hoa dau biec hinh anh 3\r\nBạn cho đường vào bát và thêm bột rau câu giòn, dẻo vào cùng rồi trộn đều nguyên liệu.\r\nCach lam tran chau 3Q hoa dau biec hinh anh 4\r\nCho 800 ml nước vào nồi cùng với phần đường rau câu vừa trộn vào nồi, khuấy đều cho đường và rau câu tan hết. Bật bếp nấu cho hỗn hợp rau câu sôi lên, trong quá trình nấu bạn nên khuấy đều hỗn hợp nước rau câu.\r\nCach lam tran chau 3Q hoa dau biec hinh anh 5\r\nTiếp theo bạn cho nước hoa đậu biếc vào nồi rau câu, khuấy đều và nấu cho rau râu sôi lên là được.', 'nguyen_lieu.jpg', '2018-06-23', 'zing.vn', 0),
(9, 'Cô gái trà sữa: \'Tôi bật đèn xanh nhưng anh ấy không muốn hẹn hò\'', ' Phương Thoa cho hay cô rất mong muốn có cơ hội tiến tới trong chuyện tình cảm với Duy Chính, song không nhận được sự hồi âm, thiện chí từ phía nam người mẫu.', '20 tuổi, nữ chính bỏ túi nhiều giải thưởng tại các cuộc thi nhan sắc dành cho sinh viên như Top 30 Hoa khôi sinh viên Việt Nam 2017, Á khôi 1 Miss Cybermile 2017, tham gia cuộc thi Siêu mẫu Việt Nam 2017 hẹn hò cùng 3 chàng trai: Duy Chính (chàng người mẫu tự do), Quốc Vinh (chàng trai dành cả tuổi thanh xuân để giảm cân) và Như Đông (nhân viên văn phòng điềm đạm).\r\n\r\nPhương Thoa cho Zing.vn biết cô tham gia chương trình muốn tìm hiểu, hẹn hò với các chàng trai khi chưa biết khuôn mặt của họ. Trong 3 anh chàng, cô tiết lộ Duy Chính là người mà mình không thích nhất, bởi anh chàng rất đào hoa, ga lăng và là mẫu người được nhiều cô gái theo đuổi.\r\n\r\nSau khi tiếp xúc, trò chuyện, cô phát hiện anh chàng có nhiều ưu điểm. Bởi vậy Phương Thoa muốn thử thách bản thân có thể thay đổi được chàng trai đào hoa này hay không. \r\n\r\nCo gai tra sua: \'Toi bat den xanh nhung anh ay khong muon hen ho\' hinh anh 1\r\nHình ảnh xinh đẹp của Phương Thoa trong chương trình Lựa chọn của trái tim. Ảnh chụp màn hình. ', '35807831_998213777010464_4926593905333370880_n.jpg', '2018-06-23', 'zing.vn', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Chỉ mục cho bảng `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Chỉ mục cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`idnsx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `idnsx` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

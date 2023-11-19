-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2023 lúc 06:07 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ma_danh_muc` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ma_danh_muc`, `ten_danh_muc`) VALUES
(1, 'Nike'),
(2, 'AdiDas'),
(3, 'Jordan'),
(4, 'Yeezy'),
(5, 'Other brands'),
(6, 'Phụ Kiện Giày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_don_hang` int(11) NOT NULL,
  `hoTenNguoiNhan` varchar(255) NOT NULL,
  `soDtNguoiNhan` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `ma_khach_hang` int(11) DEFAULT NULL,
  `ngay_dat_hang` date DEFAULT NULL,
  `phuong_thuc_thanh_toan` varchar(50) DEFAULT NULL,
  `trang_thai` varchar(50) DEFAULT NULL,
  `tong_tien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`ma_don_hang`, `hoTenNguoiNhan`, `soDtNguoiNhan`, `DiaChi`, `ma_khach_hang`, `ngay_dat_hang`, `phuong_thuc_thanh_toan`, `trang_thai`, `tong_tien`) VALUES
(1, 's', 's', 's', 5, '2023-05-28', 'TT khi nhận hàng', 'Đang giao hàng', 10500000),
(2, 'Nguyen Bach Long', '03666', 'Vũng Tàu', 12, '2023-05-28', 'TT khi nhận hàng', 'Đang giao hàng', 10500000),
(3, 'xx', 'xxx', 'xxx', 12, '2023-05-28', 'TT khi nhận hàng', 'Đang giao hàng', 24000000),
(4, 'xx', 'xxx', 'xxx', 12, '2023-05-28', 'TT khi nhận hàng', 'Đang giao hàng', 24000000),
(5, 'sds', 'sds', 'sdsd', 12, '2023-05-28', 'TT khi nhận hàng', 'Đang giao hàng', 24000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matKhau` varchar(255) NOT NULL,
  `TinhTrang` varchar(255) NOT NULL,
  `quyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`ma_khach_hang`, `ten_khach_hang`, `dia_chi`, `so_dien_thoai`, `email`, `matKhau`, `TinhTrang`, `quyen`) VALUES
(1, 'hehe', '[value-2]', '', 'heh@gmail.com', 'heh', 'Khoa', ''),
(5, 'longbachnguyen', 'null', 'null', 'longhufidev@gmail.com', '123', '', 'Admin'),
(12, 'Nguyễn Bạch Long Yêu Châu', 'null', 'null', 'hihi@gmail.com', '123', 'Binh Thuong', 'Khach Hang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `ma_loai_san_pham` int(11) NOT NULL,
  `ten_loai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`ma_loai_san_pham`, `ten_loai`) VALUES
(1, 'NIKE'),
(2, 'AdiDas'),
(3, 'Jordan'),
(4, 'Yeezy'),
(5, 'Other brands');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathangtrongdonhang`
--

CREATE TABLE `mathangtrongdonhang` (
  `ma_don_hang` int(11) DEFAULT NULL,
  `ma_san_pham` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mathangtrongdonhang`
--

INSERT INTO `mathangtrongdonhang` (`ma_don_hang`, `ma_san_pham`, `so_luong`, `gia`, `size`) VALUES
(2, 3, 3, 10500000, '40.5'),
(3, 4, 4, 11200000, '41'),
(4, 4, 4, 11200000, '41'),
(5, 4, 4, 11200000, '41'),
(5, 5, 4, 12800000, '37.5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanxet`
--

CREATE TABLE `nhanxet` (
  `ma_nhan_xet` int(11) NOT NULL,
  `ma_san_pham` int(11) DEFAULT NULL,
  `noi_dung` text DEFAULT NULL,
  `diem_danh_gia` int(11) DEFAULT NULL,
  `ngay_danh_gia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `url_anh` varchar(255) DEFAULT NULL,
  `kich_thuoc` varchar(50) DEFAULT NULL,
  `mau_sac` varchar(50) DEFAULT NULL,
  `so_luong_trong_kho` int(11) DEFAULT NULL,
  `ma_loai_san_pham` int(11) DEFAULT NULL,
  `Tinh_Trang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_san_pham`, `ten_san_pham`, `mo_ta`, `gia`, `url_anh`, `kich_thuoc`, `mau_sac`, `so_luong_trong_kho`, `ma_loai_san_pham`, `Tinh_Trang`) VALUES
(1, 'ADIDAS FORUM LOW CL', 'null', 3200000, 'ADIDAS_FORUM_LOW_CL.jpg', '36.5,38, 40.5', 'Trăng xanh', 30, 2, 'Ngừng Kinh Doanh'),
(2, 'NIKE AIR MAX 90', 'Mô tả sản phẩm NIKE AIR MAX 90', 2800000, '', '37, 39, 40', 'Đen trắng', 25, 1, 'Đang Kinh Doanh'),
(3, 'ADIDAS ULTRABOOST', 'Mô tả sản phẩm ADIDAS ULTRABOOST', 3500000, 'ADIDAS_ULTRABOOST.JPG', '37, 39, 40.5', 'Đen', 10, 2, ''),
(4, 'ADIDAS SUPERSTAR', 'Mô tả sản phẩm ADIDAS SUPERSTAR', 2800000, 'ADIDAS_SUPERSTAR.JPG', '36, 38, 41', 'Trắng đen', 11, 2, 'Ngừng Kinh Doanh'),
(5, 'ADIDAS NMD R1', 'Mô tả sản phẩm ADIDAS NMD R1', 3200000, 'ADIDAS_NMD_R1.JPG', '37.5, 39.5, 42', 'Xám', 4, 2, 'Đang Kinh Doanh'),
(6, 'hihi', 'null', 300000000, 'by9612-giày-adidas-yeezy-boost-350-chính-hãng-dến-king-shoes-2.jpg', '30, 40', 'đen', 3, 2, 'Đang Kinh Doanh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ma_danh_muc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`ma_loai_san_pham`);

--
-- Chỉ mục cho bảng `mathangtrongdonhang`
--
ALTER TABLE `mathangtrongdonhang`
  ADD KEY `ma_don_hang` (`ma_don_hang`),
  ADD KEY `ma_san_pham` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `nhanxet`
--
ALTER TABLE `nhanxet`
  ADD PRIMARY KEY (`ma_nhan_xet`),
  ADD KEY `ma_san_pham` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD KEY `ma_loai_san_pham` (`ma_loai_san_pham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ma_danh_muc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `ma_loai_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhanxet`
--
ALTER TABLE `nhanxet`
  MODIFY `ma_nhan_xet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khachhang` (`ma_khach_hang`);

--
-- Các ràng buộc cho bảng `mathangtrongdonhang`
--
ALTER TABLE `mathangtrongdonhang`
  ADD CONSTRAINT `mathangtrongdonhang_ibfk_1` FOREIGN KEY (`ma_don_hang`) REFERENCES `donhang` (`ma_don_hang`),
  ADD CONSTRAINT `mathangtrongdonhang_ibfk_2` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`);

--
-- Các ràng buộc cho bảng `nhanxet`
--
ALTER TABLE `nhanxet`
  ADD CONSTRAINT `nhanxet_ibfk_1` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ma_loai_san_pham`) REFERENCES `loaisanpham` (`ma_loai_san_pham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

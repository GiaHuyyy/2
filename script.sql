CREATE DATABASE `quanlydienthoaidb`;
USE quanlydienthoaidb;

-- Tạo bảng Nhà Cung Cấp
CREATE TABLE NhaCungCap (
    maNCC VARCHAR(255) NOT NULL,
    tenNCC VARCHAR(255) NOT NULL,
    diaChi VARCHAR(255) NOT NULL,
    soDienThoai VARCHAR(15) NOT NULL,
    PRIMARY KEY (maNCC)
);

-- Tạo bảng Điện Thoại
CREATE TABLE DienThoai (
    maDT INT NOT NULL AUTO_INCREMENT,
    tenDT VARCHAR(255) NOT NULL,
    namSanXuat INT NOT NULL CHECK (namSanXuat >= 1900 AND namSanXuat <= 2100),
    cauHinh VARCHAR(255) NOT NULL,
    maNCC VARCHAR(255) NOT NULL,
    hinhAnh VARCHAR(255) NOT NULL,
    PRIMARY KEY (maDT),
    FOREIGN KEY (maNCC) REFERENCES NhaCungCap(maNCC)
);

-- Chèn dữ liệu vào bảng Nhà Cung Cấp
INSERT INTO NhaCungCap (maNCC, tenNCC, diaChi, soDienThoai)
VALUES
('NCC01', 'Công ty A', '123 Đường A, Quận 1, TP.HCM', '0909123456'),
('NCC02', 'Công ty B', '456 Đường B, Quận 2, TP.HCM', '0919123456'),
('NCC03', 'Công ty C', '789 Đường C, Quận 3, TP.HCM', '0929123456');

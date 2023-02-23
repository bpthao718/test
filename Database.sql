-- Tạo bảng tạm trú tạm vắng
CREATE TABLE TamTruTamVang (
    ID_TamTru INT PRIMARY KEY,
    ID_CongDan INT,
    NgayDen DATE,
    NgayDi DATE,
    DiaChi TEXT,
    FOREIGN KEY (ID_CongDan) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng CCCD
CREATE TABLE CCCD (
    ID_CCCD INT PRIMARY KEY,
    ID_CongDan INT,
    SoCCCD TEXT,
    NgayCap DATE,
    NoiCap TEXT,
    FOREIGN KEY (ID_CongDan) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng Thuế
CREATE TABLE Thue (
    ID_Thue INT PRIMARY KEY,
    ID_CongDan INT,
    MaSoThue TEXT,
    NgayCapNhat DATE,
    FOREIGN KEY (ID_CongDan) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng Sổ hộ khẩu
CREATE TABLE SoHoKhau (
    ID_SoHoKhau INT PRIMARY KEY,
    ID_CongDan INT,
    SoHoKhau TEXT,
    NgayCapNhat DATE,
    FOREIGN KEY (ID_CongDan) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng Khai sinh
CREATE TABLE KhaiSinh (
    ID_KhaiSinh INT PRIMARY KEY,
    ID_CongDan INT,
    HoTen TEXT,
    GioiTinh TEXT,
    NgaySinh DATE,
    NoiSinh TEXT,
    QuocTich TEXT,
    DanToc TEXT,
    TonGiao TEXT,
    FOREIGN KEY (ID_CongDan) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng Hôn nhân
CREATE TABLE HonNhan (
    ID_HonNhan INT PRIMARY KEY,
    ID_CongDan1 INT,
    ID_CongDan2 INT,
    NgayDangKy DATE,
    NoiDangKy TEXT,
    FOREIGN KEY (ID_CongDan1) REFERENCES CongDan(ID_CongDan),
    FOREIGN KEY (ID_CongDan2) REFERENCES CongDan(ID_CongDan)
);

-- Tạo bảng Công dân
CREATE TABLE CongDan (
    ID_CongDan INT PRIMARY KEY,
    HoTen TEXT,
    GioiTinh TEXT,
    NgaySinh DATE,
    NoiSinh TEXT,
    DiaChi TEXT,
    QuocTich TEXT,
    DanToc TEXT,
    TonGiao TEXT
);
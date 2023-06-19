CREATE DATABASE ThucTap;

CREATE TABLE Khoa (
    makhoa CHAR(10) PRIMARY KEY,
    tenkhoa CHAR(30),
    dienthoai CHAR(10)
);

CREATE TABLE GiangVien (
    magv INT PRIMARY KEY,
    hotengv CHAR(30),
    luong DECIMAL(5,2),
    makhoa CHAR(10),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

CREATE TABLE SinhVien (
    masv INT PRIMARY KEY,
    hotensv CHAR(30),
    makhoa CHAR(10),
    namsinh INT,
    quequan CHAR(30),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

CREATE TABLE DeTai (
    madt CHAR(10) PRIMARY KEY,
    tendt CHAR(30),
    kinhphi INT,
    NoiThucTap CHAR(30)
);

CREATE TABLE HuongDan (
    masv INT,
    madt CHAR(10),
    magv INT,
    ketqua DECIMAL(5,2),
    PRIMARY KEY (masv, madt, magv),
    FOREIGN KEY (masv) REFERENCES SinhVien(masv),
    FOREIGN KEY (madt) REFERENCES DeTai(madt),
    FOREIGN KEY (magv) REFERENCES GiangVien(magv)
);

INSERT INTO Khoa VALUES
('K01', 'Toan' , 0325688562),
('K02', 'Ly', 068355566),
('K03', 'Hoa', 0335413215),
('K04', 'Anh', 0154545163),
('K05', 'Van', 04695423445);
INSERT INTO GiangVien VALUES
('01','Nguyen Van A',700,'K01'),
('02','Truong Cong B',800,'K02'),
('03','Tran Bao C',600,'K03'),
('04','Le Thanh D',700,'K04'),
('05','Ly Chi T',500,'K05');
INSERT INTO SinhVien VALUES
('SV01', 'Le Van An', 'K01', 2000, 'Quang Nam'),
('SV02', 'Nguyen Van Binh', 'K02', 2001, 'Quang Ngai'),
('SV03', 'Tran Van Cong', 'K03', 2002, 'Đa Nang'),
('SV04', 'Truong Van Danh', 'K04', 2000, 'Hue'),
('SV02', 'Ly Tien Tai', 'K05', 2001, 'Quang Tri');
INSERT INTO DeTai VALUES
('DT01','De Tai 1',100,'Quang Nam'),
('DT02','De Tai 2',500,'Quang Ngai'),
('DT03','De Tai 3',100, 'Đa Nang'),
('DT04','De Tai 4',300,'Hue'),
('DT05','De Tai 5',200,'Quang Tri');
INSERT INTO HuongDan (masv, madt, magv, ketqua) VALUES
(1, 'DT01', 01, 5.5),
(2, 'DT02', 02, 4.8),
(3, 'DT03', 03, 6.2),
(4, 'DT04', 04, 5.2),
(5, 'DT05', 05, 6.7);
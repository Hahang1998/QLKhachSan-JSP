create database QLKhachSan;
use QLKhachSan;
drop database QLKhachSan

  create table tblLoaiPhong(
	 maloaiphong varchar(10) primary key,
	 loaiphong nvarchar(50)
	 );
	drop table tblPhong 
 create table tblPhong(
   maphong varchar(10) primary key,
    tenphong nvarchar(50),
	gia float,	
	anh nvarchar(100),
	mota nvarchar(100),
	maloaiphong varchar(10) foreign key references tblLoaiPhong(maloaiphong)
	
  )
   create table tblBoPhan(
    maBP varchar(10) primary key,
	tenBP nvarchar(100)
   );
   drop table tblLoaiQuyen
	create table tblLoaiQuyen(
	maquyen  varchar(10) primary key ,
	ten nvarchar(50),
	ghichu nvarchar(100)
	);
	 drop table tbluser
	create table tbluser(
	  username varchar(50) primary key ,
	  password varchar(50),
	  email varchar(50),
	  maquyen varchar(10) ,
	  trangthai varchar(10)
	  
	);
	 drop table tbluser
  create table tblNhanVien(
   maNV varchar(10) primary key,
    tenNV nvarchar(50),
	ngaySinh date,
	diaChi nvarchar(50),
	SDT varchar(50),
	 CMND varchar(12),
	gioiTinh varchar(50),
	chucVu nvarchar(50)
	,maBP varchar(10) foreign key references tblBoPhan(maBP),
	HSL float,
	luongCB float,
	 tinhtrang nvarchar(50)
	
  )
   create table tblLoaiDichVu(
    maLDV varchar(10) primary key,
	loaiDV nvarchar(100)
   );
    create table tblDichVuCT(
	 maDV varchar(10) primary key,
	 tenDV nvarchar(100),
	 donGia float,
	 maLDV varchar(10) foreign key references tblLoaiDichVu(maLDV)
	);
	drop table tblKhachHang
	 create table tblKhachHang(
    maKH varchar(10) primary key,
    tenKH nvarchar(50),
	ngaySinh date,
	diaChi nvarchar(50),
	SDT varchar(50),
	CMND varchar(12),
	gioiTinh varchar(50),
	tinhtrang nvarchar(50),

	 );
	
	 create table tblHoaDon(
		 maHD varchar(10) primary key,
		 maKH varchar(10) foreign key references  tblKhachHang(maKH),
		 maNV varchar(10)  foreign key references tblNhanVien(maNV),
		 maPhong varchar(10) foreign key references tblPhong(maPhong),
		 ngayDen date,
		 ngayDi date,
		 ngayLap date,
		 ngaydatphong date,	
		 tinhtrang nvarchar(50) 	 
		  
	 );
	 drop table tblHoaDonChitiet
	  create table tblHoaDonChitiet(
		 maHD varchar(10) foreign key references tblHoaDon(maHD), 
		 maDV varchar(10)foreign key references tblDichVuCT(maDV)
		 primary key(maHD,maDV)		  
	 );
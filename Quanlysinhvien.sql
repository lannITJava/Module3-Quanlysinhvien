Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);
/*
1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã
sinh viên tăng dần
*/
select DMSV.MaSV, DMSV.HoSV, DMSV.TenSV, DMSV.HocBong 
from DMSV 
order by DMSV.MaSV ASC;
/*
2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
*/
select DMSV.MaSV, concat( DMSV.HoSV,' ' ,DMSV.TenSV) as HoTenSV, DMSV.Phai, DMSV.NgaySinh
from DMSV 
order by DMSV.Phai ASC;
/*
3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
*/
select DMSV.MaSV, concat( DMSV.HoSV,' ' ,DMSV.TenSV) as HoTenSV, DMSV.NgaySinh, DMSV.HocBong
from DMSV 
order by DMSV.NgaySinh ASC, DMSV.HocBong DESC;
/*
4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã
môn, Tên môn, Số tiết.
*/
select DMMH.MaMH, DMMH.TenMH, DMMH.SoTiet
from DMMH
where DMMH.TenMH like 'T%';
/*
5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm
các thông tin: Họ tên sinh viên, Ngày sinh, Phái.
*/
select concat(DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, DMSV.NgaySinh, DMSV.Phai 
from DMSV
where DMSV.TenSV like '%I';
/*
6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm
các thông tin: Mã khoa, Tên khoa.
*/
select DMKhoa.MaKhoa, DMKhoa.TenKhoa
from DMKhoa
where DMKhoa.TenKhoa like '_N%';
/*
7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
*/
select * from DMSV
where DMSV.HoSV like '%Thi%';
/*
8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các
thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
được sắp xếp theo thứ tự Mã khoa giảm dần
*/
select DMSV.MaSV, concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, DMKhoa.MaKhoa, DMSV.HocBong 
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMSV.HocBong >100000
order by DMKhoa.MaKhoa desc;
/*
9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm
các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
*/
select concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, DMKhoa.MaKhoa,DMSV.NoiSinh, DMSV.HocBong 
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMSV.HocBong >=150000 and DMSV.NoiSinh = 'Hà Nội';
/*
10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông
tin: Mã sinh viên, Mã khoa, Phái.
*/
select DMSV.MaSV, DMKhoa.MaKhoa, DMSV.Phai
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMKhoa.TenKhoa = 'Anh Văn' or DMKhoa.TenKhoa = 'Vật Lý';
/*
11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày
05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học
bổng
*/
select DMSV.MaSV, DMSV.NgaySinh, DMSV.NoiSinh, DMSV.HocBong
from DMSV
where DMSV.NgaySinh between '1991-01-01'and '1992-06-05';
/*
12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các
thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa
*/
select DMSV.MaSV, DMSV.NgaySinh, DMSV.Phai, DMKhoa.MaKhoa
from DMSV
join DMKhoa on DMKhoa.MaKhoa = DMSV.MaKhoa
where DMSV.HocBong between 80000 and 150000;
/*
13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông
tin: Mã môn học, Tên môn học, Số tiết.
*/
select DMMH.MaMH, DMMH.TenMH, DMMH.SoTiet
from DMMH
where DMMH.SoTiet >30 and DMMH.SoTiet<45;
/*
14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các
thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
*/
select DMSV.MaSV, concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, DMKhoa.TenKhoa, DMSV.Phai
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMSV.Phai = 'Nam' and (DMKhoa.TenKhoa = 'Anh Văn' or DMKhoa.TenKhoa = 'Vật Lý');
/*
15.Liệt kê những sinh viên nữ, tên có chứa chữ N
*/
select * from DMSV
where DMSV.Phai = 'Nữ' and DMSV.TenSV like '%n%';
/*
16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các
thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
*/
select DMSV.HoSV, DMSV.TenSV, DMSV.NoiSinh, DMSV.NgaySinh
from DMSV
where DMSV.NoiSinh = 'Hà Nội' and month(DMSV.NgaySinh) = 02;
/*
17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh
viên, Tuổi,Học bổng.
*/
select concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE()) AS Tuoi, DMSV.HocBong
from DMSV
where TIMESTAMPDIFF(YEAR, DMSV.NgaySinh, CURDATE()) >20;
/*
18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh
viên, Tuổi, Tên khoa.
*/
select concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE()) AS Tuoi, DMKhoa.TenKhoa
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where  TIMESTAMPDIFF(YEAR,NgaySinh, CURDATE())between 20 and 25;
/*
19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ
tên sinh viên,Phái, Ngày sinh.
*/
select concat( DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, DMSV.Phai, DMSV.NgaySinh
from DMSV
where month(DMSV.NgaySinh)in (1,2,3) and year(DMSV.NgaySinh)= 1990;
/*
20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học
bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển
thị là “Mức trung bình
*/
select DMSV.MaSV, DMSV.Phai, DMKhoa.MaKhoa,
CASE
	WHEN DMSV.HocBong > 500000 THEN "Học bổng cao"
	ELSE "Mức trung bình"
END AS 'Mức học bổng'
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa;
/*
21.Cho biết tổng số sinh viên của toàn trường
*/
select count(DMSV.MaSV) as 'Tổng số sinh viên của toàn trường'
from DMSV;
/*
22.Cho biết tổng sinh viên và tổng sinh viên nữ
*/
select count(DMSV.MaSV) as 'Tổng sinh viên', sum(CASE
	WHEN DMSV.Phai = 'Nữ' THEN 1
	ELSE 0
END )AS 'Tổng sinh viên nữ'
from DMSV;
/*
23.Cho biết tổng số sinh viên của từng khoa.
*/
select DMSV.MaKhoa, count(DMSV.MaSV) as 'Tổng sinh viên'
from DMSV
group by DMSV.MaKhoa;
/*
24.Cho biết số lượng sinh viên học từng môn.
*/
select DMMH.TenMH, count(DMSV.MaSV) as 'Tổng sinh viên'
from KetQua
join DMSV on KetQua.MaSV = DMSV.MaSV
join DMMH on KetQua.MaMH = DMMH.MaMH
group by DMMH.TenMH;
/*
25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có
trong bảng kq)
*/
select count(DMMH.MaMH) as 'Số lượng môn học mà sinh viên đã học'
from KetQua
join DMMH on KetQua.MaMH = DMMH.MaMH;
/*
26.Cho biết tổng số học bổng của mỗi khoa.
*/
select DMSV.MaKhoa, count(DMSV.HocBong) as 'Tổng học bổng'
from DMSV
group by DMSV.MaKhoa;
/*
27.Cho biết học bổng cao nhất của mỗi khoa.
*/
select DMSV.MaKhoa, max(DMSV.HocBong) as 'Học bổng cao nhất'
from DMSV
group by DMSV.MaKhoa;
/*
28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
*/
select DMSV.MaKhoa, sum(CASE
	WHEN DMSV.Phai = 'Nữ' THEN 1
	ELSE 0
END )AS 'Tổng sinh viên nữ',
sum(CASE
	WHEN DMSV.Phai = 'Nam' THEN 1
	ELSE 0
END )AS 'Tổng sinh viên nam'
from DMSV
group by DMSV.MaKhoa;
/*
29.Cho biết số lượng sinh viên theo từng độ tuổi.
*/
select year(curdate())-year(ngaysinh) as 'Tuổi',count(MaSV)as 'Số sinh viên'
from DMSV
group by year(curdate())-year(ngaysinh);
/*
30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
*/
select year(ngaysinh) as'Năm',count(Masv) as'Số sinh viên'
from DMSV
group by year(ngaysinh)
having count(Masv)=2;
/*
31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
*/
select DMSV.NoiSinh ,count(Masv) as'Số sinh viên'
from DMSV
group by DMSV.NoiSinh
having count(DMSV.MaSV) = 2;
/*
32.Cho biết những môn nào có trên 3 sinh viên dự thi.
*/
select KetQua.MaMH ,count(Masv) as'Số sinh viên'
from KetQua
group by KetQua.MaMh
having count(KetQua.MaSV) = 2;
/*
33.Cho biết những sinh viên thi lại trên 2 lần.
*/
select DMSV.TenSV
from KetQua
join DMSV on KetQua.MaSV = DMSV.MaSV
where KetQua.LanThi >2;
/*
34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
*/
select concat(sv.HoSV+' '+sv.Tensv) as 'Họ tên sinh viên',sv.phai,kq.lanthi,avg(kq.Diem) as'diem trung binh'
from ketqua kq
join DMSV sv on kq.MaSV = sv.MaSV
where kq.masv=sv.masv and kq.lanthi=1 and sv.phai='Nam'
group by kq.lanthi,sv.phai, concat(sv.Hosv+' '+sv.tensv)
having avg(kq.Diem)>7.0;
/*
35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
*/
select KetQua.Masv as 'Mã sinh viên',count(KetQua.Mamh)as'Số môn rớt'
from ketqua
where KetQua.lanthi=1 and KetQua.diem<5
group by KetQua.Masv
having count(KetQua.Mamh)>=2;
/*
36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
*/
select DMkhoa.TenKhoa ,count(DMSV.Masv) as 'Số sinh viên nam'
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where DMSV.Phai='Nam'
group by DMKhoa.TenKhoa
having count(DMSV.Masv)>=2;
/*
37.Cho biết những khoa có 2 sinh đạt học bổng từ 200.000 đến 300.000
*/
select DMkhoa.TenKhoa , count(DMSV.Masv) as 'Số sinh viên'
from DMSV
join DMKhoa on DMSV.MaKhoa = DMKhoa.MaKhoa
where hocbong between 200000 and 300000 
group by DMKhoa.TenKhoa
having count(DMSV.Masv)>=2;
/*
38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn
trong lần thi 1.
*/
select mh.TenMH as 'Tên môn học',sum(case when kq.diem>=5 then 1 else 0 end )as 'Số sinh viên Đậu',sum(case when kq.diem<5 then 1 else 0 end ) as 'Số sinh viên Rớt'
from ketqua kq
join DMMH mh on kq.MaMH = mh.MaMH
where  kq.lanthi=1
group by mh.TenMH;
/*
39.Cho biết sinh viên nào có học bổng cao nhất.
*/
select concat(DMSV.HoSV, ' ', DMSV.TenSV) as HoTenSV, HocBong from DMSV
where HocBong =  (select max(DMSV.HocBong) from DMSV );
/*
40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
*/
select concat(sv.hosv,' ',sv.tensv) as 'Họ tên sinh viên',mh.tenmh 'Tên môn học',kq.lanthi,diem
from ketqua kq
join DMSV sv on kq.MaSV = sv.MaSV
join DMMH mh on kq.MaMH = mh.MaMH 
where  kq.lanthi=1 and mh.tenmh='cơ sở dữ liệu'
and diem=
(
select max(diem)
from ketqua kq
join DMMH mh on kq.MaMH = mh.MaMH 
where  mh.tenmh='cơ sở dữ liệu' and kq.lanthi=1
);
/*
41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
*/
select concat(DMSV.Hosv,' ',DMSV.tensv) as 'Họ tên sinh viên',DMSV.ngaysinh as 'Ngày sinh',DMSV.makhoa as 'Mã khoa'
from dmsv
where (curdate()-ngaysinh)=
(
select max(curdate()-ngaysinh)
from dmsv
where DMSV.makhoa ='av';
)
/*
42.Cho biết khoa nào có đông sinh viên nhất.
*/
select kh.tenkhoa
from dmsv sv
join DMKhoa kh on sv.MaKhoa = kh.MaKhoa
group by kh.tenkhoa
having count(kh.tenkhoa)= (select max(t.tong)
from
(
select count(masv) as tong
from dmsv
group by makhoa
) as t
);
/*
43.Cho biết khoa nào có đông nữ nhất.
*/
select kh.tenkhoa as 'Tên khoa'
from dmsv sv
join DMKhoa kh on sv.MaKhoa = kh.MaKhoa
where  sv.phai= 'nữ'
group by kh.tenkhoa
having count(kh.tenkhoa)=(select max(t.tong)
from
(
select count(masv) as tong
from dmsv
group by makhoa
) as t
);
/*
44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
*/
select DMMH.TenMH 
from ketqua
join DMMH on ketqua.MaMh = DMMH. MaMH
where ketqua.lanthi=1 and ketqua.diem<5
group by DMMH.Mamh
having count(ketqua.diem)=(select max(t.tong)
from
(
select count(masv) as tong
from dmsv
group by makhoa
) as t
);
/*
45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn
điểm thi văn của sinh viên học khoa anh văn.
*/
select distinct sv.TenSV
from ketqua kq
join dmsv sv on kq.MaSV = sv.MaSV
where kq.mamh='05' and sv.makhoa not like 'av' and kq.diem>(
select diem
from ketqua kq, dmsv sv
where sv.masv=kq.masv and mamh='05' and makhoa='av'
);
/*
46.Cho biết sinh viên có nơi sinh cùng với Hải.
*/
select dmsv.Masv,concat(dmsv.hosv,' ',dmsv.tensv) as HoTenSV
from dmsv
where dmsv.noisinh=( select dmsv.noisinh
from dmsv
where dmsv.tensv='hải');
/*
47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của
sinh viên thuộc khoa anh văn
*/
select dmsv.masv
from dmsv
where dmsv.hocbong>=all (select hocbong from dmsv where makhoa='av');
/*
48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên
học khóa anh văn
*/
/*
49. ho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm
thi lần 1 môn cơ sở dữ liệu của những sinh viên khác
*/
select DMSV.masv, concat(dmsv.hosv,' ',dmsv.tensv) as 'Họ tên sinh viên'
from ketqua
join DMSV on ketqua.MaSV= DMSV.MaSV
where mamh='01' and lanthi=2 and diem>=all(select diem from ketqua where mamh='01' and lanthi=1);
/*
50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn.
*/
select masv,ketqua.mamh,diem
from ketqua, (select mamh, max(diem) as maxdiem
from ketqua
group by mamh)a
where ketqua.mamh=a.mamh and diem=a.maxdiem;
/*
51.Cho biết những khoa không có sinh viên học.
*/
select *
from dmkhoa
where not exists (select distinct makhoa
from ketqua,dmsv where ketqua.masv=dmsv.masv and makhoa=dmkhoa.makhoa);
/*
52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
*/
select *
from dmsv
where not exists
(select distinct*
from ketqua
where mamh = '01' and masv=dmsv.masv);
/*
53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
*/
select masv
from ketqua kq
where lanthi=2 and not exists
(select *
from ketqua
where lanthi=1 and masv=kq.masv);
/*
54.Cho biết môn nào không có sinh viên khoa anh văn học
*/
select tenmh
from dmmh
where
not exists
(select mamh
from ketqua kq,dmsv sv
where sv.masv=kq.masv and sv.makhoa='av' and dmmh.mamh=mamh);
/*
55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm
*/
Select MaSV
From DMSv dmsv
Where MaKhoa='AV' And Not Exists (Select *
From KetQua
Where MaMH='05' And MaSV=dmsv.MaSV
);
/*
56.Cho biết những sinh viên không rớt môn nào.
*/
Select MaSV
From DMSV dmsv
Where Not Exists (Select *
From KetQua
Where Diem<=5 And MaSV=dmsv.MaSV
);
/*
57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên
chưa bao giờ rớt.
*/
Select MaSV,MaKhoa,HocBong
From DMSv dmsv
Where MaKhoa='AV' And HocBong>0 And Not Exists (Select *
From KetQua
Where Diem<5 And MaSV=dmsv.MaSV
);
/*
58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa
nào có ít sinh viên nhận học bổng nhất.
*/
Select MaKhoa,count(MaSV)as'So Luong SV'
From DMSV
Where HocBong>0
Group By MaKhoa
Having count(MaSV)>=All (Select count(MaSV)
From DMSv
where hocbong>0
Group By MaKhoa
)
UNION
Select MaKhoa,count(MaSV) as 'So Luong SV'
From DMSV
Where HocBong>0
Group By MaKhoa
Having count(MaSV)<=All (Select count(MaSV)
From DMSV
where hocbong>0
Group By MaKhoa
);
/*
59.Cho biết 3 sinh viên có học nhiều môn nhất.
*/

SELECT TOP 3 MaSV,Count(Distinct MaMH)as'Số môn học'
From KetQua
Group By MaSV
Having Count(Distinct MaMH)>=All(Select count( distinct MaMH)
From KetQua
Group By MaSV
);
/*
60.Cho biết những môn được tất cả các sinh viên theo học.
*/
Select MaMH
From KetQua
Group By MaMH
Having count(distinct MaSV)=(Select count(MaSV)
From DMSv
);
/*
61.Cho biết những sinh viên học những môn giống sinh viên có mã số A02 học.
*/
Select distinct MaSV
From KetQua kq
Where Exists(Select distinct MaMH
From KetQua
Where MaSV='A02' and MaMH=kq.MaMH
);
/*
62.Cho biết những sinh viên học những môn bằng đúng những môn mà sinh
viên A02 học.
*/
Select TenSV
From KetQua kq,DMSv dmsv,(Select MaSV,MaMH,count(distinct MaMH)SoMon
From KetQua
Where MaSV='A02'
Group By MaSV,MaMH)a
Where kq.MaSV=dmsv.MaSV and kq.MaMH=a.MaMH and kq.MaSV <>a .MaSV
Group By TenSV
Having count(distinct kq.MaMH)=(Select count(distinct MaMH)
From KetQua
Where MaSV='A02');
Select dmsv.MaSV
From KetQua kq, DMSv dmsv
Where kq.MaSV=dmsv.MaSV and MaMH=(Select distinct MaMH
From KetQua
Where MaSV='A02' and MaMH=kq.MaMH) and dmsv.MaSV Not Like 'A02'
Group By dmsv.MaSV
Having count(distinct MaMH)=(Select count(distinct MaMH)
From KetQua
Where MaSV='A02')
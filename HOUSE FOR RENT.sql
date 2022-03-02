create database phuong_23;

use phuong_23;

drop database phuong_23;

create table Loaiphong(

ma_lp varchar(10) primary key,

ten_lp varchar(50));

insert into Loaiphong

values

('L01','Phòng đơn'),

('L02','Phòng ghép'),

('L03','Phòng lớn');

create table Quan(

ma_quan varchar(20)primary key,

ten_quan varchar(30));

insert into Quan

values

('HC','quận Hải Châu'),

('TK','quận Thanh Khê'),

('LC','quận Liên Chiểu'),

('ST','quận Sơn Trà'),

('NHS','quận Ngủ Hành Sơn'),

('CL','quận Cẩm Lệ');


create table Nhatro(

ma_nt varchar(20) primary key,

ten_nt varchar(30),

chutro varchar(30),

sdt varchar(11),

email varchar(40));

insert into Nhatro

values

('N01','Nhà Trọ Villa','Y Diệu','0342136915','ydieu123@gmail.com'),

('N02','Nhà Trọ Gấu Trúc','Ngô Mỹ Hoài','0342136914','hoai12@gmail.com'),

('N04','Nhà Trọ Búp Bê','Trần Đình Duyệt','0842136959','duyet103@gmail.com'),

('N05','Nhà Trọ Hoa Hồng','Nguyễn Văn Minh','0342136973','minh0210@gmail.com'),

('N06','Nhà Trọ Mực Xanh','Nguyễn Ngọc Linh','0842136986','linh999@gmail.com'),

('N07','Nhà Trọ XinhXinh','Lê Thị Hoa','0342136974','hoa111@gmail.com'),

('N08','Nhà Trọ Happy','Ngô Thị Luyên','0342132362','luyen212@gmail.com'),

('N09','Nhà Trọ ABC','Đinh Thị Tâm','0842134567','tamtam1997@gmail.com'),

('N10','Nhà Trọ Finally','Hoa Phượng','0394921408','phuong606@gmail.com');


create table Khachhang(

ma_kh varchar(10) primary key,

ten_kh varchar(50),

CMND_CCCD varchar(10),

so_dt varchar(11),

quequan varchar(150));

insert into Khachhang

values

('KH01','Hồ Thị Hoa','197452832','0395971408','Quảng Trị'),

('KH02','Nguyễn Công A','197452834','0395971446','Kon Tum'),

('KH03','Trần Đình Công','197454675','08959755778','Quảng Nam'),

('KH04','Lê Thị Ngọc','197462864','0395971692','Quảng Bình'),

('KH05','Đinh Thị Minh Nguyệt','197452882','0395972341','Huế'),

('KH06','Hoa Phượng','197452866','0395971499','Đà Nẵng');


create table Phongtro(

ma_p varchar(20) primary key,

ma_lp varchar(10),

foreign key (ma_lp) references Loaiphong(ma_lp),

dientich varchar(20),

gia decimal(10,2),

diachi varchar(100),

ma_quan varchar(20),

ma_nt varchar(20),

foreign key (ma_quan) references Quan(ma_quan),

foreign key (ma_nt) references Nhatro(ma_nt),

trangthai enum('Hết phòng','Còn phòng'),

ngaydang datetime,

mota varchar(1000));

insert into Phongtro

values

('P01','L01','18m2',500000,'42 Ngô Quyền, Phước Mỹ,Sơn Trà','ST','N04','Còn phòng','2021/10/16','trả tiền phòng theo tháng'),

('P02','L01','18m2',600000,'100 An Dương Vương, Mỹ An, Ngũ Hành Sơn','NHS','N06','Còn phòng','2021/10/12','bao tiền điện nước,giường đôi'),

('P03','L02','25m2',1000000,'42 Ngô Quyền, Phước Mỹ, Sơn Trà','ST','N04','2021/10/06','Còn phòng','có thể ở 3 người'),

('P04','L02','26m2',1100000,'100 An Dương Vương, Mỹ An, Ngũ Hành Sơn','NHS','N06','Còn phòng','2021/10/04','bao tiền điện nước,phải cọc trước 50000đồng'),

('P05','L03','45m2',2500000,'100 An Dương Vương, Mỹ An, Ngũ Hành Sơn,Đà Nẵng','NHS','N06','Hết phòng','2021/04/04','Tự trả tiền điện nước'),

('P06','L01','15m2',500000,'121 Nguyễn Tất Thành, Xuân Hà, Thanh Khê,Đà Nẵng','TK','N08','Còn phòng','2021/07/07','cọc trước 30000đồng'),

('P07','L02','24m2',900000,'121 Nguyễn Tất Thành, Xuân Hà, Thanh Khê,Đà Nẵng','TK','N08','Hết phòng','2021/07/05','cọc trước 50000đồng'),

('P08','L03','40m2',3000000,'123 Nguyễn Tất Thành, Tân Chính, Thanh Khê,Đà Nẵng','TK','N08','Còn phòng','2021/07/10','cọc trước 100000đồng,đầy đủ nội thất'),

('P09','L01','18m2',450000,'38 Hải Hồ, Nam Dương, Hải Châu, Đà Nẵng','HC','N02','Hết phòng','2020/08/12','trả tiền phòng theo tháng,tiền điện nước tự trả'),

 ('P10','L01','16m2',550000,'50 Lê Hiến Mai, Khánh Nam, Liên Chiểu,Đà Nẵng','LC','N09','Hết phòng','2020/06/25','trả tiền phòng theo tháng,bao tiền điện'),

('P11','L02','30m2',1700000,'Số 20, Đường Nhơn Hòa 19, Phường Hòa An, Quận Cẩm Lệ, Đà Nẵng','LC','N09','Còn phòng','2021/10/23','Phòng trọ có gác kiên cố Tolet riêng Bếp riêng giờ giấc thoải mái  không ở chung chủ'),

('P12','L02','30m2',1000000,'23 nguyễn văn huề, Phường Thanh Khê Tây, Quận Thanh Khê, Đà Nẵng','TK','N05','2021/10/22','Phòng trọ gần công ty , gần trường đại học , gần tạp hoá , thuận tiện cho việc học hành , đi làm , an ninh tốt');


create table Thuephong(

ma_thue varchar(10),

ma_kh varchar(10),

ma_p varchar(20),

ngaythue datetime,

foreign key (ma_kh) references Khachhang(ma_kh),

foreign key (ma_p) references Phongtro(ma_p));

insert into Thuephong

values

('T01','KH02','P03','2021/06/23'),

('T02','KH03','P02','2021/07/19'),

('T03','KH01','P01','2021/08/21'),

('T04','KH05','P10','2021/09/30'),

('T05','KH06','P11','2021/10/22'),

('T06','KH04','P08','2021/09/30');




create table Danhgia(

id int primary key,

ma_kh varchar(10),

foreign key (ma_kh) references Khachhang(ma_kh),

ma_p varchar(20),

foreign key (ma_p) references Phongtro(ma_p),

like_dislike enum('thích','không thích'),

ngaydanhgia datetime,

noidung varchar(1000));

insert into Danhgia

values

(1,'KH02','P03','thích','2021/08/23','Phòng ở đẹp, sạch sẽ, thoải mái và giá thành hợp lý phết'),

(2,'KH03','P02','không thích','2021/09/19','Không gian hẹp, an ninh không đảm bảo'),

(3,'KH01','P01','thích','2021/10/21','Con trai của bác chủ trọ đẹp trai, phòng ở thoái mải'),

(4,'KH05','P10','không thích','2021/10/30','Ở mà không bao tiền nước, tao tắm hơi nhiều'),

(5,'KH06','P11','thích','2021/11/22','Phòng xin xò, có wifi miễn phí nha'),

(6,'KH04','P08','Không thích','2021/09/30','Nội thất hơi xuống cấp, bắt cọc tiền cao quá'),

(7,'KH03','P08','Không thích','2021/06/23','Phòng ở hơi xấu');

select * from Loaiphong;

select * from Quan;

select * from Phongtro;

select * from Nhatro;

select * from Khachhang;

select * from Danhgia;

select * from Thuephong;



select * from Danhgia

where like_dislike = 'không thích';

 select ma_p, count(like_dislike) from Danhgia

 where like_dislike = 'không thích'

group by ma_p;



1.view

a.      Tạo view cho phòng trọ đăng gần đây nhất

Cú pháp:

SELECT

	`phuong_23`.`phongtro`.`ma_p` AS `ma_p`,

	`phuong_23`.`phongtro`.`ma_lp` AS `ma_lp`,

	`phuong_23`.`phongtro`.`dientich` AS `dientich`,

	`phuong_23`.`phongtro`.`gia` AS `gia`,

	`phuong_23`.`phongtro`.`diachi` AS `diachi`,

	`phuong_23`.`phongtro`.`ma_quan` AS `ma_quan`,

	`phuong_23`.`phongtro`.`ma_nt` AS `ma_nt`,

	`phuong_23`.`phongtro`.`trangthai` AS `trangthai`,

	`phuong_23`.`phongtro`.`ngaydang` AS `ngaydang`,

	`phuong_23`.`phongtro`.`mota` AS `mota`

FROM

	`phuong_23`.`phongtro`

WHERE

	YEAR(`phuong_23`.`phongtro`.`ngaydang`) = '2021' AND MONTH(`phuong_23`.`phongtro`.`ngaydang`) = '10'

a.      Tạo view cho các phòng trọ còn trống

Cú pháp:

 

SELECT

	`phuong_23`.`phongtro`.`ma_p` AS `ma_p`,

	`phuong_23`.`phongtro`.`ma_lp` AS `ma_lp`,

	`phuong_23`.`phongtro`.`dientich` AS `dientich`,

	`phuong_23`.`phongtro`.`gia` AS `gia`,

	`phuong_23`.`phongtro`.`diachi` AS `diachi`,

	`phuong_23`.`phongtro`.`ma_quan` AS `ma_quan`,

	`phuong_23`.`phongtro`.`ma_nt` AS `ma_nt`,

	`phuong_23`.`phongtro`.`trangthai` AS `trangthai`,

	`phuong_23`.`phongtro`.`ngaydang` AS `ngaydang`,

	`phuong_23`.`phongtro`.`mota` AS `mota`

FROM

	`phuong_23`.`phongtro`

WHERE

	`phuong_23`.`phongtro`.`trangthai` = 'còn phòng'

ORDER BY

	`phuong_23`.`phongtro`.`gia`

 

c.Tạo view hiện thị thông tin chủ trọ

 Cú pháp:

SELECT

	`phuong_23`.`nhatro`.`ma_nt` AS `ma_nt`,

	`phuong_23`.`nhatro`.`ten_nt` AS `ten_nt`,

	`phuong_23`.`nhatro`.`chutro` AS `chutro`,

	`phuong_23`.`nhatro`.`sdt` AS `sdt`,

	`phuong_23`.`nhatro`.`email` AS `email`

FROM

	`phuong_23`.`nhatro`

d.Tạo view hiện thị thông tin khách hàng

 Cú pháp:

SELECT

    `phuong_23`.`khachhang`.`ten_kh` AS `ten_kh`,

    `phuong_23`.`khachhang`.`CMND_CCCD` AS `CMND_CCCD`,

    `phuong_23`.`khachhang`.`so_dt` AS `so_dt`,

    `phuong_23`.`khachhang`.`quequan` AS `quequan`

FROM

	(

        `phuong_23`.`khachhang`

	JOIN `phuong_23`.`thuephong` ON

    	(

            `phuong_23`.`thuephong`.`ma_kh` = `phuong_23`.`khachhang`.`ma_kh`

    	)

	)

WHERE

	`phuong_23`.`thuephong`.`ma_thue` = `phuong_23`.`thuephong`.`ma_thue`

 

2.Procedure

a. Tìm phòng theo mã quận

 

Cú pháp:

 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Timtheo_Quận`(IN `n` VARCHAR(30))

BEGIN

SELECT quan.ten_quan,loaiphong.ten_lp,phongtro.dientich,phongtro.gia,phongtro.diachi,phongtro.mota

from phongtro

join quan on quan.ma_quan=phongtro.ma_quan

join loaiphong on loaiphong.ma_lp=phongtro.ma_lp

where phongtro.ma_quan=n ;

END$$

DELIMITER ;

 

b.      Tìm phòng theo giá tiền

Cú pháp:

 

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Timtheo_giá`(IN `thapnhat` DECIMAL(10,2), IN `caonhat` DECIMAL(10,2))

begin

SELECT * from phongtro

where phongtro.gia BETWEEN thapnhat and caonhat

order by phongtro.gia;

END$$

DELIMITER ;

c.Kiểm tra phòng nào còn trống hay đã hết phòng

Cú pháp:

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `check_phòng`(IN `chọn` ENUM('Hết phòng','Còn phòng'))

BEGIN

                         	

    (select * from  phongtro

 	where phongtro.trangthai = Chọn

    );

 

END$$

DELIMITER ;

 

d.Cập nhật phòng trọ

Cú pháp:

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_phongtro`(IN `Giatien` DECIMAL(10,2), IN `Diachi` VARCHAR(100), IN `Mota` VARCHAR(1000), IN `ID` VARCHAR(20), IN `maquan` VARCHAR(20))

BEGIN

	UPDATE phongtro

	SET gia=giatien,diachi=Diachi,mota=Mota,ma_quan=maquan

	Where ma_p=ID;

	select * from phongtro;

end$$

e.

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_phong`(IN `maphong` VARCHAR(20), IN `maloaiphong` VARCHAR(10), IN `s` VARCHAR(20), IN `giatien` DECIMAL(10,2), IN `Diachi` VARCHAR(100), IN `maquan` VARCHAR(20), IN `manhatro` VARCHAR(20), IN `Trangthai` ENUM('Hết phòng','còn phòng'), IN `Ngaydang` DATETIME, IN `Mota` VARCHAR(1000))

begin

INSERT into phongtro(ma_p ,ma_lp ,dientich ,gia,diachi ,ma_quan ,ma_nt ,trangthai ,ngaydang, 

mota )

values(maphong ,maloaiphong ,s ,giatien,Diachi ,maquan ,manhatro ,Trangthai ,Ngaydang, Mota );

select * from phongtro;

end$$

DELIMITER


i.

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Thông_tin_khách_thuê`(IN `n` VARCHAR(20))

BEGIN

SELECT khachhang.ma_kh,khachhang.ten_kh,khachhang.CMND_CCCD,khachhang.so_dt,khachhang.quequan

from khachhang

inner join thuephong on thuephong.ma_kh=khachhang.ma_kh

WHERE (thuephong.ma_thue=n) or (khachhang.ma_kh=n);

end$$

DELIMITER ;


g.

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Tìm_theo_loại_phòng`(IN `nhap` VARCHAR(10))

BEGIN

SELECT quan.ten_quan,loaiphong.ten_lp,phongtro.dientich,phongtro.gia,phongtro.diachi,phongtro.mota

from phongtro
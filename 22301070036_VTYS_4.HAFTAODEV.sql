CREATE DATABASE KITAP_KUTUPHANE
USE KITAP_KUTUPHANE;
CREATE TABLE UYELER( 
	uyeNo INT IDENTITY(1,1),
	uyeAdi VARCHAR(50),
	uyeSoyadi VARCHAR(50),
	c�ns�yet INT,
	telefon VARCHAR(25),
	eposta VARCHAR(50),
	adresNo INT,
	PRIMARY KEY("uyeNo")
);
USE KITAP_KUTUPHANE;
/*ALTER TABLE UYELER ADD CONSTRAINT "ADRESLER_UYELER" FOREIGN KEY (adresNo) REFERENCES ADRESLER(adresNo);*/
USE KITAP_KUTUPHANE;
CREATE TABLE ADRESLER(
	adresNo INT IDENTITY(1,1),
	cadde VARCHAR(50),
	mahalle VARCHAR(50),
	binaNo VARCHAR(20),
	sehir VARCHAR(30),
	postaKodu VARCHAR(20),
	ulke VARCHAR(20),
	PRIMARY KEY("adresNo")
);
USE KITAP_KUTUPHANE;
CREATE TABLE KUTUPHANE(
	kutuphaneNo INT NOT NULL,
	adresNo INT NOT NULL,
	Kutuphaneismi VARCHAR(50),
	aciklama VARCHAR(30),
	PRIMARY KEY("kutuphaneNo")
);
CREATE TABLE EMANET(
	emanetNo INT IDENTITY(1,1),
	ISBN VARCHAR(50),
	uyeNo INT NOT NULL,
	kutuphaneNo INT NOT NULL,
	emanetTarihi VARCHAR(20),
	teslimTarihi VARCHAR(20),
	PRIMARY KEY("emanetNo")
	);
		/*USE KITAP_YAZAR;
	ALTER TABLE EMANET
ADD CONSTRAINT EMANET_KITAPLAR
FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);
		USE KITAP_YAZAR;
	ALTER TABLE EMANET
ADD CONSTRAINT EMANET_UYELER
FOREIGN KEY (uyeNo) REFERENCES UYELER(uyeNo);
		USE KITAP_YAZAR;
	ALTER TABLE EMANET
ADD CONSTRAINT EMANET_KUTUPHANE
FOREIGN KEY (kutuphaneNo) REFERENCES KUTUPHANE(kutuphaneNo);*/

USE KITAP_KUTUPHANE
CREATE TABLE KITAPLAR(
	ISBN VARCHAR(50),
	kitapAdi VARCHAR(50),
	yayinTarihi VARCHAR(20),
	sayfaSayisi VARCHAR(20),
	PRIMARY KEY("ISBN")
	);


	CREATE TABLE YAZARLAR(
	yazarNo INT IDENTITY(1,1),
	yazarAdi VARCHAR(50),
	yazarSoyadi VARCHAR(30),
	PRIMARY KEY("yazarNo")
	);

	CREATE TABLE KATAGORI(
	katagoriNo INT IDENTITY(1,1),
	katagoriAdi VARCHAR(50),
	);

	CREATE TABLE KITAP_YAZAR(
	ISBN VARCHAR(50),
	yazarNo INT ,
	);
			/* USE KITAP_KUTUPHANE;
	ALTER TABLE KITAP_YAZAR
ADD CONSTRAINT KITAP_YAZAR_KITAPLAR
FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);
	USE KITAP_KUTUPHANE;
	ALTER TABLE KITAP_YAZAR
ADD CONSTRAINT KITAP_YAZAR_YAZARLAR
FOREIGN KEY (yazarNo) REFERENCES YAZARLAR(yazarNo);*/



	CREATE TABLE KITAP_KATAGORII(
	ISBN VARCHAR(50),
	katagoriNo INT ,
	);

		/*  USE KITAP_KUTUPHANE
	ALTER TABLE KITAP_KATAGORII
ADD CONSTRAINT KITAP_KATAGORII_KITAPLAR
FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);*/

	CREATE TABLE KITAP_KUTUPHANE(
	kutuphaneNo INT,
	ISBN VARCHAR(50),
	miktar VARCHAR(10),
	);
	 /*USE KITAP_KUTUPHANE;
	ALTER TABLE KITAP_KUTUPHANE
ADD CONSTRAINT KITAP_KUTUPHANE_KUTUPHANE
FOREIGN KEY (kutuphaneNo) REFERENCES KUTUPHANE(kutuphaneNo);
	ALTER TABLE KITAP_UYEYAZARR
ADD CONSTRAINT KITAP_KUTUPHANE_KITAPLAR
FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);*/




USE KITAP_KUTUPHANE;
 INSERT INTO UYELER
 VALUES 
 ('Ay�e', 'Kara', 0,'35612345562', 'aa@mail.com',1);
 
 INSERT INTO UYELER
 VALUES ('Ali', 'U�ar', 1,'3562345667', 'au@abc.com',3),
		('Ahmet','Davut',1, '3563456778', 'ad@mail.com',2),
		('Murat', 'S�nmez',1, '3564566789','ms@krh.com',1),
		('Burak' ,'Torun' ,1, '3565678997', 'bt@mail2.com',7),
		('Ayla', 'Y�lmaz',0,'5111254584','ay@m3.com',5),
		('Mustafa','Demir',1,'4441257898','md@mail.com' ,6),
		('Turgut','�zseven',1,'3584587125',	'to@md4.com',4),
		('Elif','Uymaz',0,'3124789520','eu@md4.com',8);

		INSERT INTO ADRESLER
VALUES('Orhanhazi','Esentepe','5','Tokat','60100','T�rkiye');
INSERT INTO ADRESLER
VALUES('Sivas','Kemer','34','Tokat','60100','T�rkiye'),	
		(NULL,'Evrenk�y','21','Tokat','60400','T�rkiye');

	INSERT INTO ADRESLER
	values
	(Null,'Cumhuriyet','56','Tokat','60300','T�rkiye'),
	('Atat�rk','Barbaros','142','�stanbul','34200',	'T�rkiye'),
	('C.G�rsel'	,'Tuna'	,'65','�zmir','35600','T�rkiye'),
	('Sipahi','�amlar',	'85','Amasya','5200','T�rkiye'),
	(Null,'K�z�lay','114','Ankara','6400','T�rkiye');

	USE KITAP_KUTUPHANE
	INSERT INTO KUTUPHANE
VALUES(1,1,'Merkez','Merkez Kutuphanesi');

INSERT INTO KUTUPHANE
VALUES
(2,3,'Zile'	,'a��ld�'),
(3,4,'Turhal',	'kapand�'),
(4,7,'Amasya','�ye kayd� i�in merkez');

	INSERT INTO KITAPLAR
VALUES
('6051961436',	'�emboller ve i�aretler','2010-02-02','352'),
('6053950899',	't�rk e�itim ve tarih','2010-01-01','262'),
('6053953135',	'geli�im ve psikolojisi','2010-01-01','290'),
('6054125234',	'zazalar ve t�rkl�k','2010-01-01','264'),
('6055813185','�ifreler','2009-08-03','288'),
('6055882334','28 g�nde kuantum','2009-08-03','248'),
('6055937065','bigisayarl� muhasebe','2009-04-05','358'),
('6055937157','bilgisayar ve int kullan�m�','2009-12-03','410'),
('6055937188,','autocad 2009','2009-01-26','396'),
('605593730','ticari matematik','2010-02-02','390'),
('6055937515','algoritma ve prog giri�','2009-07-01','306'),
('6055937522','internet prog 1','2009-09-10','284'),
('6055937683','internet prog 2','2010-01-01','515'),
('9755395661','sermaye ve dil','2010-01-01','144'),
('9758874095','fak. i�in genel mat','2007-01-01','226');
	INSERT INTO YAZARLAR
VALUES
('turgut','�zseven'),
('ebubekir','ya�ar'),
('h.�ebi','bal'),
('fahri','�zkan'),
('murat','can'),
('�t�gen','senger'),
('m.ali','feyiz'),
('ramazan','inal'),
('g�khan','�uvalo�lu'),
('salih','�zkan'),
('Christian','marrazi'),
('hatice','ergin'),
('arma�an','y�ld�z'),
('a.r�za','�zdemir'),
('s.anne','taylor'),
('paul','lunde'),
('kaitry','wilkison');

	INSERT INTO KATAGORI
VALUES
('bilgisayar'),
('ekonomi'),
('e�itim'),
('edebiyat'),
('matematik'),
('psikoloji'),
('k�lt�r'),
('muhasebe'),
('bilim'),
('di�er');

	INSERT INTO KITAP_KATAGORII
VALUES
('6055937515',19),
('6055937522',1),
('9755395661',2),
('6055937683',1),
('6055937157',1),
('6055937188',1),
('6055937065',8),
('605593730',5),
('9758874095',5),
('6053950899,',3),
('6053953135',6),
('6054125234',7),
('6055882334',9),
('6055813185',9),
('6051061436',10);
	INSERT INTO KITAP_YAZAR
VALUES
('6055937515',2),
('6055937522',1),
('6055937522',2),
('6055937683',1),
('6055947683',2),
('6055937157',3),
('6055937188',5),
('60559370652',7),
('6055937065',8),
('605593730',6),
('9758874095',9),
('6053950899',10),
('9755395661',11),
('6053953135',12),
('6053953135',13),
('6054125234',14),
('6055882334',15),
('6055813185',16),
('6051061436',17);
	INSERT INTO KITAP_KUTUPHANE
VALUES
(1,'6055937515','3'),
(2,'6055937515','1'),
(3,'6055937515','2'),
(4,'6055937515','4'),
(1,'6055937522','1'),
(2,'6055937522','1'),
(3,'6055937522,','1'),
(4,'6055937683','2'),
(2,'6055937683','3'),
(1,'6055937683','1'),
(3,'6055937157','2'),
(2,'6055937157','1'),
(3,'6055937188','1'),
(1,'6055937188','1'),
(1,'6055937065','2'),
(2,'6055937065','1'),
(3,'6055937065','4'),
(3,'605593730','1'),
(1,'605593730','1'),
(1,'9758874095','2'),
(3,'9758874095','1'),
(2,'9758874095','6'),
(4,'6053950899','1'),
(3,'6053950899','1'),
(3,'9755395661','1'),
(4,'6053953135','2'),
(1,'6053953135','1'),
(3,'6054125234','1'),
(2,'6054125234','2'),
(1,'6055882334','1'),
(4,'6055813185','1'),
(3,'6055813185','2'),
(2,'6051061436','1'),
(3,'6051061436','1');
INSERT INTO EMANET
VALUES
('6055937515',1,1,'2009-10-12','2009-10-17'),
('6055937683',2,2,'2009-11-15','2009-11-20'),
('6055937522',1,1,'2009-12-22',	'2009-12-24'),
('6055937065',4,2,'2012-01-01','2012-11-20'),
('6053953135',7,4,'2010-01-05','2010-01-10'),
('6054125234',2,3,'2010-01-10','2010-01-11'),
('9758874095',2,2,'2012-02-12','2010-02-14'),
('6051061436',3,3,'2010-03-21','2010-03-23'),
('6055937522',5,1,'2010-03-25','2010-03-26'),
('6055937515',6,3,'2010-04-01','2010-05-05'),
('6055937683',1,3,'2010-05-17','2010-05-20'),
('6055813185',7,5,'2010-05-17','2010-05-19'),
('6053950899',7	,4,	'2010-05-20','2010-05-22'),
('6055882334',1	,1,	'2010-06-01','2010-06-03'),
('6055937683',2	,2,'2010-06-10','2010-06-14'),
('6055937065',3	,2,	'2010-06-10','2010-06-14'),
('6055937065',8	,4,	'2010-05-02','2010-06-02'),
('6053950899',9,3,'2010-06-22','2010-06-30');

/*CREATE TABLE EMANETTT(
	emanetNo INT IDENTITY(1,1),
	ISBN VARCHAR(50),
	uyeNo INT NOT NULL,
	kutuphaneNo INT NOT NULL,
	emanetTarihi VARCHAR(20),
	teslimTarihi VARCHAR(20),
	PRIMARY KEY("emanetNo")
	);
ALTER TABLE EMANETTT
ADD FOREIGN KEY (uyeNo) REFERENCES UYELER(uyeNo);
ALTER TABLE EMANETTT
ADD FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN);
ALTER TABLE EMANETTT
ADD FOREIGN KEY (kutuphaneNo) REFERENCES KUTUPHANE(kutuphaneNo);*/


/*2.SORU*/


USE KITAP_KUTUPHANE;
 INSERT INTO UYELER
 VALUES 
 ('�mit', 'TEKMEN', 1,'5078819042', 'uumit380@gmail.com',10);
 

 UPDATE UYELER
 SET uyeAdi='Muhammet �mit'
 where uyeAdi='�mit';

 		INSERT INTO ADRESLER
VALUES('Kocayusuf','Osmanl�','38','Kayseri','38150','T�rkiye');

UPDATE ADRESLER
 SET mahalle='Sel�uklu'
 where mahalle='Osmanl�';


 	USE KITAP_KUTUPHANE
	INSERT INTO KUTUPHANE
VALUES(15,8,'Merkez','Merkez Kutuphanesi');

UPDATE KUTUPHANE
set Kutuphaneismi='belediye'
where Kutuphaneismi='merkez';

	USE KITAP_KUTUPHANE
INSERT INTO EMANET
VALUES
('6055937515',1,1,'2019-10-12','2022-10-17');

UPDATE EMANET
 SET teslimTarihi='2019-10-17'
 where teslimTarihi='2022-10-17';


 USE KITAP_KUTUPHANE
INSERT INTO KITAP_YAZAR
VALUES
('6055937515',18);


 UPDATE KITAP_YAZAR
 SET yazarNo='2'
 where yazarNo='18';

 
 USE KITAP_KUTUPHANE
INSERT INTO KATAGORI
VALUES
('bil�mkurgu');

 UPDATE KATAGORI
 SET katagoriAdi='Bilim Kurgu'
 where katagoriAdi='bil�mkurgu';



INSERT INTO KITAP_KUTUPHANE
VALUES
(1,'60559375154','8');

UPDATE KITAP_KUTUPHANE
SET miktar='10'
WHERE miktar='8';



INSERT INTO KITAP_YAZAR
VALUES
('6055937515',10);

UPDATE KITAP_YAZAR
SET yazarNo='11'
WHERE yazarNo='10';


INSERT INTO KITAP_KATAGORII
VALUES
('6055937515',11);

UPDATE KITAP_KATAGORII
SET katagoriNo='10'
WHERE katagoriNo='11';


DELETE FROM KITAP_KATAGORII
WHERE katagoriNo = '10';


/*3.soru*/

SELECT uyeNo
FROM UYELER
ORDER BY uyeNo ASC;


/*7.SORU*/
SELECT CONCAT(LEFT(UyeAdi, 1), LEFT(UyeSoyAdi, 5)) AS BirlestirilmisAdSoyad
FROM UYELER
WHERE LEN(UyeSoyAdi) > 5
ORDER BY UyeAdi;

/*8.SORU*/
SELECT Sehir
FROM ADRESLER 
ORDER BY Sehir




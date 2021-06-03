create database bloodbank;
use bloodbank;
CREATE TABLE BB_Manager
( M_id int NOT NULL,
 mName varchar(200) NOT NULL,
 m_phNo bigint
-- CONSTRAINT Mid_pk PRIMARY KEY (M_id)
);
INSERT into BB_Manager
VALUES(102,'Sachin gupta', 7739728387),
(103,'Raushan Kumar', 	9852078728),
(104,'Prashant Kumar', 	7004726754),
(105,'Vivek anand', 	7004531708);
INSERT into BB_Manager
VALUES(106,'Roshan Kumar', 7894561236),
(107,'Atharva Kedar', 9632147852),
(108,'Paras kamble', 78945632145),
(109,'Pankaj Kumar', 	7845917117),
(110,'Kapil sharma', 9905790999);
select * from BB_Manager;

CREATE TABLE Blood_Donor
( bd_ID int NOT NULL,
 bd_name varchar(200) NOT NULL,
 bd_age varchar(200),
 bd_sex varchar(200),
 bd_Bgroup varchar(10),
 bd_reg_date date,
 reco_ID int NOT NULL,
 City_ID int NOT NULL
-- CONSTRAINT bdID_pk PRIMARY KEY (bd_ID)
);
INSERT into Blood_Donor
VALUES(9901,'Vicky kumar',29,'M','B+','2020-12-17',201564,654),
(9902,'Sania',31,'F','A+','2020-11-22',301245,258),
(9903,'Shoukat Ali Khan',28,'M','O+','2019-01-04',784512,148),
(9904,'Prashant Sarkar',24,'M','O+','2020-07-19',123698,123),
(9905,'Shilpi',40,'F','A-','2018-12-24',456123,789),
(9906,'Ashish ranjan',41,'M','AB+','2019-08-28',789456,147),
(9907,'Pooja',39,'F','AB-','2020-02-06',321147,1400),
(9908,'Priyanka',35,'F','AB+','2020-09-10',741258,654),
(9909,'Ritesh kumar',20,'M','B-','2020-10-15',321963,145),
(9910,'Raj Singh',22,'M','O-','2018-12-17',987456,224);
select * from Blood_Donor;

CREATE TABLE BloodSpecimen
( specimen_number int NOT NULL,
 b_group varchar(10) NOT NULL,
 status int,
 dfind_ID int NOT NULL,
 M_id int NOT NULL
 CONSTRAINT specimenumber_pk PRIMARY KEY (specimen_number)
);
INSERT into BloodSpecimen
VALUES(1001, 'B+', 1,11,101),
(1002, 'O+', 1,12,102),
(1003, 'AB+', 1,11,102),
(1004, 'O-', 1,13,103),
(1005, 'A+', 0,14,101),
(1006, 'A-', 1,13,104),
(1007, 'AB-', 1,15,104),
(1008, 'AB-', 0,11,105),
(1009, 'B+', 1,13,105),
(1010, 'O+', 0,12,105),
(1011, 'O+', 1,13,103),
(1012, 'O-', 1,14,102),
(1013, 'B-', 1,14,102),
(1014, 'AB+', 0,15,101);
Select * from BloodSpecimen;

CREATE TABLE City
( City_ID int NOT NULL,
 City_name varchar(200) NOT NULL,
-- CONSTRAINT CityID_pk PRIMARY KEY (City_ID)
);
INSERT into City
VALUES(1200,'Pune'),
(1300,'Nagpur'),
(1400,'Mumbai'),
(1500,'New Delhi');
INSERT into City
VALUES(1600,'Patna'),
(1700,'Ranchi'),
(1800,'Jaipur'),
(1900,'Indore'),
(2000,'Bhopal');
select * from City;

CREATE TABLE DiseaseFinder
( dfind_ID int NOT NULL,
 dfind_name varchar(200) NOT NULL,
 dfind_PhNo bigint
-- CONSTRAINT dfindID_pk PRIMARY KEY (dfind_ID)
);
INSERT into DiseaseFinder
VALUES(11,'Paras',7894561236),
(12,'Palak',7893691234),
(13,'Jerry',9874561234),
(14,'Mukesh',9632145678),
(15,'Monika',7893647896);
INSERT into DiseaseFinder
VALUES(16,'Ram',985213645),
(17,'Swathi',9945612345),
(18,'Gautham',912365478),
(19,'Ashwin',8874561234),
(20,'Yash',8974561236);
select * from DiseaseFinder;
drop table DiseaseFinder;

CREATE TABLE Hospital_Info_1
( hosp_ID int NOT NULL,
 hosp_name varchar(200) NOT NULL,
 City_ID int NOT NULL,
 M_id int NOT NULL
 primary key(hosp_ID)
-- CONSTRAINT hospID_pk PRIMARY KEY (hosp_ID)
);
INSERT into Hospital_Info_1
VALUES(1,'MayoClinic',1100,101),
(2,'CleavelandClinic',1200,103),
(3,'NYU',1300,103);
INSERT into Hospital_Info_1
VALUES(4,'	Aditya Hospitals',1400,101),
(5,'Charlton',1800,103),
(6,'Greenoaks',1300,106),
(7,'Forestpark',1300,102),
(8,'Parkland',1200,106),
(9,'Pinecreek',1500,109),
(10,'WalnutHill',1700,105);
select * from Hospital_Info_1;

CREATE TABLE Hospital_Info_2
( hosp_ID int NOT NULL,
 hosp_name varchar(200) NOT NULL,
 hosp_needed_Bgrp varchar(10),
 hosp_needed_qnty int
 primary key(hosp_ID,hosp_needed_Bgrp)
-- CONSTRAINT hospID_pk PRIMARY KEY (hosp_ID)
);
INSERT into Hospital_Info_2
VALUES(1,'MayoClinic','A+',20),
(1,'MayoClinic','AB+',0),
(1,'MayoClinic','A-',40),
(1,'MayoClinic','B-',10),
(1,'MayoClinic','AB-',20);
INSERT into Hospital_Info_2
VALUES(2,'CleavelandClinic','A+',40),
(2,'CleavelandClinic','AB+',20),
(2,'CleavelandClinic','A-',10),
(2,'CleavelandClinic','B-',30),
(2,'CleavelandClinic','B+',0),
(2,'CleavelandClinic','AB-',10);
INSERT into Hospital_Info_2
VALUES(3,'NYU','A+',0),
(3,'NYU','AB+',0),
(3,'NYU','A-',0),
(3,'NYU','B-',20),
(3,'NYU','B+',10),
(3,'NYU','AB-',0);
INSERT into Hospital_Info_2
VALUES(4,'Baylor','A+',10),
(5,'Charlton','B+',30),
(4,'Baylor','A-',40),
(7,'Forestpark','B-',40),
(8,'Parkland','B+',10),
(9,'Pinecreek','AB-',20);
select * from Hospital_Info_2;

CREATE TABLE Recipient
( reci_ID int NOT NULL,
 reci_name varchar(200) NOT NULL,
 reci_age varchar(200),
 reci_Brgp varchar(200),
 reci_Bqnty float,
 reco_ID int NOT NULL,
 City_ID int NOT NULL,
 M_id int NOT NULL,
 reci_sex varchar(200),
 reci_reg_date date
-- CONSTRAINT reciid_pk PRIMARY KEY (reci_id)
);
Alter table Recipient
ADD reci_sex varchar(200);
 
Alter table Recipient
ADD reci_reg_date date;
INSERT into Recipient
VALUES(10001,'Sachin gupta',25,'B+',1.5,101212,1100,101,'M','2020-12-17'),
(10002,'Prashant Kumar',60,'A+',1,101312,1100,102,'M','2018-12-16'),
(10003,'Pankaj Kumar',35,'AB+',0.5,101312,1200,102,'M','2020-10-17'),
(10004,'Paras',66,'B+',1,101212,1300,104,'M','2019-11-17'),
(10005,'Kapil sharma',53,'B-',1,101412,1400,105,'M','2019-04-17'),
(10006,'Rajnish Kumar',45,'O+',1.5,101512,1500,105,'M','2018-12-17'),
(10007,'Niranjan Kumar',22,'AB-',1,101212,1500,101,'F','2020-05-17');
INSERT into Recipient
VALUES(10008,'Raj Singh',25,'B+',2,101412,1300,103,'F','2019-12-14'),
(10009,'Ritesh kumar',30,'A+',1.5,101312,1100,104,'M','2020-02-16'),
(10010,'Rakesh Ranjan',25,'AB+',3.5,101212,1200,107,'M','2020-10-17');
select * from Recipient;
Drop table Recipient;

CREATE TABLE Recording_Staff
( reco_ID int NOT NULL,
 reco_Name varchar(200) NOT NULL,
 reco_phNo bigint
-- CONSTRAINT recoID_pk PRIMARY KEY (reco_ID)
);
INSERT into Recording_Staff
VALUES(101212,'Prashant Kumar',	7845917117),
(101312,'Niranjan Kumar',	8079082758),
(101412,'Rakesh Ranjan',	7717795633),
(101512,'SUNIL KUMAR',9874561231),
(101612,'Mukesh',7894561234);
INSERT into Recording_Staff
VALUES(101712,'Abdul',7894561234),
(101812,'Jerry',8794561236),
(101912,'Tony',7893691234),
(101012,'Roopa',7894569874),
(101112,'Pooja',9744561236);
select * from Recording_Staff
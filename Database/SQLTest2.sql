#실습 2-1
CREATE DATABASE `bank`;
CREATE USER 'admin2'@'%'IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `bank`.* TO 'admin2'@'%';
FLUSH PRIVILEGES;
#실습 2-2
CREATE TABLE `bank_customer`(
	`c_no` VARCHAR(14) NOT NULL,
	`c_name` VARCHAR(14) NOT NULL,
	`c_dist` int NOT NULL DEFAULT 0,
	`c_phone` VARCHAR(20) NOT NULL,
	`c_addr` VARCHAR(100) DEFAULT null
);
CREATE TABLE `bank_account`(
	`a_no` VARCHAR(11) NOT NULL,
	`a_item_dist` VARCHAR(2) NOT NULL,
	`a_item_name` VARCHAR(20) NOT NULL ,
	`a_c_no` VARCHAR(14) NOT NULL,
	`a_balance` INT DEFAULT NULL DEFAULT 0,	
	`a_open_date` date DEFAULT null	
);
CREATE TABLE `bank_transaction`(
	`t_no` int not null AUTO_INCREMENT PRIMARY KEY,
	`t_a_no` VARCHAR(11) NOT NULL,
	`t_dist` int NOT NULL,
	`t_amount` int NOT NULL DEFAULT 0,
	`t_datetime` datetime DEFAULT NULL
);
#실습 2-3
INSERT INTO `bank_customer`VALUES ('102-22-51094','부산의원',2,'051-518-1010','부산시 남구');
INSERT INTO `bank_customer`VALUES ('220-82-52237','(주)한국전산',2,'02-134-1045','서울시 강서구');
INSERT INTO `bank_customer`VALUES ('361-22-42687','(주)정보산업',2,'031-563-1253','경기도광명시');
INSERT INTO `bank_customer`VALUES ('730423-1000001','김유신',1,'051-518-1001','경기도 수원시');
INSERT INTO `bank_customer`VALUES ('750210-1000002','김춘추',1,'010-1234-1002','경기도광주시');
INSERT INTO `bank_customer`VALUES ('830513-1000003','선덕여왕',1,'010-1234-1003','서울시마포구');
INSERT INTO `bank_customer`VALUES ('870830-1000004','강감찬',1,'010-1234-1004','서울시 영등포구');
INSERT INTO `bank_customer`VALUES ('910912-1000005','신사임당',1,'010-1234-1005','강원도 강릉시');
INSERT INTO `bank_customer`VALUES ('941127-1000006','이순신',1,'010-1234-1006','부산시영도구');

INSERT INTO `bank_account` VALUES('101-11-1001','S1','자유저축예금','730423-1000001',420000,'20050721');
INSERT INTO `bank_account` VALUES('101-11-1003','S1','자유저축예금','870830-1000004',53000,20070217);
INSERT INTO `bank_account` VALUES('101-11-2001','S1','자유저축예금','220-82-52237',23000000,20030414);
INSERT INTO `bank_account` VALUES('101-11-2002','S1','자유저축예금','361-22-42687',4201000,20081230);
INSERT INTO `bank_account` VALUES('101-11-2003','S1','자유저축예금','102-22-51094',8325010,20100607);
INSERT INTO `bank_account` VALUES('101-12-1002','S2','정기적립예금','830513-2000003',1020000,20110513);
INSERT INTO `bank_account` VALUES('101-13-1005','S3','주택청약예금','941127-1000006',720800,20121015);
INSERT INTO `bank_account` VALUES('101-21-1004','L1','고객신용대출','910912-1000005',1200500,20090825);
INSERT INTO `bank_account` VALUES('101-22-1006','L2','예금담보대출','730423-1000001',25000,20131211);
INSERT INTO `bank_account` VALUES('101-23-1007','L3','주택담보대출','750210-1000002',2700000,20200923);

INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1001',1,50000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1003',2,120000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-2001',2,300000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1002',1,1000000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1001',3,0,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1005',1,200000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1001',1,450000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-2002',2,32000,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-2003',3,0,'2022-08-21 04:26:52');
INSERT INTO `bank_transaction`(`t_a_no`,`t_dist`,`t_amount`,`t_datetime`)VALUES('101-11-1003',1,75000,'2022-08-21 04:26:52');

#실습 2-4
SELECT * FROM `bank_account`;
#실습 2-5
SELECT * FROM `bank_customer`;
#실습 2-6
SELECT * FROM `bank_transaction`;
#실습 2-7
SELECT `c_name`,`c_no` FROM `bank_customer`;
#실습 2-8
SELECT `a_item_dist`,`a_item_name` FROM `bank_account`;
#실습 2-9
SELECT DISTINCT `a_item_dist`,`a_item_name`FROM `bank_account`;
#실습 2-10
SELECT * FROM `bank_account` WHERE `a_item_name` LIKE'%자유저축예금%'AND `a_balance`>1000000;
#실습 2-11
SELECT * FROM `bank_customer`WHERE `c_addr` LIKE '%경기도%';
#실습 2-12
SELECT* FROM `bank_customer` WHERE `c_dist` LIKE 2;
#실습 2-13
SELECT * FROM `bank_transaction` WHERE `t_dist` = 1;
#실습 2-14
SELECT * FROM `bank_transaction` WHERE `t_dist` = 2 ORDER BY `t_amount` Desc;
#실습 2-15
SELECT SUM(`t_amount`) AS `입금총합`,AVG(`t_amount`) AS `입금평균`FROM `bank_transaction` WHERE `t_dist`= 1;
#실습 2-16
SELECT MAX(`t_amount`)AS `큰금액` ,MIN(`t_amount`) AS `작은금액` FROM `bank_transaction` WHERE `t_dist`=2;
#실습 2-17
SELECT * FROM `bank_account` WHERE `a_item_name` LIKE '%자유저축예금%' ORDER BY `a_balance`DESC;
#실습 2-18
SELECT * FROM `bank_account` WHERE `a_item_name` LIKE '%자유저축예금%'order BY `a_balance` DESC LIMIT 1;
#실습 2-19
SELECT * FROM `bank_transaction`WHERE `t_amount` > 0 ORDER BY `t_dist`,`t_amount`DESC;
#실습 2-20
SELECT
COUNT(CASE WHEN t_dist = 1 THEN 1 END) AS `입금건수`,
COUNT(CASE WHEN t_dist = 2 THEN 2 END) AS `출금건수`,
COUNT(CASE WHEN t_dist = 3 THEN 3 END) AS `조회건수`
FROM `bank_transaction`;
#실습 2-21
SELECT `t_dist`,
	CASE 
	   when `t_dist` = 1 then '입금'
		when `t_dist` = 2 then '출금'
	 	when `t_dist` = 3 then '조회'
END AS `type`,
`t_a_no`,
`t_amount`
FROM `bank_transaction`;
#실습 2-22
SELECT `t_dist`,COUNT(`t_no`) FROM `bank_transaction` GROUP BY `t_dist`;
#실습 2-23
SELECT `t_a_no`,`t_dist`,SUM(`t_amount`) FROM `bank_transaction` WHERE `t_dist` = 1 GROUP BY t_a_no,`t_dist`;
#실습 2-24
SELECT 
`t_a_no`,
`t_dist`,
SUM(`t_amount`) AS `합계`
FROM `bank_transaction` WHERE `t_dist` = 1 group BY `t_a_no`,`t_dist` HAVING `합계` >= 100000 ORDER BY `합계` DESC;
#실습 2-25
SELECT * FROM `bank_account` AS a JOIN `bank_customer` AS b ON a.a_c_no = b.c_no;
#실습 2-26
SELECT `a_no` AS `계좌번호`,`a_item_name` AS `계좌이름`,`a_c_no` AS `주민번호(사업자번호)`,`c_name` AS `고객명`, `a_balance` AS `현재잔액`FROM `bank_account` AS a JOIN `bank_customer` AS b ON a.a_c_no = b.c_no;
#실습 2-27
SELECT * FROM `bank_transaction` AS a JOIN `bank_account` AS b ON a.t_a_no = b.a_no;
#실습 2-28
SELECT
`t_no` AS `거래번호`,
`t_a_no` AS `계좌번호`,
`a_c_no` AS `고객번호(주민번호)`,
`t_dist` AS `거래구분`,
`t_amount` AS `거래금액`,
`t_datetime` AS `거래일자`
FROM `bank_account` AS a
JOIN `bank_transaction` AS b
ON a.a_no =b.t_a_no;
#실습 2-29
SELECT
`t_no`,
`a_no`,
`c_no`,
`t_dist`,
`a_item_name`,
`c_name`,
`t_amount`,
`t_datetime`
FROM `bank_transaction` AS a
JOIN `bank_account` AS b ON a.t_a_no = b.a_no
JOIN `bank_customer` AS c ON b.a_c_no = c.c_no 
WHERE `t_dist` = 1
ORDER BY `t_amount` DESC;

#실습 2-30

SELECT 
	ANY_VALUE(`t_no`),
	ANY_VALUE(`a_no`),
	`c_no`,
	ANY_VALUE(`t_dist`) AS `구분`,
	ANY_VALUE(`a_item_name`),
	ANY_VALUE(`c_name`),
	COUNT(`t_no`) AS `거래건수`
FROM `bank_transaction` AS a
JOIN `bank_account` AS b ON a.t_a_no = b.a_no
JOIN `bank_customer` AS c ON b.a_c_no = c.c_no
WHERE `t_dist` IN(1, 2) AND `c_dist` = 1
GROUP BY `c_no`
ORDER BY `구분`, `거래건수` DESC;



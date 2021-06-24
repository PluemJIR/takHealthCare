/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.36-82.0 : Database - takhealtcare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `advicelist` */

DROP TABLE IF EXISTS `advicelist`;

CREATE TABLE `advicelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) DEFAULT NULL,
  `hospcode` varchar(5) DEFAULT NULL,
  `desc` text,
  `sort` int(2) DEFAULT NULL,
  `createby` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='รายการ comment list';

/*Data for the table `advicelist` */

/*Table structure for table `co_office` */

DROP TABLE IF EXISTS `co_office`;

CREATE TABLE `co_office` (
  `off_id` char(5) NOT NULL,
  `off_id_new` char(9) DEFAULT NULL,
  `off_name` varchar(100) DEFAULT NULL,
  `off_type` char(2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `road` varchar(100) DEFAULT NULL,
  `provid` char(2) DEFAULT NULL,
  `distid` char(4) DEFAULT NULL,
  `subdistid` char(6) DEFAULT NULL,
  `villid` char(8) DEFAULT NULL,
  `villno` char(2) DEFAULT NULL,
  `postcode` char(5) DEFAULT NULL,
  `cup_code` char(5) DEFAULT NULL,
  `pcu_code` char(5) DEFAULT NULL,
  `pointx` varchar(50) DEFAULT NULL,
  `pointy` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `hasdata` char(1) DEFAULT NULL,
  `hasdataf12` char(1) DEFAULT 'N',
  `hasdatancd` char(1) DEFAULT 'Y',
  `hasdatarefer` char(1) DEFAULT 'Y',
  `refermember` char(1) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `updatedate` date DEFAULT NULL,
  PRIMARY KEY (`off_id`),
  KEY `provid` (`provid`,`distid`,`subdistid`,`villid`),
  KEY `refermember` (`refermember`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `co_office` */

insert  into `co_office`(`off_id`,`off_id_new`,`off_name`,`off_type`,`address`,`road`,`provid`,`distid`,`subdistid`,`villid`,`villno`,`postcode`,`cup_code`,`pcu_code`,`pointx`,`pointy`,`status`,`hasdata`,`hasdataf12`,`hasdatancd`,`hasdatarefer`,`refermember`,`createdate`,`updatedate`) values ('00049',NULL,'สสจ.ตาก','01',NULL,NULL,'63','6301','630106','63010607','07',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','Y',NULL,NULL),('00671',NULL,'สสอ.เมืองตาก','02',NULL,NULL,'63','6301','630102','63010201','01',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00672',NULL,'สสอ.บ้านตาก','02',NULL,NULL,'63','6302','630201','63020106','06',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00673',NULL,'สสอ.สามเงา','02',NULL,NULL,'63','6303','630301','63030103','03',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00674',NULL,'สสอ.แม่ระมาด','02',NULL,NULL,'63','6304','630401','63040103','03',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00675',NULL,'สสอ.ท่าสองยาง','02',NULL,NULL,'63','6305','630502','63050202','02',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00676',NULL,'สสอ.แม่สอด','02',NULL,NULL,'63','6306','630601','63060101','01',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00677',NULL,'สสอ.พบพระ','02',NULL,NULL,'63','6307','630702','63070207','07',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('00678',NULL,'สสอ.อุ้มผาง','02',NULL,NULL,'63','6308','630801','63080101','01',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('07266',NULL,'รพ.สต.บ้านปากห้วยไม้งาม ตำบลหนองบัวเหนือ','03',NULL,NULL,'63','6301','630105','63010503','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07267',NULL,'รพ.สต.ตำบลไม้งาม','03',NULL,NULL,'63','6301','630106','63010604','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07268',NULL,'รพ.สต.บ้านลานห้วยเดื่อ ตำบลโป่งแดง','03',NULL,NULL,'63','6301','630107','63010713','13',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07269',NULL,'รพ.สต.บ้านโป่งแดง ตำบลโป่งแดง','03',NULL,NULL,'63','6301','630107','63010702','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07270',NULL,'รพ.สต.บ้านหนองนกปีกกา ตำบลโป่งแดง','03',NULL,NULL,'63','6301','630107','63010703','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07271',NULL,'รพ.สต.บ้านชะลาดระฆัง ตำบลโป่งแดง','03',NULL,NULL,'63','6301','630107','63010704','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07272',NULL,'รพ.สต.บ้านคลองขยางโพรง ตำบลน้ำรึม','03',NULL,NULL,'63','6301','630108','63010806','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07273',NULL,'รพ.สต.บ้านเกาะอ้ายด้วน ตำบลวังหิน','03',NULL,NULL,'63','6301','630109','63010901','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07274',NULL,'รพ.สต.บ้านท่าไม้แดง ตำบลวังหิน','03',NULL,NULL,'63','6301','630109','63010903','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07275',NULL,'รพ.สต.บ้านน้ำโจน ตำบลวังหิน','03',NULL,NULL,'63','6301','630109','63010906','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07276',NULL,'รพ.สต.บ้านวังเจ้า ตำบลเชียงทอง','03',NULL,NULL,'63','6309','630901','63090101','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07277',NULL,'รพ.สต.บ้านดงซ่อม ตำบลเชียงทอง','03',NULL,NULL,'63','6309','630901','63090103','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07278',NULL,'รพ.สต.บ้านปากห้วยแม่ท้อ ตำบลแม่ท้อ','03',NULL,NULL,'63','6301','630111','63011101','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07279',NULL,'รพ.สต.บ้านลางสาง ตำบลแม่ท้อ','03',NULL,NULL,'63','6301','630111','63011104','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07280',NULL,'รพ.สต.บ้านมูเซอ ตำบลแม่ท้อ','03',NULL,NULL,'63','6301','630111','63011107','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07281',NULL,'รพ.สต.บ้านหนองแขม ตำบลแม่ท้อ','03',NULL,NULL,'63','6301','630111','63011108','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07283',NULL,'รพ.สต.บ้านหนองปรือ ตำบลหนองบัวใต้','03',NULL,NULL,'63','6301','630113','63011301','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07284',NULL,'รพ.สต.ตำบลวังประจบ','03',NULL,NULL,'63','6301','630114','63011401','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07285',NULL,'รพ.สต.บ้านลานสอ ตำบลวังประจบ','03',NULL,NULL,'63','6301','630114','63011404','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07286',NULL,'รพ.สต.บ้านสระตลุง  ตำบลตลุกกลางทุ่ง','03',NULL,NULL,'63','6301','630115','63011501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07287',NULL,'รพ.สต.บ้านนาโบสถ์ ตำบลนาโบสถ์','03',NULL,NULL,'63','6309','630902','63090204','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07288',NULL,'รพ.สต.บ้านประดาง ตำบลประดาง','03',NULL,NULL,'63','6309','630903','63090303','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07289',NULL,'รพ.สต.บ้านแม่บอน ตำบลตากออก','03',NULL,NULL,'63','6302','630201','63020112','12',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07290',NULL,'รพ.สต.ตำบลสมอโคน','03',NULL,NULL,'63','6302','630202','63020205','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07291',NULL,'รพ.สต.บ้านน้ำดิบ ตำบลสมอโคน','03',NULL,NULL,'63','6302','630202','63020207','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07292',NULL,'รพ.สต.ตำบลแม่สลิด','03',NULL,NULL,'63','6302','630203','63020303','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07293',NULL,'รพ.สต.บ้านยางโอง ตำบลแม่สลิด','03',NULL,NULL,'63','6302','630203','63020305','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07294',NULL,'รพ.สต.บ้านยางโองนอก ตำบลแม่สลิด','03',NULL,NULL,'63','6302','630203','63020308','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07295',NULL,'รพ.สต.บ้านเด่นไม้ซุง ตำบลแม่สลิด','03',NULL,NULL,'63','6302','630203','63020309','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07296',NULL,'รพ.สต.บ้านหนองงิ้ว ตำบลตากตก','03',NULL,NULL,'63','6302','630204','63020403','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07297',NULL,'รพ.สต.ตำบลตากตก','03',NULL,NULL,'63','6302','630204','63020409','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07298',NULL,'รพ.สต.ตำบลเกาะตะเภา','03',NULL,NULL,'63','6302','630205','63020503','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07299',NULL,'รพ.สต.บ้านแม่ยะ ตำบลเกาะตะเภา','03',NULL,NULL,'63','6302','630205','63020507','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07300',NULL,'รพ.สต.ตำบลทุ่งกระเชาะ','03',NULL,NULL,'63','6302','630206','63020603','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07301',NULL,'รพ.สต.บ้านใหม่ ตำบลท้องฟ้า','03',NULL,NULL,'63','6302','630207','63020701','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07302',NULL,'รพ.สต.ตำบลท้องฟ้า','03',NULL,NULL,'63','6302','630207','63020703','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07304',NULL,'รพ.สต.บ้านห้วยพลู ตำบลท้องฟ้า','03',NULL,NULL,'63','6302','630207','63020706','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07305',NULL,'รพ.สต.บ้านป่ายางใต้ ตำบลสามเงา','03',NULL,NULL,'63','6303','630301','63030101','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07306',NULL,'รพ.สต.บ้านปากทางเขื่อน ตำบลวังหมัน','03',NULL,NULL,'63','6303','630302','63030201','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07307',NULL,'รพ.สต.บ้านวังหวาย ตำบลวังหมัน','03',NULL,NULL,'63','6303','630302','63030206','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07308',NULL,'รพ.สต.บ้านท่าไผ่ ตำบลยกกระบัตร','03',NULL,NULL,'63','6303','630303','63030302','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07309',NULL,'รพ.สต.บ้านแม่ระวาน ตำบลยกกระบัตร','03',NULL,NULL,'63','6303','630303','63030305','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07310',NULL,'รพ.สต.บ้านหนองเชียงคา ตำบลยกกระบัตร','03',NULL,NULL,'63','6303','630303','63030306','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07311',NULL,'รพ.สต.บ้านแม่เชียงราย ตำบลยกกระบัตร','03',NULL,NULL,'63','6303','630303','63030307','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07312',NULL,'รพ.สต.บ้านใหม่สามัคคี ตำบลยกกระบัตร','03',NULL,NULL,'63','6303','630303','63030310','10',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07313',NULL,'รพ.สต.ตำบลย่านรี','03',NULL,NULL,'63','6303','630304','63030403','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07314',NULL,'รพ.สต.บ้านหนองโสน ตำบลย่านรี','03',NULL,NULL,'63','6303','630304','63030404','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07315',NULL,'รพ.สต.บ้านอูมวาบ ตำบลบ้านนา','03',NULL,NULL,'63','6303','630305','63030501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07316',NULL,'รพ.สต.บ้านโสมง ตำบลบ้านนา','03',NULL,NULL,'63','6303','630305','63030504','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07317',NULL,'รพ.สต.บ้านสันป่าป๋วย ตำบลบ้านนา','03',NULL,NULL,'63','6303','630305','63030505','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07318',NULL,'รพ.สต.บ้านวังจันทร์ ตำบลวังจันทร์','03',NULL,NULL,'63','6303','630306','63030601','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07319',NULL,'รพ.สต.บ้านดงลาน ตำบลวังจันทร์','03',NULL,NULL,'63','6303','630306','63030605','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07320',NULL,'รพ.สต.บ้านสันป่าไร่ ตำบลพระธาตุ','03',NULL,NULL,'63','6304','630406','63040605','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07321',NULL,'รพ.สต.บ้านวังผา ตำบลแม่จะเรา','03',NULL,NULL,'63','6304','630402','63040204','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07322',NULL,'รพ.สต.เฉลิมพระเกียรติ 60 พรรษา นวมินทราชินี จ.ตาก','03',NULL,NULL,'63','6304','630402','63040206','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07323',NULL,'รพ.สต.บ้านห้วยบง ตำบลแม่จะเรา','03',NULL,NULL,'63','6304','630402','63040207','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07324',NULL,'รพ.สต.บ้านขะเนจื้อ ตำบลขะเนจื้อ','03',NULL,NULL,'63','6304','630403','63040307','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07325',NULL,'รพ.สต.บ้านแม่ระมาดน้อย ตำบลขะเนจื้อ','03',NULL,NULL,'63','6304','630403','63040308','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07326',NULL,'รพ.สต.บ้านคำหวัน ตำบลแม่ตื่น','03',NULL,NULL,'63','6304','630404','63040405','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07327',NULL,'รพ.สต.บ้านแสม ตำบลสามหมื่น','03',NULL,NULL,'63','6304','630405','63040504','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07328',NULL,'รพ.สต.ตำบลท่าสองยาง','03',NULL,NULL,'63','6305','630501','63050101','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07329',NULL,'รพ.สต.ตำบลแม่สอง','03',NULL,NULL,'63','6305','630503','63050302','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07330',NULL,'รพ.สต.บ้านแม่ระเมิง ตำบลแม่สอง','03',NULL,NULL,'63','6305','630503','63050308','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07331',NULL,'รพ.สต.ตำบลแม่หละ','03',NULL,NULL,'63','6305','630504','63050401','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07332',NULL,'รพ.สต.ตำบลแม่วะหลวง','03',NULL,NULL,'63','6305','630505','63050503','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07333',NULL,'รพ.สต.บ้านปูเตอร์ ตำบลแม่กุ','03',NULL,NULL,'63','6306','630602','63060204','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07334',NULL,'รพ.สต.ตำบลแม่กุ','03',NULL,NULL,'63','6306','630602','63060207','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07335',NULL,'รพ.สต.บ้านแม่กุเหนือ ตำบลแม่กุ','03',NULL,NULL,'63','6306','630602','63060208','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07336',NULL,'รพ.สต.บ้านแม่กุใหม่ ตำบลแม่กุ','03',NULL,NULL,'63','6306','630602','63060209','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07337',NULL,'รพ.สต.ตำบลพะวอ','03',NULL,NULL,'63','6306','630603','63060309','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07338',NULL,'รพ.สต.บ้านปางส่างคำ ตำบลพะวอ','03',NULL,NULL,'63','6306','630603','63060305','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07339',NULL,'รพ.สต.ตำบลแม่ตาว','03',NULL,NULL,'63','6306','630604','63060402','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07340',NULL,'รพ.สต.บ้านแม่กื๊ดหลวง ตำบลแม่กาษา','03',NULL,NULL,'63','6306','630605','63060501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07341',NULL,'รพ.สต.บ้านแม่กาษา ตำบลแม่กาษา','03',NULL,NULL,'63','6306','630605','63060502','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07342',NULL,'รพ.สต.บ้านโกกโก่ ตำบลแม่กาษา','03',NULL,NULL,'63','6306','630605','63060504','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07343',NULL,'รพ.สต.บ้านแม่กื้ดสามท่า ตำบลแม่กาษา','03',NULL,NULL,'63','6306','630605','63060508','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07344',NULL,'รพ.สต.ตำบลท่าสายลวด','03',NULL,NULL,'63','6306','630606','63060601','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07345',NULL,'รพ.สต.บ้านวังตะเคียน ตำบลท่าสายลวด','03',NULL,NULL,'63','6306','630606','63060604','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07346',NULL,'รพ.สต.ตำบลแม่ปะ','03',NULL,NULL,'63','6306','630607','63060702','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07347',NULL,'รพ.สต.บ้านห้วยกระโหลก ตำบลแม่ปะ','03',NULL,NULL,'63','6306','630607','63060704','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07348',NULL,'รพ.สต.บ้านห้วยหินฝน ตำบลแม่ปะ','03',NULL,NULL,'63','6306','630607','63060706','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07349',NULL,'รพ.สต.ตำบลมหาวัน','03',NULL,NULL,'63','6306','630608','63060804','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07350',NULL,'รพ.สต.บ้านเจดีย์โค๊ะ ตำบลมหาวัน','03',NULL,NULL,'63','6306','630608','63060806','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07351',NULL,'รพ.สต.บ้านห้วยยะอุ ตำบลด่านแม่ละเมา','03',NULL,NULL,'63','6306','630609','63060901','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07352',NULL,'รพ.สต.บ้านปางส้าน ตำบลด่านแม่ละเมา','03',NULL,NULL,'63','6306','630609','63060902','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07353',NULL,'รพ.สต.ตำบลพระธาตุผาแดง','03',NULL,NULL,'63','6306','630610','63061001','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07354',NULL,'รพ.สต.บ้านซอโอ ตำบลช่องแคบ','03',NULL,NULL,'63','6307','630702','63070207','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07355',NULL,'รพ.สต.ตำบลช่องแคบ','03',NULL,NULL,'63','6307','630702','63070211','11',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07356',NULL,'รพ.สต.บ้านร่มเกล้า 4 ตำบลคีรีราษฎร์','03',NULL,NULL,'63','6307','630703','63070301','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07357',NULL,'รพ.สต.บ้านชิบาโบ ตำบลคีรีราษฎร์','03',NULL,NULL,'63','6307','630703','63070308','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07358',NULL,'รพ.สต.บ้านร่มเกล้า 1 ตำบลคีรีราษฎร์','03',NULL,NULL,'63','6307','630703','63070304','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07359',NULL,'รพ.สต.บ้านวาเล่ย์ ตำบลวาเล่ย์','03',NULL,NULL,'63','6307','630704','63070403','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07360',NULL,'รพ.สต.บ้านรวมไทยพัฒนาที่ 16 ตำบลวาเล่ย์','03',NULL,NULL,'63','6307','630704','63070407','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07361',NULL,'รพ.สต.บ้านรวมไทยพัฒนาที่ 1 ตำบลรวมไทยพัฒนา','03',NULL,NULL,'63','6307','630705','63070510','10',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07362',NULL,'รพ.สต.บ้านรวมไทยพัฒนาที่ 6 ตำบลรวมไทยพัฒนา','03',NULL,NULL,'63','6307','630705','63070509','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07363',NULL,'รพ.สต.บ้านแม่กลองใหม่ ตำบลแม่กลอง','03',NULL,NULL,'63','6308','630806','63080601','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07364',NULL,'รพ.สต.บ้านหนองหลวง ตำบลหนองหลวง','03',NULL,NULL,'63','6308','630802','63080201','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07365',NULL,'รพ.สต.ตำบลโมโกร','03',NULL,NULL,'63','6308','630803','63080301','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07366',NULL,'รพ.สต.ตำบลแม่จัน','03',NULL,NULL,'63','6308','630804','63080402','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('07367',NULL,'รพ.สต.ตำบลแม่ละมุ้ง','03',NULL,NULL,'63','6308','630805','63080501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10558',NULL,'รพ.สต.บ้านผาผึ้ง ตำบลเชียงทอง','03',NULL,NULL,'63','6309','630901','63090106','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10559',NULL,'รพ.สต.บ้านห้วยเหลือง  ตำบลแม่ท้อ','03',NULL,NULL,'63','6301','630111','63011105','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10560',NULL,'สสช.บ้านหินลาด ','04',NULL,NULL,'63','6303','630305','63030503','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10561',NULL,'สสช.บ้านนุบอ ','04',NULL,NULL,'63','6304','630403','63040301','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10564',NULL,'สสช.บ้านห้วยสินา ','04',NULL,NULL,'63','6304','630404','63040408','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10565',NULL,'สสช.บ้านห้วยหมาบ้า ','04',NULL,NULL,'63','6304','630404','63040409','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10566',NULL,'สสช.บ้านห้วยโป่ง ','04',NULL,NULL,'63','6304','630404','63040410','10',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10567',NULL,'สสช.บ้านห้วยมะพร้าว ','04',NULL,NULL,'63','6304','630404','63040411','11',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10568',NULL,'สสช.บ้านแพ่แฮ  ','04',NULL,NULL,'63','6304','630405','63040501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10569',NULL,'สสช.บ้านขุนห้วยแม่ท้อ ','04',NULL,NULL,'63','6304','630405','63040502','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10571',NULL,'สสช.บ้านแม่เหว่ย  ','04',NULL,NULL,'63','6305','630501','63050104','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10572',NULL,'รพ.สต.บ้านเรกะติ ตำบลแม่อุสุ','03',NULL,NULL,'63','6305','630506','63050605','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10573',NULL,'รพ.สต.บ้านหนองบัว  ตำบลแม่อุสุ','03',NULL,NULL,'63','6305','630506','63050606','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10574',NULL,'สสช.บ้านแม่สองน้อย','04',NULL,NULL,'63','6305','630506','63050608','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10575',NULL,'สสช.บ้านเซหนะเดอลู่ ','04',NULL,NULL,'63','6305','630506','63050601','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10576',NULL,'สสช.บ้านมอทีทะ ','04',NULL,NULL,'63','6305','630506','63050609','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10578',NULL,'สสช.บ้านตะโป๊ะปู่  ','04',NULL,NULL,'63','6305','630502','63050204','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10580',NULL,'สสช.บ้านทีคุคี ','04',NULL,NULL,'63','6305','630503','63050304','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10581',NULL,'สสช.บ้านแม่นิล ','04',NULL,NULL,'63','6305','630503','63050306','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10582',NULL,'สสช.บ้านตะพิเดอ ','04',NULL,NULL,'63','6305','630503','63050309','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10583',NULL,'สสช.บ้านเคลอะเดอคี ','04',NULL,NULL,'63','6305','630503','63050310','10',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10584',NULL,'สสช.บ้านวะโดรโกร ','04',NULL,NULL,'63','6305','630503','63050312','12',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10585',NULL,'สสช.บ้านทีโบะคี ','04',NULL,NULL,'63','6305','630503','63050313','13',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10586',NULL,'รพ.สต.บ้านแม่ออกผารู  ตำบลแม่หละ','03',NULL,NULL,'63','6305','630504','63050403','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10587',NULL,'สสช.บ้านกาหม่าผาโด้ ','04',NULL,NULL,'63','6305','630504','63050405','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10588',NULL,'สสช.บ้านทีจือหล่อคี ','04',NULL,NULL,'63','6305','630504','63050408','08',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10589',NULL,'สสช.บ้านซอแขระกา ','04',NULL,NULL,'63','6305','630505','63050501','01',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10590',NULL,'สสช.บ้านแม่สะเปา ','04',NULL,NULL,'63','6305','630505','63050502','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10591',NULL,'สสช.บ้านเกร้คี ','04',NULL,NULL,'63','6305','630505','63050509','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10597',NULL,'สสช.บ้านป่าคาใหม่ ','04',NULL,NULL,'63','6307','630703','63070306','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10598',NULL,'สสช.บ้านป่าคาเก่า ','04',NULL,NULL,'63','6307','630703','63070307','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10599',NULL,'รพ.สต.บ้านยะพอ  ตำบลวาเล่ย์','03',NULL,NULL,'63','6307','630704','63070405','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10600',NULL,'สสช.บ้านกิ่วห้าง ','04',NULL,NULL,'63','6308','630801','63080103','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10601',NULL,'รพ.สต.วะครึโค๊ะ  ตำบลโมโกร','03',NULL,NULL,'63','6308','630803','63080302','02',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10602',NULL,'สสช.บ้านแม่กลองคี ','04',NULL,NULL,'63','6308','630803','63080303','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10603',NULL,'สสช.บ้านร่มเกล้า 5 ','04',NULL,NULL,'63','6308','630803','63080306','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10604',NULL,'สสช.บ้านนุโพ ','04',NULL,NULL,'63','6308','630804','63080404','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10605',NULL,'สสช.บ้านหม่องกั๊วะ ','04',NULL,NULL,'63','6308','630804','63080407','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10722',NULL,'โรงพยาบาลสมเด็จพระเจ้าตากสินมหาราช','06',NULL,NULL,'63','6301','630101','630101',NULL,NULL,'10722',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('10723',NULL,'โรงพยาบาลแม่สอด','06',NULL,NULL,'63','6306','630601','630601',NULL,NULL,'10723',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11238',NULL,'โรงพยาบาลบ้านตาก','07',NULL,NULL,'63','6302','630201','63020107','07',NULL,'11238',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11239',NULL,'โรงพยาบาลสามเงา','07',NULL,NULL,'63','6303','630301','63030104','04',NULL,'11239',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11240',NULL,'โรงพยาบาลแม่ระมาด','07',NULL,NULL,'63','6304','630401','63040104','04',NULL,'11240',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11241',NULL,'โรงพยาบาลท่าสองยาง','07',NULL,NULL,'63','6305','630502','63050202','02',NULL,'11241',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11242',NULL,'โรงพยาบาลพบพระ','07',NULL,NULL,'63','6307','630701','63070102','02',NULL,'11242',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11243',NULL,'โรงพยาบาลอุ้มผาง','07',NULL,NULL,'63','6308','630801','63080101','01',NULL,'11243',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11516',NULL,'โรงพยาบาลค่ายวชิรปราการ','12',NULL,NULL,'63','6301','630108','63010800','00',NULL,'10722',NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('11820',NULL,'แผนกสุขภาพอนามัย เขื่อนภูมิพล','13',NULL,NULL,'63','6303','630301','630301',NULL,NULL,'10722',NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('11989',NULL,'รพ.สต.บ้านชะลาด ตำบลป่ามะม่วง','03',NULL,NULL,'63','6301','630112','630112',NULL,NULL,'10722',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('11990',NULL,'รพ.สต.บ้านโป่งแค ตำบลวังประจบ','03',NULL,NULL,'63','6301','630114','63011407','07',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('12055',NULL,'โรงพยาบาลพระวอ','00',NULL,NULL,'63','6306','630603','630603',NULL,NULL,'10722',NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('14042',NULL,'รพ.สต.บ้านหนองหลวง ตำบลสามหมื่น','03',NULL,NULL,'63','6304','630405','63040503','03',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14043',NULL,'รพ.สต.บ้านทุ่งมะขามป้อม ตำบลพระธาตุ','03',NULL,NULL,'63','6304','630406','63040604','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14044',NULL,'รพ.สต.บ้านห้วยนกกก  ตำบลแม่หละ','03',NULL,NULL,'63','6305','630504','63050404','04',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14045',NULL,'รพ.สต.บ้านร่มเกล้าสหมิตร ตำบลคีรีราษฎร์','03',NULL,NULL,'63','6307','630703','63070305','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14046',NULL,'รพ.สต.บ้านเปิ่งเคลิ่ง  ตำบลแม่จัน','03',NULL,NULL,'63','6308','630804','63080409','09',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14127',NULL,'สสช.บ้านห้วยกระทิง ','04',NULL,NULL,'63','6304','630406','63040606','06',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14128',NULL,'สสช.บ้านใหม่สามยอดดอย','04',NULL,NULL,'63','6307','630702','63070214','14',NULL,'10722',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14129',NULL,'สสช.บ้านทรัพย์อนันต์ 18 ','04',NULL,NULL,'63','6307','630702','63070213','13',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14130',NULL,'สสช.บ้านกุยต๊ะ ','04',NULL,NULL,'63','6308','630804','63080405','05',NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('14158',NULL,'สสอ.วังเจ้า','02',NULL,NULL,'63','6309','630901','63090101','01',NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('14440',NULL,'เทศบาลเมืองตาก','13',NULL,NULL,'63','6301','630101','630101',NULL,NULL,'10722',NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('14929',NULL,'คลินิคชุมชนอบอุ่นเทศบาลนครแม่สอด','13',NULL,NULL,'63','6306','630601','630601',NULL,NULL,'10723',NULL,NULL,NULL,NULL,'Y','N','Y','Y','N',NULL,NULL),('15015',NULL,'รพ.สต.บ้านห้วยไม้แป้น  ตำบลมหาวัน','03',NULL,NULL,'63','6306','630608','630608',NULL,NULL,'10723',NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('22194',NULL,'สถานีกาชาดเทพรัตน์(สถานีกาชาดที่13จ.ตาก)','13',NULL,NULL,'63','6301','630112','63011203',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('22769',NULL,'สถานพยาบาลเรือนจำกลางตาก','13',NULL,NULL,'63','6301','630109','63010909',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('22839',NULL,'สถานพยาบาลเรือนจำอำเภอแม่สอด','13',NULL,NULL,'63','6306','630601','63060100',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N','N','Y','Y','N',NULL,NULL),('27443',NULL,'โรงพยาบาลวังเจ้า','07',NULL,NULL,'63','6309','630902',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','N','Y','Y','Y',NULL,NULL),('99922',NULL,'ศูนย์สุขภาพชุมชนโรงพยาบาลแม่สอด','08',NULL,NULL,'63','6306','630601','630601',NULL,NULL,'10723',NULL,NULL,NULL,NULL,'N','N','Y','Y','Y',NULL,NULL);

/*Table structure for table `healthcriteria` */

DROP TABLE IF EXISTS `healthcriteria`;

CREATE TABLE `healthcriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vcenter` varchar(255) NOT NULL COMMENT 'ค่ามาตฐาน',
  `advice` text COMMENT 'คำแนะนำเมื่อค่าผิดปกติ',
  `hospcode` varchar(10) NOT NULL COMMENT 'รหัสถานบริการ',
  `dupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `listid` int(11) NOT NULL COMMENT 'รายการตรวจ',
  `comment` varchar(255) DEFAULT NULL COMMENT 'คำอธิบายตัวแปล',
  PRIMARY KEY (`hospcode`,`listid`),
  UNIQUE KEY `autoincrete` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='แปลค่าของแต่ละสถานบริการ';

/*Data for the table `healthcriteria` */

insert  into `healthcriteria`(`id`,`vcenter`,`advice`,`hospcode`,`dupdate`,`listid`,`comment`) values (1,'ชาย 13-18,หญิง 12-16 mg/dL','ลดของเค็มและของหวาน','10722','2021-05-24 16:26:33',1,'ผลการตรวจเลือด'),(2,'36-48','-','10722',NULL,2,'-'),(3,'4.5-6.5','-','10722',NULL,3,'-'),(4,'5,000-10,000','-','10722',NULL,4,'-'),(5,'40-75','-','10722','2021-05-31 09:27:49',5,'-'),(6,'20-45','-','10722','2021-05-31 09:27:57',6,'-'),(7,'0-100','-','10722','2021-05-31 09:28:18',7,'-'),(8,'80-100','-','10722',NULL,8,'-'),(9,'26-30','-','10722',NULL,9,'-'),(10,'140,000-400,000','-','10722',NULL,10,'-'),(11,'-','-','10722',NULL,11,'-'),(12,'-','-','10722',NULL,12,'-'),(13,'-','-','10722',NULL,13,'-'),(14,'Negative','-','10722',NULL,14,'-'),(15,'Nomal','-','10722',NULL,15,'-'),(16,'0-2','-','10722',NULL,16,'-'),(17,'ชาย 0-2,หญิง 0-5','-','10722',NULL,17,'-'),(18,'70-110 mg%','-','10722',NULL,18,'-'),(19,'8-25 mg%','-','10722',NULL,19,'-'),(20,'036-1.6 mg%','-','10722',NULL,20,'-'),(21,'90-120 mg%','-','10722',NULL,21,'-'),(22,'150-200 mg%','-','10722',NULL,22,'-'),(23,'30-170 mg%','-','10722',NULL,23,'-'),(24,'35-60 mg%','-','10722',NULL,24,'-'),(25,'<120 mg%','-','10722',NULL,25,'-'),(26,'M < 7,F < 6','-','10722',NULL,26,'-'),(27,'53-128','-','10722',NULL,27,'-'),(28,'0-40','-','10722',NULL,28,'-'),(29,'0-35','-','10722',NULL,29,'-'),(36,'--','-','10722',NULL,30,'-'),(37,'-','-','10722',NULL,31,'-'),(39,'-','-','10722',NULL,32,'-'),(38,'-','-','10722',NULL,33,'-'),(40,'-','-','10722',NULL,34,'-'),(41,'-','-','10722',NULL,35,'-'),(30,'0-4.0','-','10722',NULL,36,'-'),(31,'0-4.0','-','10722',NULL,37,'-'),(32,'-','-','10722',NULL,38,'-'),(33,'-','-','10722',NULL,39,'-'),(34,'-','-','10722',NULL,40,'-'),(35,'-','-','10722',NULL,41,'-');

/*Table structure for table `healthgroup` */

DROP TABLE IF EXISTS `healthgroup`;

CREATE TABLE `healthgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) DEFAULT '' COMMENT 'กลุ่มรายการตรวจสุขภาพ',
  `active` int(1) DEFAULT '1' COMMENT 'สถานะ',
  `hospcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='กลุ่มรายการตรวจสุขภาพ';

/*Data for the table `healthgroup` */

insert  into `healthgroup`(`id`,`groupname`,`active`,`hospcode`) values (1,'ความสมบูรณ์เม็ดเลือด',1,'10722'),(2,'ผลตรวจปัสสาวะ',1,'10722'),(3,'ผลตรวจเลือด(blood Chem)',1,'10722'),(4,'การตรวจอุจจาระ',1,'10722'),(5,'ความเห็นแพทย์',1,'10722'),(6,'ผลตรวจอื่น ๆ',1,'10722'),(7,'คำแนะนำ',1,'10722');

/*Table structure for table `healthitemlist` */

DROP TABLE IF EXISTS `healthitemlist`;

CREATE TABLE `healthitemlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL COMMENT 'กลุ่มรายการตรวจสุขภาพ',
  `listname` varchar(255) DEFAULT NULL COMMENT 'รายการตรวจสุขภาพ',
  `dupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='รายการตรวจสุขภาพ';

/*Data for the table `healthitemlist` */

insert  into `healthitemlist`(`id`,`groupid`,`listname`,`dupdate`) values (1,1,'Hb','2021-05-24 14:21:08'),(2,1,'Hct','2021-05-24 14:22:58'),(3,1,'RBC','2021-05-24 14:23:41'),(4,1,'WBC','2021-05-24 14:23:51'),(5,1,'N','2021-05-24 14:23:58'),(6,1,'L','2021-05-24 14:24:03'),(7,1,'E','2021-05-24 14:24:10'),(8,1,'MVC','2021-05-24 14:24:17'),(9,1,'MCH','2021-05-24 14:24:25'),(10,1,'Platelet count','2021-05-24 14:24:44'),(11,2,'Epithelial cell','2021-05-24 14:40:26'),(12,2,'Sp gr','2021-05-24 14:40:38'),(13,2,'pH','2021-05-24 14:40:45'),(14,2,'Albumin','2021-05-24 14:41:02'),(15,2,'Sugar','2021-05-24 14:41:09'),(16,2,'RBC','2021-05-24 14:41:19'),(17,2,'WBC','2021-05-24 14:41:28'),(18,3,'FBS','2021-05-24 14:43:43'),(19,3,'BUN','2021-05-24 14:43:49'),(20,3,'Creatinine','2021-05-24 14:44:11'),(21,3,'GFR','2021-05-24 14:44:20'),(22,3,'Cholesterol','2021-05-24 14:44:34'),(23,3,'Triglyceride','2021-05-24 14:44:44'),(24,3,'HDL','2021-05-24 14:45:00'),(25,3,'LDL','2021-05-24 14:45:08'),(26,3,'Uric acid','2021-05-24 14:45:22'),(27,3,'Alk phos','2021-05-24 14:45:36'),(28,3,'SGOT','2021-05-24 14:45:46'),(29,3,'SGPT','2021-05-24 14:45:56'),(30,4,'Color','2021-05-24 14:46:32'),(31,4,'WBC','2021-05-24 14:46:40'),(32,4,'Parasite','2021-05-24 14:46:48'),(33,4,'Mucuos','2021-05-24 14:46:56'),(34,4,'Blood','2021-05-24 14:47:05'),(35,4,'Stool occult blood','2021-05-24 14:47:17'),(36,6,'CEA','2021-05-24 14:47:43'),(37,6,'PSA','2021-05-24 14:47:50'),(38,6,'AFE','2021-05-24 14:48:00'),(39,6,'HBsag','2021-05-24 14:48:10'),(40,6,'HbsAb','2021-05-24 14:48:22'),(41,6,'HbcAb','2021-05-24 14:48:30');

/*Table structure for table `healtpatient` */

DROP TABLE IF EXISTS `healtpatient`;

CREATE TABLE `healtpatient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(10) DEFAULT NULL COMMENT 'สถานบริการทีให้บริการ',
  `hn` varchar(50) DEFAULT NULL,
  `vn` varchar(50) DEFAULT NULL,
  `cid` varchar(13) DEFAULT NULL COMMENT 'เลขบัตรประชาชน',
  `fname` varchar(100) DEFAULT NULL COMMENT 'ชื่อ',
  `lname` varchar(100) DEFAULT NULL COMMENT 'นามสกุล',
  `sex` char(10) DEFAULT NULL,
  `age` int(3) DEFAULT NULL COMMENT 'อายุ ณ วันที่ตรวจ',
  `birth` date DEFAULT NULL COMMENT 'วันเกิด',
  `weight` double DEFAULT NULL COMMENT 'น้ำหนัก',
  `height` double DEFAULT NULL COMMENT 'ส่วนสูง',
  `rr` int(11) DEFAULT NULL COMMENT 'อัตราการเต้นหัวใจ',
  `pr` int(11) DEFAULT NULL COMMENT 'ชีพจร',
  `bpup` int(11) DEFAULT NULL COMMENT 'ความดันโลหิต(ค่าบน)',
  `bpdown` int(11) DEFAULT NULL COMMENT 'ความดันโลหิต(ค่าล่าง)',
  `waist` decimal(2,0) DEFAULT NULL COMMENT 'รอบเอว',
  `bmi` decimal(2,0) DEFAULT NULL COMMENT 'ค่า BMI',
  `doctor` varchar(100) DEFAULT NULL COMMENT 'แพทย์ผู้ตรวจ',
  `dateservice` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่ไปรับบริการ',
  `dupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่บันทึกข้อมูล',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลผู้มารับบริการ';

/*Data for the table `healtpatient` */

/*Table structure for table `healtpatientgroup` */

DROP TABLE IF EXISTS `healtpatientgroup`;

CREATE TABLE `healtpatientgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` char(13) DEFAULT NULL COMMENT 'เลข 13 หลักคนในกลุ่ม',
  `upper` char(13) DEFAULT NULL COMMENT 'เลข 13 หลักคนสร้างกลุ่ม',
  `approve` int(11) DEFAULT NULL COMMENT '1 = approve เจ้าหน้าที่ตรวจสอบยืนยันให้',
  `dupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='กลุ่มคนในครอบครัว';

/*Data for the table `healtpatientgroup` */

/*Table structure for table `healtresult` */

DROP TABLE IF EXISTS `healtresult`;

CREATE TABLE `healtresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientid` int(11) DEFAULT NULL,
  `hospcode` varchar(20) DEFAULT NULL,
  `cid` char(13) DEFAULT NULL,
  `hn` varchar(20) DEFAULT NULL,
  `vn` varchar(20) DEFAULT NULL COMMENT 'เลข มาตรวจของโรงบาล ณ 8iyh''oyho',
  `listid` int(11) DEFAULT NULL COMMENT 'รายการตรวจ(เชื่อม listmenu)',
  `result` varchar(100) DEFAULT NULL COMMENT 'ค่าที่ได้',
  `resultflag` int(1) DEFAULT '1' COMMENT ' ผลการตรวจ 1 = ปกติ 2 = ผิดปกติ',
  `dateservice` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่รับบริการ',
  `dupdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'วันที่บันทึกข้อมูล',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางเก็บผลการตรวจ';

/*Data for the table `healtresult` */

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1621827115),('m140209_132017_init',1621827119),('m140403_174025_create_account_table',1621827119),('m140504_113157_update_tables',1621827119),('m140504_130429_create_token_table',1621827119),('m140830_171933_fix_ip_field',1621827119),('m140830_172703_change_account_table_name',1621827119),('m141222_110026_update_ip_field',1621827119),('m141222_135246_alter_username_length',1621827120),('m150614_103145_update_social_account_table',1621827120),('m150623_212711_fix_username_notnull',1621827120),('m151218_234654_add_timezone_to_profile',1621827120),('m160929_103127_add_last_login_at_to_user_table',1621827120);

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `profile` */

insert  into `profile`(`user_id`,`name`,`public_email`,`gravatar_email`,`gravatar_id`,`location`,`website`,`bio`,`timezone`,`hospcode`) values (1,'Admin',NULL,NULL,NULL,NULL,NULL,'',NULL,'00049'),(2,'tsm',NULL,NULL,NULL,NULL,NULL,'',NULL,'10722'),(3,'user',NULL,NULL,NULL,NULL,NULL,'',NULL,'10723');

/*Table structure for table `social_account` */

DROP TABLE IF EXISTS `social_account`;

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`),
  CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `social_account` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `token` */

insert  into `token`(`user_id`,`code`,`created_at`,`type`) values (1,'TcddBXBtY9iPoMWySdhXwyOsBgHe2_u3',1621827333,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  `passwords` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`email`,`password_hash`,`auth_key`,`confirmed_at`,`unconfirmed_email`,`blocked_at`,`registration_ip`,`created_at`,`updated_at`,`flags`,`last_login_at`,`passwords`,`hospcode`) values (1,'admin','kimniyomclub@gmail.com','$2y$12$i3sHmFwysc8Oyb2XfAhmTus12dyxIVKVTpNLlCe1xDxPa/XfWiJ5W','wN6LbFos_do0J1nZ6GROQ_n9dB2_samO',1621839815,NULL,NULL,'::1',1621827333,1621827333,0,1622426727,NULL,NULL),(2,'tsm','tsm@gmail.com','$2y$12$w8UX9ssoMs4VQ0Ww40i2WOq8wn0NOSwEeyV52xWXEfsfMO/pmEtTy','PxKbyBnoSWvClrFJRGB2E-HvhCjRNKTo',1621839442,NULL,NULL,'::1',1621839442,1621839442,0,1622426771,NULL,NULL),(3,'user','user@gmail.com','$2y$12$evvLOrMCD7/QVKFzxnoFNObCArt1Hb72aX7OqOO2d6GkIGtePzuBq','8-XqgEDvNl3oI4tbL4T2gM6sfuz37Dmk',1621839689,NULL,NULL,'::1',1621839689,1621839689,0,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

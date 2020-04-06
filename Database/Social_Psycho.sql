/*
SQLyog - Free MySQL GUI v5.17
Host - 5.0.45-community-nt : Database - dbsocial
*********************************************************************
Server version : 5.0.45-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `dbsocial`;

USE `dbsocial`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `tbfriend` */

DROP TABLE IF EXISTS `tbfriend`;

CREATE TABLE `tbfriend` (
  `sno` int(11) NOT NULL,
  `userid` varchar(50) default NULL,
  `fid` varchar(50) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`sno`),
  KEY `userid` (`userid`),
  KEY `fid` (`fid`),
  CONSTRAINT `tbfriend_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tbuser` (`userid`),
  CONSTRAINT `tbfriend_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `tbuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbfriend` */

insert into `tbfriend` (`sno`,`userid`,`fid`,`status`) values (11,'1','2',1);
insert into `tbfriend` (`sno`,`userid`,`fid`,`status`) values (12,'2','1',1);
insert into `tbfriend` (`sno`,`userid`,`fid`,`status`) values (13,'1','7',1);
insert into `tbfriend` (`sno`,`userid`,`fid`,`status`) values (14,'7','1',1);

/*Table structure for table `tbgroup` */

DROP TABLE IF EXISTS `tbgroup`;

CREATE TABLE `tbgroup` (
  `groupid` int(11) NOT NULL,
  `groupdesc` varchar(50) default NULL,
  `groupowner` varchar(50) default NULL,
  PRIMARY KEY  (`groupid`),
  KEY `groupowner` (`groupowner`),
  CONSTRAINT `tbgroup_ibfk_1` FOREIGN KEY (`groupowner`) REFERENCES `tbuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbgroup` */

insert into `tbgroup` (`groupid`,`groupdesc`,`groupowner`) values (1,'1st','1');
insert into `tbgroup` (`groupid`,`groupdesc`,`groupowner`) values (2,'2nd','6');
insert into `tbgroup` (`groupid`,`groupdesc`,`groupowner`) values (3,'8th','8');
insert into `tbgroup` (`groupid`,`groupdesc`,`groupowner`) values (4,'7th','7');
insert into `tbgroup` (`groupid`,`groupdesc`,`groupowner`) values (5,'9th','8');

/*Table structure for table `tbgroupmember` */

DROP TABLE IF EXISTS `tbgroupmember`;

CREATE TABLE `tbgroupmember` (
  `memberid` int(11) NOT NULL,
  `memberuserid` varchar(50) default NULL,
  `membergid` int(11) default NULL,
  PRIMARY KEY  (`memberid`),
  KEY `memberuserid` (`memberuserid`),
  KEY `membergid` (`membergid`),
  CONSTRAINT `tbgroupmember_ibfk_1` FOREIGN KEY (`memberuserid`) REFERENCES `tbuser` (`userid`),
  CONSTRAINT `tbgroupmember_ibfk_2` FOREIGN KEY (`membergid`) REFERENCES `tbgroup` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbgroupmember` */

insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (1,'2',1);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (2,'6',1);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (3,'8',1);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (4,'1',2);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (5,'1',3);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (6,'1',4);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (7,'2',2);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (8,'2',3);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (9,'8',5);
insert into `tbgroupmember` (`memberid`,`memberuserid`,`membergid`) values (10,'1',5);

/*Table structure for table `tbmsg` */

DROP TABLE IF EXISTS `tbmsg`;

CREATE TABLE `tbmsg` (
  `msgid` int(11) NOT NULL,
  `msgfrmuserid` varchar(50) default NULL,
  `msgtouserid` varchar(50) default NULL,
  `msgdesc` varchar(50) default NULL,
  `msgdate` varchar(50) default NULL,
  `msgtime` varchar(50) default NULL,
  PRIMARY KEY  (`msgid`),
  KEY `msgfrmuserid` (`msgfrmuserid`),
  KEY `msgtouserid` (`msgtouserid`),
  CONSTRAINT `tbmsg_ibfk_1` FOREIGN KEY (`msgfrmuserid`) REFERENCES `tbuser` (`userid`),
  CONSTRAINT `tbmsg_ibfk_2` FOREIGN KEY (`msgtouserid`) REFERENCES `tbuser` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbmsg` */

insert into `tbmsg` (`msgid`,`msgfrmuserid`,`msgtouserid`,`msgdesc`,`msgdate`,`msgtime`) values (1,'2','1','Hello','26-02-2020','07:30 PM');
insert into `tbmsg` (`msgid`,`msgfrmuserid`,`msgtouserid`,`msgdesc`,`msgdate`,`msgtime`) values (5,'1','7','Hey budddy','04-04-20','10:18:39 PM');
insert into `tbmsg` (`msgid`,`msgfrmuserid`,`msgtouserid`,`msgdesc`,`msgdate`,`msgtime`) values (8,'7','1','Nice and Howz you?','05-04-20','01:27:59 AM');

/*Table structure for table `tbtopic` */

DROP TABLE IF EXISTS `tbtopic`;

CREATE TABLE `tbtopic` (
  `topicid` int(11) NOT NULL,
  `topicdesc` varchar(50) default NULL,
  `topicdate` varchar(50) default NULL,
  `topictime` varchar(50) default NULL,
  `topicusrid` varchar(50) default NULL,
  `topicgid` int(11) default NULL,
  PRIMARY KEY  (`topicid`),
  KEY `topicusrid` (`topicusrid`),
  KEY `topicgid` (`topicgid`),
  CONSTRAINT `tbtopic_ibfk_1` FOREIGN KEY (`topicusrid`) REFERENCES `tbuser` (`userid`),
  CONSTRAINT `tbtopic_ibfk_2` FOREIGN KEY (`topicgid`) REFERENCES `tbgroup` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbtopic` */

insert into `tbtopic` (`topicid`,`topicdesc`,`topicdate`,`topictime`,`topicusrid`,`topicgid`) values (1,'Covid-19','06-04-20','12:50:25 AM','1',3);
insert into `tbtopic` (`topicid`,`topicdesc`,`topicdate`,`topictime`,`topicusrid`,`topicgid`) values (2,'Scarcity','06-04-20','12:58:17 AM','1',3);
insert into `tbtopic` (`topicid`,`topicdesc`,`topicdate`,`topictime`,`topicusrid`,`topicgid`) values (3,'Covid-20','06-04-20','02:54:11 AM','1',5);

/*Table structure for table `tbtopiccomment` */

DROP TABLE IF EXISTS `tbtopiccomment`;

CREATE TABLE `tbtopiccomment` (
  `commentid` int(11) NOT NULL,
  `commentdesc` varchar(50) default NULL,
  `commentdate` varchar(50) default NULL,
  `commenttime` varchar(50) default NULL,
  `commentuserid` varchar(50) default NULL,
  `commenttopicid` int(11) default NULL,
  PRIMARY KEY  (`commentid`),
  KEY `commentuserid` (`commentuserid`),
  KEY `commenttopicid` (`commenttopicid`),
  CONSTRAINT `tbtopiccomment_ibfk_1` FOREIGN KEY (`commentuserid`) REFERENCES `tbuser` (`userid`),
  CONSTRAINT `tbtopiccomment_ibfk_2` FOREIGN KEY (`commenttopicid`) REFERENCES `tbtopic` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbtopiccomment` */

insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (1,'hey','06-04-20','01:05:57 AM','1',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (2,'hey','06-04-20','01:30:13 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (3,'We are meeting 1st time','06-04-20','01:30:26 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (4,'so plz maintain distance','06-04-20','01:30:51 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (5,'We are meeting 1st time','06-04-20','01:30:59 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (6,'hllo','06-04-20','01:31:05 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (7,'can we talk some more time i need to say something','06-04-20','02:26:55 AM','2',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (8,'can we talk some more time i need to say something','06-04-20','02:34:57 AM','1',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (9,'Put you masks on all the time','06-04-20','02:44:49 AM','1',1);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (10,'hello everyone','06-04-20','02:54:52 AM','1',3);
insert into `tbtopiccomment` (`commentid`,`commentdesc`,`commentdate`,`commenttime`,`commentuserid`,`commenttopicid`) values (11,'Hi!!!!','06-04-20','02:55:19 AM','8',3);

/*Table structure for table `tbuser` */

DROP TABLE IF EXISTS `tbuser`;

CREATE TABLE `tbuser` (
  `userid` varchar(50) NOT NULL,
  `usrpwd` varchar(50) default NULL,
  `usrsecques` varchar(50) default NULL,
  `usrsecans` varchar(50) default NULL,
  `usrname` varchar(50) default NULL,
  `usradd` varchar(50) default NULL,
  `usrgen` varchar(50) default NULL,
  `usrmob` varchar(50) default NULL,
  `usrqualification` varchar(50) default NULL,
  `usrinterest` varchar(50) default NULL,
  `usrdob` varchar(50) default NULL,
  `usrimg` varchar(50) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbuser` */

insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('1','aa','What is your pets name?','john','Ritik','Fzr','male','8195897556','Btech','Programming','26-04-2000','images/th.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('2','bb','What is your pets name?','Kyle','Mandeep','Fzr','male','9465558839','BCA','Gaming','26-04-2000','images/mandeep.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('3','cc','What is your pets name?','bonn','Rachit','Plb','male','7732922208','Btech','Math','22-12-2000','images/rachit.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('4','dd','What is your college name?','Thapar','Sourav','Bnl','male','6280035009','Btech','Singing','01-01-2001','images/sourav.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('5','ee','What is your college name?','punjabi uni','Kshitij','Bwr','male','7610906500','Btech','Chess','19-03-2000','images/kshitij.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('6','ff','What is your pets name?','brrad','Mohit','Ngr','male','7410134962','Btech','Reading','02-07-2000','images/mohit.jpeg');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('7','gg','What is your college name?','punjabi uni','Surekha','Fzr','female','9779729394','Btech','Speaking','25-01-2000','images/surekha.PNG');
insert into `tbuser` (`userid`,`usrpwd`,`usrsecques`,`usrsecans`,`usrname`,`usradd`,`usrgen`,`usrmob`,`usrqualification`,`usrinterest`,`usrdob`,`usrimg`) values ('8','hh','What is your college name?','Thapar','Kritika','Fzr','female','6283401499','Btech','Music','19-01-2000','images/kritika.PNG');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

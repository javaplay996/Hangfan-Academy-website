/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm132s8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm132s8` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm132s8`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-05-10 16:43:45',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-05-10 16:43:45',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-05-10 16:43:45',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-05-10 16:43:45',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-05-10 16:43:45',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-05-10 16:43:45',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm132s8/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm132s8/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm132s8/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshizijieshao` */

DROP TABLE IF EXISTS `discussshizijieshao`;

CREATE TABLE `discussshizijieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='师资介绍评论表';

/*Data for the table `discussshizijieshao` */

insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-10 16:43:45',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-10 16:43:45',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-10 16:43:45',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-10 16:43:45',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-10 16:43:45',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshizijieshao`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-10 16:43:45',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussxueyuanxinxi` */

DROP TABLE IF EXISTS `discussxueyuanxinxi`;

CREATE TABLE `discussxueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='学院信息评论表';

/*Data for the table `discussxueyuanxinxi` */

insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-10 16:43:45',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-10 16:43:45',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-10 16:43:45',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-10 16:43:45',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-10 16:43:45',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussxueyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-10 16:43:45',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (21,'2021-05-10 16:43:45','工号1','教师姓名1','男','学院1','职称1','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (22,'2021-05-10 16:43:45','工号2','教师姓名2','男','学院2','职称2','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (23,'2021-05-10 16:43:45','工号3','教师姓名3','男','学院3','职称3','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (24,'2021-05-10 16:43:45','工号4','教师姓名4','男','学院4','职称4','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (25,'2021-05-10 16:43:45','工号5','教师姓名5','男','学院5','职称5','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`xueyuan`,`zhicheng`,`dianhua`) values (26,'2021-05-10 16:43:45','工号6','教师姓名6','男','学院6','职称6','13823888886');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-05-10 16:43:45',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (82,'2021-05-10 16:43:45',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (83,'2021-05-10 16:43:45',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (84,'2021-05-10 16:43:45',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (85,'2021-05-10 16:43:45',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (86,'2021-05-10 16:43:45',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学院新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-05-10 16:43:45','标题1','简介1','http://localhost:8080/ssm132s8/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (72,'2021-05-10 16:43:45','标题2','简介2','http://localhost:8080/ssm132s8/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-05-10 16:43:45','标题3','简介3','http://localhost:8080/ssm132s8/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-05-10 16:43:45','标题4','简介4','http://localhost:8080/ssm132s8/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-05-10 16:43:45','标题5','简介5','http://localhost:8080/ssm132s8/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (76,'2021-05-10 16:43:45','标题6','简介6','http://localhost:8080/ssm132s8/upload/news_picture6.jpg','内容6');

/*Table structure for table `shizijieshao` */

DROP TABLE IF EXISTS `shizijieshao`;

CREATE TABLE `shizijieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `xueyuanjibie` varchar(200) DEFAULT NULL COMMENT '学院级别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoshirenshu` varchar(200) NOT NULL COMMENT '教师人数',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshifengcai` longtext COMMENT '教师风采',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='师资介绍';

/*Data for the table `shizijieshao` */

insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (41,'2021-05-10 16:43:45','学院名称1','学院级别1','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian1.jpg','教师人数1','2021-05-10 16:43:45','教师风采1');
insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (42,'2021-05-10 16:43:45','学院名称2','学院级别2','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian2.jpg','教师人数2','2021-05-10 16:43:45','教师风采2');
insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (43,'2021-05-10 16:43:45','学院名称3','学院级别3','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian3.jpg','教师人数3','2021-05-10 16:43:45','教师风采3');
insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (44,'2021-05-10 16:43:45','学院名称4','学院级别4','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian4.jpg','教师人数4','2021-05-10 16:43:45','教师风采4');
insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (45,'2021-05-10 16:43:45','学院名称5','学院级别5','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian5.jpg','教师人数5','2021-05-10 16:43:45','教师风采5');
insert  into `shizijieshao`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanjibie`,`tupian`,`jiaoshirenshu`,`fabushijian`,`jiaoshifengcai`) values (46,'2021-05-10 16:43:45','学院名称6','学院级别6','http://localhost:8080/ssm132s8/upload/shizijieshao_tupian6.jpg','教师人数6','2021-05-10 16:43:45','教师风采6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-10 16:43:45');

/*Table structure for table `xueyuanxinxi` */

DROP TABLE IF EXISTS `xueyuanxinxi`;

CREATE TABLE `xueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanmingcheng` varchar(200) NOT NULL COMMENT '学院名称',
  `xueyuanleixing` varchar(200) NOT NULL COMMENT '学院类型',
  `suoshudiqu` varchar(200) DEFAULT NULL COMMENT '所属地区',
  `xueyuanjibie` varchar(200) DEFAULT NULL COMMENT '学院级别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xueyuandizhi` varchar(200) DEFAULT NULL COMMENT '学院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xiaoyuanfengcai` longtext COMMENT '校园风采',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学院信息';

/*Data for the table `xueyuanxinxi` */

insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (31,'2021-05-10 16:43:45','学院名称1','学院类型1','所属地区1','学院级别1','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian1.jpg','学院地址1','020-89819991','773890001@qq.com','校园风采1');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (32,'2021-05-10 16:43:45','学院名称2','学院类型2','所属地区2','学院级别2','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian2.jpg','学院地址2','020-89819992','773890002@qq.com','校园风采2');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (33,'2021-05-10 16:43:45','学院名称3','学院类型3','所属地区3','学院级别3','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian3.jpg','学院地址3','020-89819993','773890003@qq.com','校园风采3');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (34,'2021-05-10 16:43:45','学院名称4','学院类型4','所属地区4','学院级别4','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian4.jpg','学院地址4','020-89819994','773890004@qq.com','校园风采4');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (35,'2021-05-10 16:43:45','学院名称5','学院类型5','所属地区5','学院级别5','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian5.jpg','学院地址5','020-89819995','773890005@qq.com','校园风采5');
insert  into `xueyuanxinxi`(`id`,`addtime`,`xueyuanmingcheng`,`xueyuanleixing`,`suoshudiqu`,`xueyuanjibie`,`tupian`,`xueyuandizhi`,`lianxidianhua`,`youxiang`,`xiaoyuanfengcai`) values (36,'2021-05-10 16:43:45','学院名称6','学院类型6','所属地区6','学院级别6','http://localhost:8080/ssm132s8/upload/xueyuanxinxi_tupian6.jpg','学院地址6','020-89819996','773890006@qq.com','校园风采6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-05-10 16:43:45','用户1','123456','姓名1','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (12,'2021-05-10 16:43:45','用户2','123456','姓名2','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (13,'2021-05-10 16:43:45','用户3','123456','姓名3','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (14,'2021-05-10 16:43:45','用户4','123456','姓名4','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (15,'2021-05-10 16:43:45','用户5','123456','姓名5','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (16,'2021-05-10 16:43:45','用户6','123456','姓名6','男','http://localhost:8080/ssm132s8/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

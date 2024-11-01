/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoshikeyan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoshikeyan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoshikeyan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '轮播图名称',
  `idcard_photo` varchar(100) DEFAULT NULL COMMENT '轮播图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='轮播图';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`idcard_photo`) values (2,'picture5','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983449666.jpg'),(3,'picture4','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983443546.jpg'),(4,'picture3','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983436395.jpg'),(5,'picture2','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983430795.jpg'),(6,'picture1','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983427138.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-15 11:41:54'),(2,'sex_types','性别',2,'女',NULL,'2021-03-15 11:41:54');

/*Table structure for table `keyan` */

DROP TABLE IF EXISTS `keyan`;

CREATE TABLE `keyan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fjh_types` int(11) DEFAULT NULL COMMENT '研发老师 Search',
  `name` varchar(200) DEFAULT NULL COMMENT '成果名称 Search',
  `keyan_time` timestamp NULL DEFAULT NULL COMMENT '研发时间',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '展示图片',
  `chengguo_content` varchar(200) DEFAULT NULL COMMENT '成果描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='科研项目';

/*Data for the table `keyan` */

insert  into `keyan`(`id`,`fjh_types`,`name`,`keyan_time`,`img_photo`,`chengguo_content`) values (1,2,'成果1','2021-03-18 10:44:23','http://localhost:8080/jiaoshikeyan/file/download?fileName=1616035461658.jpg','成果描述1\r\n'),(2,1,'成果2','2021-03-17 20:16:26','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615983378122.jpg','成果描述2\r\n'),(3,3,'成果名称3','2021-03-18 10:44:16','http://localhost:8080/jiaoshikeyan/file/download?fileName=1616035452050.jpg','成果描述3\r\n');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系方式',
  `xy_types` tinyint(255) DEFAULT NULL COMMENT '院系',
  `yx_types` tinyint(4) DEFAULT NULL COMMENT '院系',
  `area` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '地区',
  `lw_file` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '论文',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`name`,`sex_types`,`phone`,`xy_types`,`yx_types`,`area`,`lw_file`,`img_photo`) values (1,'老师2',1,'17796312333',2,2,'地区2','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982864468.doc','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982871539.jpg'),(2,'老师1',2,'12312312333',1,1,'地区1','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615981453316.doc','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615981460319.jpg'),(3,'老师3',2,'123123123123123',4,4,'地区3','http://localhost:8080/jiaoshikeyan/file/download?fileName=1616035397353.doc','http://localhost:8080/jiaoshikeyan/file/download?fileName=1616035402598.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `img_photo` varchar(200) NOT NULL COMMENT '图片',
  `notice_content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`img_photo`,`notice_content`) values (2,'2021-03-17 11:11:11','标题4','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982473549.jpg','内容4\r\n'),(3,'2021-03-17 11:11:11','标题3','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982460024.jpg','内容3\r\n'),(4,'2021-03-17 11:11:11','标题1','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982421642.jpg','内容2\r\n'),(5,'2021-03-17 11:11:11','标题1','http://localhost:8080/jiaoshikeyan/file/download?fileName=1615982381002.jpg','内容1\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (8,1,'admin','users','管理员','fq2l9ashhqd526t1p7cbcp3cskrsq104','2021-03-10 19:37:34','2021-03-18 11:42:09'),(9,1,'房东1','users','房东','phudmc8gsr1mvn63bpe6rawb6ut94f12','2021-03-10 20:17:36','2021-03-10 21:17:37'),(10,2,'房东2','users','房东','myqql8ikuvw5af6baa7hfksy4ddx3oda','2021-03-10 20:19:14','2021-03-10 21:19:15'),(11,1,'小札','users','用户','p7b7fpqkahbgsm0rkylbodyewvco9h42','2021-03-10 20:20:33','2021-03-10 21:21:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '学院名称 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学院';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`name`) values (1,'学院1'),(2,'学院2'),(3,'学院3'),(4,'学院4');

/*Table structure for table `yuanxi` */

DROP TABLE IF EXISTS `yuanxi`;

CREATE TABLE `yuanxi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '院系名称 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='院系';

/*Data for the table `yuanxi` */

insert  into `yuanxi`(`id`,`name`) values (1,'院系1'),(2,'院系2'),(3,'院系3'),(4,'院系4');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot70p75
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot70p75`
--

/*!40000 DROP DATABASE IF EXISTS `springboot70p75`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot70p75` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot70p75`;

--
-- Table structure for table `baomingxinxi`
--

DROP TABLE IF EXISTS `baomingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingsaibianhao` varchar(200) DEFAULT NULL COMMENT '竞赛编号',
  `jingsaibiaoti` varchar(200) NOT NULL COMMENT '竞赛标题',
  `jingsaifenlei` varchar(200) NOT NULL COMMENT '竞赛分类',
  `jiezhishijian` varchar(200) NOT NULL COMMENT '截至时间',
  `jingsaididian` varchar(200) NOT NULL COMMENT '竞赛地点',
  `jingsaifengmian` varchar(200) NOT NULL COMMENT '竞赛封面',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='报名信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingxinxi`
--

LOCK TABLES `baomingxinxi` WRITE;
/*!40000 ALTER TABLE `baomingxinxi` DISABLE KEYS */;
INSERT INTO `baomingxinxi` VALUES (61,'2022-04-16 06:42:54','竞赛编号1','竞赛标题1','竞赛分类1','截至时间1','竞赛地点1','upload/baomingxinxi_jingsaifengmian1.jpg','名称1','负责人1','用户账号1','用户姓名1','2022-04-16 14:42:54',1,1,'是',''),(62,'2022-04-16 06:42:54','竞赛编号2','竞赛标题2','竞赛分类2','截至时间2','竞赛地点2','upload/baomingxinxi_jingsaifengmian2.jpg','名称2','负责人2','用户账号2','用户姓名2','2022-04-16 14:42:54',2,2,'是',''),(63,'2022-04-16 06:42:54','竞赛编号3','竞赛标题3','竞赛分类3','截至时间3','竞赛地点3','upload/baomingxinxi_jingsaifengmian3.jpg','名称3','负责人3','用户账号3','用户姓名3','2022-04-16 14:42:54',3,3,'是',''),(64,'2022-04-16 06:42:54','竞赛编号4','竞赛标题4','竞赛分类4','截至时间4','竞赛地点4','upload/baomingxinxi_jingsaifengmian4.jpg','名称4','负责人4','用户账号4','用户姓名4','2022-04-16 14:42:54',4,4,'是',''),(65,'2022-04-16 06:42:54','竞赛编号5','竞赛标题5','竞赛分类5','截至时间5','竞赛地点5','upload/baomingxinxi_jingsaifengmian5.jpg','名称5','负责人5','用户账号5','用户姓名5','2022-04-16 14:42:54',5,5,'是',''),(66,'2022-04-16 06:42:54','竞赛编号6','竞赛标题6','竞赛分类6','截至时间6','竞赛地点6','upload/baomingxinxi_jingsaifengmian6.jpg','名称6','负责人6','用户账号6','用户姓名6','2022-04-16 14:42:54',6,6,'是','');
/*!40000 ALTER TABLE `baomingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgonggaolan`
--

DROP TABLE IF EXISTS `discussgonggaolan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告栏评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgonggaolan`
--

LOCK TABLES `discussgonggaolan` WRITE;
/*!40000 ALTER TABLE `discussgonggaolan` DISABLE KEYS */;
INSERT INTO `discussgonggaolan` VALUES (91,'2022-04-16 06:42:54',1,1,'用户名1','评论内容1','回复内容1'),(92,'2022-04-16 06:42:54',2,2,'用户名2','评论内容2','回复内容2'),(93,'2022-04-16 06:42:54',3,3,'用户名3','评论内容3','回复内容3'),(94,'2022-04-16 06:42:54',4,4,'用户名4','评论内容4','回复内容4'),(95,'2022-04-16 06:42:54',5,5,'用户名5','评论内容5','回复内容5'),(96,'2022-04-16 06:42:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgonggaolan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingsaichengji`
--

DROP TABLE IF EXISTS `discussjingsaichengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingsaichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='竞赛成绩评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingsaichengji`
--

LOCK TABLES `discussjingsaichengji` WRITE;
/*!40000 ALTER TABLE `discussjingsaichengji` DISABLE KEYS */;
INSERT INTO `discussjingsaichengji` VALUES (111,'2022-04-16 06:42:54',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-04-16 06:42:54',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-04-16 06:42:54',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-04-16 06:42:54',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-04-16 06:42:54',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-04-16 06:42:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjingsaichengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingsaixinxi`
--

DROP TABLE IF EXISTS `discussjingsaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingsaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='竞赛信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingsaixinxi`
--

LOCK TABLES `discussjingsaixinxi` WRITE;
/*!40000 ALTER TABLE `discussjingsaixinxi` DISABLE KEYS */;
INSERT INTO `discussjingsaixinxi` VALUES (101,'2022-04-16 06:42:54',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-16 06:42:54',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-16 06:42:54',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-16 06:42:54',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-16 06:42:54',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-16 06:42:54',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjingsaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaolan`
--

DROP TABLE IF EXISTS `gonggaolan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告栏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaolan`
--

LOCK TABLES `gonggaolan` WRITE;
/*!40000 ALTER TABLE `gonggaolan` DISABLE KEYS */;
INSERT INTO `gonggaolan` VALUES (31,'2022-04-16 06:42:54','标题1','upload/gonggaolan_fengmian1.jpg','2022-04-16','内容1'),(32,'2022-04-16 06:42:54','标题2','upload/gonggaolan_fengmian2.jpg','2022-04-16','内容2'),(33,'2022-04-16 06:42:54','标题3','upload/gonggaolan_fengmian3.jpg','2022-04-16','内容3'),(34,'2022-04-16 06:42:54','标题4','upload/gonggaolan_fengmian4.jpg','2022-04-16','内容4'),(35,'2022-04-16 06:42:54','标题5','upload/gonggaolan_fengmian5.jpg','2022-04-16','内容5'),(36,'2022-04-16 06:42:54','标题6','upload/gonggaolan_fengmian6.jpg','2022-04-16','内容6');
/*!40000 ALTER TABLE `gonggaolan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingsaichengji`
--

DROP TABLE IF EXISTS `jingsaichengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingsaichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingsaibianhao` varchar(200) DEFAULT NULL COMMENT '竞赛编号',
  `jingsaibiaoti` varchar(200) NOT NULL COMMENT '竞赛标题',
  `jingsaifenlei` varchar(200) NOT NULL COMMENT '竞赛分类',
  `jingsaididian` varchar(200) NOT NULL COMMENT '竞赛地点',
  `jingsaifengmian` varchar(200) NOT NULL COMMENT '竞赛封面',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `jingsaichengji` longtext NOT NULL COMMENT '竞赛成绩',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='竞赛成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingsaichengji`
--

LOCK TABLES `jingsaichengji` WRITE;
/*!40000 ALTER TABLE `jingsaichengji` DISABLE KEYS */;
INSERT INTO `jingsaichengji` VALUES (71,'2022-04-16 06:42:54','竞赛编号1','竞赛标题1','竞赛分类1','竞赛地点1','upload/jingsaichengji_jingsaifengmian1.jpg','名称1','负责人1','竞赛成绩1','2022-04-16 14:42:54',1,1,'是',''),(72,'2022-04-16 06:42:54','竞赛编号2','竞赛标题2','竞赛分类2','竞赛地点2','upload/jingsaichengji_jingsaifengmian2.jpg','名称2','负责人2','竞赛成绩2','2022-04-16 14:42:54',2,2,'是',''),(73,'2022-04-16 06:42:54','竞赛编号3','竞赛标题3','竞赛分类3','竞赛地点3','upload/jingsaichengji_jingsaifengmian3.jpg','名称3','负责人3','竞赛成绩3','2022-04-16 14:42:54',3,3,'是',''),(74,'2022-04-16 06:42:54','竞赛编号4','竞赛标题4','竞赛分类4','竞赛地点4','upload/jingsaichengji_jingsaifengmian4.jpg','名称4','负责人4','竞赛成绩4','2022-04-16 14:42:54',4,4,'是',''),(75,'2022-04-16 06:42:54','竞赛编号5','竞赛标题5','竞赛分类5','竞赛地点5','upload/jingsaichengji_jingsaifengmian5.jpg','名称5','负责人5','竞赛成绩5','2022-04-16 14:42:54',5,5,'是',''),(76,'2022-04-16 06:42:54','竞赛编号6','竞赛标题6','竞赛分类6','竞赛地点6','upload/jingsaichengji_jingsaifengmian6.jpg','名称6','负责人6','竞赛成绩6','2022-04-16 14:42:54',6,6,'是','');
/*!40000 ALTER TABLE `jingsaichengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingsaifenlei`
--

DROP TABLE IF EXISTS `jingsaifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingsaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingsaifenlei` varchar(200) DEFAULT NULL COMMENT '竞赛分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='竞赛分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingsaifenlei`
--

LOCK TABLES `jingsaifenlei` WRITE;
/*!40000 ALTER TABLE `jingsaifenlei` DISABLE KEYS */;
INSERT INTO `jingsaifenlei` VALUES (41,'2022-04-16 06:42:54','竞赛分类1'),(42,'2022-04-16 06:42:54','竞赛分类2'),(43,'2022-04-16 06:42:54','竞赛分类3'),(44,'2022-04-16 06:42:54','竞赛分类4'),(45,'2022-04-16 06:42:54','竞赛分类5'),(46,'2022-04-16 06:42:54','竞赛分类6');
/*!40000 ALTER TABLE `jingsaifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingsaixinxi`
--

DROP TABLE IF EXISTS `jingsaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingsaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingsaibianhao` varchar(200) DEFAULT NULL COMMENT '竞赛编号',
  `jingsaibiaoti` varchar(200) NOT NULL COMMENT '竞赛标题',
  `jingsaifenlei` varchar(200) NOT NULL COMMENT '竞赛分类',
  `jiezhishijian` date NOT NULL COMMENT '截至时间',
  `jingsaididian` varchar(200) NOT NULL COMMENT '竞赛地点',
  `jingsaineirong` longtext NOT NULL COMMENT '竞赛内容',
  `jingsaifengmian` varchar(200) NOT NULL COMMENT '竞赛封面',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingsaibianhao` (`jingsaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='竞赛信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingsaixinxi`
--

LOCK TABLES `jingsaixinxi` WRITE;
/*!40000 ALTER TABLE `jingsaixinxi` DISABLE KEYS */;
INSERT INTO `jingsaixinxi` VALUES (51,'2022-04-16 06:42:54','1111111111','竞赛标题1','竞赛分类1','2022-04-16','竞赛地点1','竞赛内容1','upload/jingsaixinxi_jingsaifengmian1.jpg','名称1','负责人1','是','','2022-04-16 14:42:54',1),(52,'2022-04-16 06:42:54','2222222222','竞赛标题2','竞赛分类2','2022-04-16','竞赛地点2','竞赛内容2','upload/jingsaixinxi_jingsaifengmian2.jpg','名称2','负责人2','是','','2022-04-16 14:42:54',2),(53,'2022-04-16 06:42:54','3333333333','竞赛标题3','竞赛分类3','2022-04-16','竞赛地点3','竞赛内容3','upload/jingsaixinxi_jingsaifengmian3.jpg','名称3','负责人3','是','','2022-04-16 14:42:54',3),(54,'2022-04-16 06:42:54','4444444444','竞赛标题4','竞赛分类4','2022-04-16','竞赛地点4','竞赛内容4','upload/jingsaixinxi_jingsaifengmian4.jpg','名称4','负责人4','是','','2022-04-16 14:42:54',4),(55,'2022-04-16 06:42:54','5555555555','竞赛标题5','竞赛分类5','2022-04-16','竞赛地点5','竞赛内容5','upload/jingsaixinxi_jingsaifengmian5.jpg','名称5','负责人5','是','','2022-04-16 14:42:54',5),(56,'2022-04-16 06:42:54','6666666666','竞赛标题6','竞赛分类6','2022-04-16','竞赛地点6','竞赛内容6','upload/jingsaixinxi_jingsaifengmian6.jpg','名称6','负责人6','是','','2022-04-16 14:42:54',6);
/*!40000 ALTER TABLE `jingsaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','em5posog7ep29b3oxeg7rx9nkfylkhm0','2022-04-16 06:45:19','2022-04-16 07:45:19');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-16 06:42:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-16 06:42:54','用户账号1','用户姓名1','123456','13823888881','邮箱1','男','upload/yonghu_touxiang1.jpg'),(12,'2022-04-16 06:42:54','用户账号2','用户姓名2','123456','13823888882','邮箱2','男','upload/yonghu_touxiang2.jpg'),(13,'2022-04-16 06:42:54','用户账号3','用户姓名3','123456','13823888883','邮箱3','男','upload/yonghu_touxiang3.jpg'),(14,'2022-04-16 06:42:54','用户账号4','用户姓名4','123456','13823888884','邮箱4','男','upload/yonghu_touxiang4.jpg'),(15,'2022-04-16 06:42:54','用户账号5','用户姓名5','123456','13823888885','邮箱5','男','upload/yonghu_touxiang5.jpg'),(16,'2022-04-16 06:42:54','用户账号6','用户姓名6','123456','13823888886','邮箱6','男','upload/yonghu_touxiang6.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhubanfang`
--

DROP TABLE IF EXISTS `zhubanfang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhubanfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `fuzeren` varchar(200) NOT NULL COMMENT '负责人',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='主办方';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhubanfang`
--

LOCK TABLES `zhubanfang` WRITE;
/*!40000 ALTER TABLE `zhubanfang` DISABLE KEYS */;
INSERT INTO `zhubanfang` VALUES (21,'2022-04-16 06:42:54','名称1','负责人1','123456','13823888881','男','773890001@qq.com','是',''),(22,'2022-04-16 06:42:54','名称2','负责人2','123456','13823888882','男','773890002@qq.com','是',''),(23,'2022-04-16 06:42:54','名称3','负责人3','123456','13823888883','男','773890003@qq.com','是',''),(24,'2022-04-16 06:42:54','名称4','负责人4','123456','13823888884','男','773890004@qq.com','是',''),(25,'2022-04-16 06:42:54','名称5','负责人5','123456','13823888885','男','773890005@qq.com','是',''),(26,'2022-04-16 06:42:54','名称6','负责人6','123456','13823888886','男','773890006@qq.com','是','');
/*!40000 ALTER TABLE `zhubanfang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 16:02:31

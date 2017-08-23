-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: storedb
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_5fb9c42244a082ec_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_5fb9c42244a082ec_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_1e5ae41b3d7f35c5_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_450aef6fe050c1b9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户',6,'add_user'),(17,'Can change 用户',6,'change_user'),(18,'Can delete 用户',6,'delete_user'),(19,'Can add 广告',7,'add_ad'),(20,'Can change 广告',7,'change_ad'),(21,'Can delete 广告',7,'delete_ad'),(22,'Can add 分类',8,'add_category'),(23,'Can change 分类',8,'change_category'),(24,'Can delete 分类',8,'delete_category'),(25,'Can add 品牌',9,'add_brand'),(26,'Can change 品牌',9,'change_brand'),(27,'Can delete 品牌',9,'delete_brand'),(28,'Can add 尺寸',10,'add_size'),(29,'Can change 尺寸',10,'change_size'),(30,'Can delete 尺寸',10,'delete_size'),(31,'Can add 标签',11,'add_tag'),(32,'Can change 标签',11,'change_tag'),(33,'Can delete 标签',11,'delete_tag'),(34,'Can add 商品',12,'add_clothing'),(35,'Can change 商品',12,'change_clothing'),(36,'Can delete 商品',12,'delete_clothing'),(37,'Can add 购物车条目',13,'add_caritem'),(38,'Can change 购物车条目',13,'change_caritem'),(39,'Can delete 购物车条目',13,'delete_caritem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_5ed19139229e069d_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_baa4fc74394e4e1_fk_store_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_5ed19139229e069d_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_baa4fc74394e4e1_fk_store_user_id` FOREIGN KEY (`user_id`) REFERENCES `store_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-08-23 08:04:20.447936','1','服装---女',1,'',8,1),(2,'2017-08-23 08:04:35.096343','1','韩都衣舍',1,'',9,1),(3,'2017-08-23 08:04:49.681983','1','S',1,'',10,1),(4,'2017-08-23 08:04:54.791749','1','M',2,'已修改 name 。',10,1),(5,'2017-08-23 08:05:01.612564','1','M',2,'没有字段被修改。',10,1),(6,'2017-08-23 08:05:07.152985','2','S',1,'',10,1),(7,'2017-08-23 08:05:12.465113','3','L',1,'',10,1),(8,'2017-08-23 08:05:21.667132','4','XL',1,'',10,1),(9,'2017-08-23 08:07:16.916192','1','1',1,'',7,1),(10,'2017-08-23 08:07:36.670747','2','2',1,'',7,1),(11,'2017-08-23 08:08:28.714045','3','3',1,'',7,1),(12,'2017-08-23 08:08:40.049765','4','4',1,'',7,1),(13,'2017-08-23 08:09:40.268252','3','3',2,'已修改 image_url 。',7,1),(14,'2017-08-23 08:14:03.322351','1','白色',1,'',11,1),(15,'2017-08-23 08:14:11.068668','2','灰色',1,'',11,1),(16,'2017-08-23 08:14:22.444295','3','粉色',1,'',11,1),(17,'2017-08-23 08:14:29.205081','4','黑色',1,'',11,1),(18,'2017-08-23 08:14:42.578021','5','红色',1,'',11,1),(19,'2017-08-23 08:15:35.128745','1','韩都衣舍---服装',1,'',12,1),(20,'2017-08-23 08:16:29.403871','2','韩都衣舍---服装',1,'',12,1),(21,'2017-08-23 08:19:28.676694','3','韩都衣舍---服装',1,'',12,1),(22,'2017-08-23 08:20:30.081317','6','蓝色',1,'',11,1),(23,'2017-08-23 08:20:46.353357','7','蓝色',1,'',11,1),(24,'2017-08-23 08:21:27.961260','4','韩都衣舍---服装',1,'',12,1),(25,'2017-08-23 08:22:41.850908','5','韩都衣舍---服装',1,'',12,1),(26,'2017-08-23 08:24:08.067791','6','韩都衣舍---服装',1,'',12,1),(27,'2017-08-23 08:25:40.037287','7','韩都衣舍---服装',1,'',12,1),(28,'2017-08-23 08:26:39.442280','8','韩都衣舍---服装',1,'',12,1),(29,'2017-08-23 08:27:40.603569','9','韩都衣舍---服装',1,'',12,1),(30,'2017-08-23 08:29:08.343152','10','韩都衣舍---服装',1,'',12,1),(31,'2017-08-23 08:30:02.372033','11','韩都衣舍---服装',1,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_ea6b51d2ec37489_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'store','ad'),(9,'store','brand'),(13,'store','caritem'),(8,'store','category'),(12,'store','clothing'),(10,'store','size'),(11,'store','tag'),(6,'store','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-08-23 07:59:21.130905'),(2,'contenttypes','0002_remove_content_type_name','2017-08-23 07:59:22.381568'),(3,'auth','0001_initial','2017-08-23 07:59:25.708173'),(4,'auth','0002_alter_permission_name_max_length','2017-08-23 07:59:26.446597'),(5,'auth','0003_alter_user_email_max_length','2017-08-23 07:59:26.483007'),(6,'auth','0004_alter_user_username_opts','2017-08-23 07:59:26.543467'),(7,'auth','0005_alter_user_last_login_null','2017-08-23 07:59:26.581923'),(8,'auth','0006_require_contenttypes_0002','2017-08-23 07:59:26.611173'),(9,'store','0001_initial','2017-08-23 07:59:37.524120'),(10,'admin','0001_initial','2017-08-23 07:59:39.212493'),(11,'sessions','0001_initial','2017-08-23 07:59:39.839746'),(12,'store','0002_auto_20151111_1651','2017-08-23 07:59:41.980623'),(13,'store','0003_auto_20151111_2216','2017-08-23 07:59:42.090435'),(14,'store','0004_caritem_sum_price','2017-08-23 07:59:42.860463'),(15,'store','0005_auto_20170823_0229','2017-08-23 07:59:48.929162'),(16,'store','0006_auto_20170823_1513','2017-08-23 07:59:55.216706');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('wsfbko1de567ejbrwyhmvv9eync3ifc7','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','2017-09-06 08:30:10.771680');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_ad`
--

DROP TABLE IF EXISTS `store_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `date_publish` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_ad`
--

LOCK TABLES `store_ad` WRITE;
/*!40000 ALTER TABLE `store_ad` DISABLE KEYS */;
INSERT INTO `store_ad` VALUES (1,'1','ad/2017/08/1_MIVibLU.jpg','2017-08-23 08:07:16.914714',1),(2,'2','ad/2017/08/2_HwRNiSa.jpg','2017-08-23 08:07:36.654563',1),(3,'3','ad/2017/08/599cf1d5Nfd8d4ce0.jpgq95_c22Uma3.webp','2017-08-23 08:08:28.713305',1),(4,'4','ad/2017/08/599641fcNef9de9cb.jpgq95_lScjYWs.webp','2017-08-23 08:08:40.048386',1);
/*!40000 ALTER TABLE `store_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_brand`
--

DROP TABLE IF EXISTS `store_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_brand`
--

LOCK TABLES `store_brand` WRITE;
/*!40000 ALTER TABLE `store_brand` DISABLE KEYS */;
INSERT INTO `store_brand` VALUES (1,'韩都衣舍',1);
/*!40000 ALTER TABLE `store_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_caritem`
--

DROP TABLE IF EXISTS `store_caritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_caritem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `clothing_id` int(11) NOT NULL,
  `sum_price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_caritem_95a42b97` (`clothing_id`),
  CONSTRAINT `store_caritem_clothing_id_2a81be54e70f3dce_fk_store_clothing_id` FOREIGN KEY (`clothing_id`) REFERENCES `store_clothing` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_caritem`
--

LOCK TABLES `store_caritem` WRITE;
/*!40000 ALTER TABLE `store_caritem` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_caritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typ` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'女装','服装',1,1);
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_clothing`
--

DROP TABLE IF EXISTS `store_clothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_clothing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `old_price` double NOT NULL,
  `new_price` double NOT NULL,
  `discount` double NOT NULL,
  `desc` varchar(100) NOT NULL,
  `sales` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `image_url_i` varchar(100) NOT NULL,
  `image_url_l` varchar(100) NOT NULL,
  `image_url_m` varchar(100) NOT NULL,
  `image_url_r` varchar(100) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url_c` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_clothing_brand_id_30359697114e5008_fk_store_brand_id` (`brand_id`),
  KEY `store_clothing_category_id_549d57d5b8845a7c_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_clothing_brand_id_30359697114e5008_fk_store_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `store_brand` (`id`),
  CONSTRAINT `store_clothing_category_id_549d57d5b8845a7c_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_clothing`
--

LOCK TABLES `store_clothing` WRITE;
/*!40000 ALTER TABLE `store_clothing` DISABLE KEYS */;
INSERT INTO `store_clothing` VALUES (1,'1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7',199,189,1,'1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆 白色 S',546,652,'clothing/2017/08/1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆_白色_S_bCUeedi.jpg','clothing/2017/08/1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆_白色_S_p9GMpyS.jpg','clothing/2017/08/1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆_白色_S_qXDOn9n.jpg','clothing/2017/08/1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆_白色_S_IiO9FUa.jpg',1,1,'clothing/2017/08/1韩都衣舍2017夏新款韩版女圆领打底宽松套头蕾丝T恤TK7218肆_白色_S_gFGR6FM.jpg'),(2,'1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR',126,115,1,'1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆 黑色 L',564,899,'clothing/2017/08/1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆_黑色_L.jpg','clothing/2017/08/1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆_黑色_L_ijEIyQj.jpg','clothing/2017/08/1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆_黑色_L_3Rr6Pjj.jpg','clothing/2017/08/1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆_黑色_L_S1rsbW1.jpg',1,1,'clothing/2017/08/1韩都衣舍2017夏装新款韩版女装短袖拼接腰带针织连衣裙MR7577陆_黑色_L_etSWA45.jpg'),(3,'1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR',116,111,1,'1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆 红色 S',564,485,'clothing/2017/08/1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆_红色_S_2v3aiXY.jpg','clothing/2017/08/1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆_红色_S_7srrRSs.jpg','clothing/2017/08/1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆_红色_S_mY2cANo.jpg','clothing/2017/08/1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆_红色_S_lI9phMU.jpg',1,1,'clothing/2017/08/1韩都衣舍17夏装新款韩版女装镂空露背装荷叶边雪纺连衣裙MR6651肆_红色_S_x34aJMI.jpg'),(4,'1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6',120,115,1,'1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥ 蓝色 S',655,895,'clothing/2017/08/1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥_蓝色_S.jpg','clothing/2017/08/1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥_蓝色_S_ohJj5oG.jpg','clothing/2017/08/1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥_蓝色_S_HgzFRCN.jpg','clothing/2017/08/1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥_蓝色_S_DesTRSQ.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女秋装新款宽松显瘦纯色中裙连衣裙RW6413⑥_蓝色_S_zWxbfOD.jpg'),(5,'1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ66',188,180,1,'1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆 白色 M',564,565,'clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆_白色_L.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆_白色_L_eEXBPfj.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆_白色_L_ad222JM.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆_白色_L_PmOOZ6j.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆_白色_L_6BSHcsr.jpg'),(6,'1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙G',169,160,1,'1韩都衣舍2017韩版女夏新款纯色蕾丝拼接不规则下摆连衣裙GJ6713肆 白色 L',564,854,'clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆_白色_M.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆_白色_M_ZCKnkds.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆_白色_M_sEpvpGB.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆_白色_M_PwD6HKX.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女夏新款纯色蕾丝吊带拼接连衣裙GJ6636肆_白色_M_01RSY8q.jpg'),(7,'1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU',136,125,1,'1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆 红色 M',654,895,'clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆_红色_M_R4NkfBy.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆_红色_M_NYgd59L.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆_红色_M_QdVn7lP.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆_红色_M_3pY4swX.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松无袖系带条纹连衣裙LU6250肆_红色_M_aFKftJZ.jpg'),(8,'1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7',158,145,1,'1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆 酒红色 S',126,112,'clothing/2017/08/1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆_酒红色_S.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆_酒红色_S_NMDO5Im.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆_酒红色_S_oqefVMJ.jpg','clothing/2017/08/1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆_酒红色_S_5iyyuKy.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女夏装新款字母印花腰部镂空连衣裙YQ7038肆_酒红色_S_WP401Pt.jpg'),(9,'1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤E',132,120,1,'1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒 白色 M',232,456,'clothing/2017/08/1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒_白色_M_9hVMXu8.jpg','clothing/2017/08/1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒_白色_M_ToqCAlK.jpg','clothing/2017/08/1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒_白色_M_MEScylp.jpg','clothing/2017/08/1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒_白色_M_21Ddwbk.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女装秋装新款宽松显瘦纯色圆领长袖T恤EJ6195柒_白色_M_XbCkPLQ.jpg'),(10,'1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7',99,88,1,'1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹 粉色 S',256,621,'clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹_粉色_S_90KFCWe.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹_粉色_S_jBwW7GW.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹_粉色_S_fAKINQA.jpg','clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹_粉色_S_BDA4lhJ.jpg',1,1,'clothing/2017/08/1韩都衣舍2017韩版女装夏装新款宽松印花显瘦圆领T恤NW7532壹_粉色_S_sMs75y6.jpg'),(11,'1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OO',140,132,1,'1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆 蓝色 L',456,452,'clothing/2017/08/1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆_蓝色_L_ZIUXPah.jpg','clothing/2017/08/1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆_蓝色_L_RxZmRej.jpg','clothing/2017/08/1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆_蓝色_L_XlanPEh.jpg','clothing/2017/08/1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆_蓝色_L_w88FPtl.jpg',1,1,'clothing/2017/08/1韩都衣舍2017秋装新款韩版女装条纹系带收腰中腰连衣裙OOR7290陆_蓝色_L_xFvcFsE.jpg');
/*!40000 ALTER TABLE `store_clothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_clothing_size`
--

DROP TABLE IF EXISTS `store_clothing_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_clothing_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clothing_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clothing_id` (`clothing_id`,`size_id`),
  KEY `store_clothing_size_size_id_34a86460ed61a5b5_fk_store_size_id` (`size_id`),
  CONSTRAINT `store_clothing_clothing_id_615788b7f2945037_fk_store_clothing_id` FOREIGN KEY (`clothing_id`) REFERENCES `store_clothing` (`id`),
  CONSTRAINT `store_clothing_size_size_id_34a86460ed61a5b5_fk_store_size_id` FOREIGN KEY (`size_id`) REFERENCES `store_size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_clothing_size`
--

LOCK TABLES `store_clothing_size` WRITE;
/*!40000 ALTER TABLE `store_clothing_size` DISABLE KEYS */;
INSERT INTO `store_clothing_size` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3),(13,5,1),(14,5,2),(15,5,3),(16,6,1),(17,6,2),(18,6,3),(19,7,1),(20,7,2),(21,7,3),(22,8,1),(23,8,2),(24,8,3),(25,9,1),(26,9,2),(27,9,3),(28,10,1),(29,10,2),(30,10,3),(31,11,1),(32,11,2),(33,11,3);
/*!40000 ALTER TABLE `store_clothing_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_clothing_tag`
--

DROP TABLE IF EXISTS `store_clothing_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_clothing_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clothing_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clothing_id` (`clothing_id`,`tag_id`),
  KEY `store_clothing_tag_tag_id_323dcdde3afc4851_fk_store_tag_id` (`tag_id`),
  CONSTRAINT `store_clothing_clothing_id_67d63215dff5e346_fk_store_clothing_id` FOREIGN KEY (`clothing_id`) REFERENCES `store_clothing` (`id`),
  CONSTRAINT `store_clothing_tag_tag_id_323dcdde3afc4851_fk_store_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `store_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_clothing_tag`
--

LOCK TABLES `store_clothing_tag` WRITE;
/*!40000 ALTER TABLE `store_clothing_tag` DISABLE KEYS */;
INSERT INTO `store_clothing_tag` VALUES (1,1,1),(2,2,4),(3,3,5),(4,4,1),(5,5,1),(6,6,1),(7,7,5),(8,8,5),(9,9,1),(10,10,3),(11,11,6);
/*!40000 ALTER TABLE `store_clothing_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_size`
--

DROP TABLE IF EXISTS `store_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_size`
--

LOCK TABLES `store_size` WRITE;
/*!40000 ALTER TABLE `store_size` DISABLE KEYS */;
INSERT INTO `store_size` VALUES (1,'M',1),(2,'S',1),(3,'L',1),(4,'XL',1);
/*!40000 ALTER TABLE `store_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_tag`
--

DROP TABLE IF EXISTS `store_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_tag`
--

LOCK TABLES `store_tag` WRITE;
/*!40000 ALTER TABLE `store_tag` DISABLE KEYS */;
INSERT INTO `store_tag` VALUES (1,'白色'),(2,'灰色'),(3,'粉色'),(4,'黑色'),(5,'红色'),(6,'蓝色'),(7,'蓝色');
/*!40000 ALTER TABLE `store_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user`
--

DROP TABLE IF EXISTS `store_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user`
--

LOCK TABLES `store_user` WRITE;
/*!40000 ALTER TABLE `store_user` DISABLE KEYS */;
INSERT INTO `store_user` VALUES (1,'pbkdf2_sha256$20000$m2dKyLJjPv8N$511XwNtKbhxcpouBeaHSmLbY+UWKqhug8wg201OY9W0=','2017-08-23 08:03:05.395976',1,'zino','','','',1,1,'2017-08-23 08:02:47.310644',NULL,NULL);
/*!40000 ALTER TABLE `store_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_groups`
--

DROP TABLE IF EXISTS `store_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `store_user_groups_group_id_2bac59900dcad5ef_fk_auth_group_id` (`group_id`),
  CONSTRAINT `store_user_groups_group_id_2bac59900dcad5ef_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `store_user_groups_user_id_151d7bb712084a6_fk_store_user_id` FOREIGN KEY (`user_id`) REFERENCES `store_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_groups`
--

LOCK TABLES `store_user_groups` WRITE;
/*!40000 ALTER TABLE `store_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_user_permissions`
--

DROP TABLE IF EXISTS `store_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `store_user__permission_id_2fb3df7f87284450_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `store_user__permission_id_2fb3df7f87284450_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `store_user_user_permis_user_id_42d137466bf1a1aa_fk_store_user_id` FOREIGN KEY (`user_id`) REFERENCES `store_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_user_permissions`
--

LOCK TABLES `store_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `store_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-23 16:30:31

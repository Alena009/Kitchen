-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: basetest
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_people',
  `id_country` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_country',
  `id_obl` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_obl',
  `id_type_district` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_type_district',
  `id_city` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_city',
  `id_rayon` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_rayon',
  `id_type_street` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_type_street',
  `id_street` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_street',
  `num_house` varchar(15) NOT NULL COMMENT 'Номер дома',
  `num_flat` varchar(5) DEFAULT NULL COMMENT 'Номер квартиры',
  `num_build` varchar(5) DEFAULT NULL COMMENT 'Номер корпуса',
  `post_code` varchar(10) NOT NULL COMMENT 'Почтовый индекс',
  `id_type_address` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_type_address',
  `foreign_address` varchar(100) DEFAULT NULL COMMENT 'Строка для ввода адреса для тех, кто выехал за границу',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='Таблица адресов ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,8,1,1,1,1,1,1,1,'10','10','1','51900',1,NULL),(2,8,1,1,1,1,1,1,1,'10','12','1','51900',2,NULL),(3,8,0,0,0,0,0,0,0,'0','0','0','0',0,'0'),(4,8,0,0,0,0,0,0,0,'0','0','0','0',0,'0'),(5,8,0,0,0,0,0,0,0,'0','0','0','0',0,'0'),(6,8,0,0,0,0,0,0,0,'0','0','0','0',0,'0'),(26,9,1,1,1,1,1,1,5,'1','1','1','111',1,'.'),(29,8,1,1,1,1,1,1,1,'1%D1%96','1','1','1',1,'.'),(33,8,1,1,1,1,1,1,2,'2','2','2','2',1,'.'),(34,18,1,1,1,1,1,1,1,'1','1','1','1111',1,'.'),(35,18,1,1,1,1,1,1,1,'111','1111','111','1',2,'.'),(41,21,1,1,1,1,1,1,2,'23','23','','1231',1,'.'),(43,21,2,0,0,0,0,0,0,'','','','',2,'.'),(44,29,1,1,1,1,2,1,5,'10','1','','51978',1,'.'),(45,27,1,1,1,1,2,1,5,'12','1','','51917',2,'.'),(52,31,1,1,1,1,2,2,3,'1','12','','',2,'.'),(53,35,1,1,1,1,1,2,2,'17','84','','51938',2,'.'),(54,37,1,1,1,1,2,2,5,'1','1','1','51900',2,'.'),(55,34,1,1,1,1,2,1,1,'73','15','','51917',2,'.'),(56,40,1,1,1,2,1,3,1,'1','1','1','1',2,'.'),(57,30,2,0,0,0,0,0,0,'','','','',2,'.'),(58,41,1,1,1,1,2,2,3,'1','1','1','51911',2,'.');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_album` varchar(45) NOT NULL DEFAULT 'Альбом' COMMENT 'Название альбома',
  `description_album` varchar(100) DEFAULT NULL COMMENT 'Описание события на которое сделаны фото',
  `date_album` varchar(45) DEFAULT NULL COMMENT 'Дата альбома',
  `logo_album` varchar(100) DEFAULT NULL COMMENT 'Обложка альбома',
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Фотоальбомы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (3,'Пасха','Празднование Пасхи','16.04.2017','/upload/images/photo/user-18.jpg');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums_photo`
--

DROP TABLE IF EXISTS `albums_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums_photo` (
  `id_albumphoto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_album` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице альбомов',
  `name_photo` varchar(45) NOT NULL DEFAULT 'Фото' COMMENT 'Название фото',
  `photo` varchar(100) DEFAULT NULL COMMENT 'Путь к фото',
  PRIMARY KEY (`id_albumphoto`),
  KEY `id_album_idx` (`id_album`),
  CONSTRAINT `id_album` FOREIGN KEY (`id_album`) REFERENCES `albums` (`id_album`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Фотографии с альбомов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums_photo`
--

LOCK TABLES `albums_photo` WRITE;
/*!40000 ALTER TABLE `albums_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar_history`
--

DROP TABLE IF EXISTS `avatar_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_people',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='История аватарок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar_history`
--

LOCK TABLES `avatar_history` WRITE;
/*!40000 ALTER TABLE `avatar_history` DISABLE KEYS */;
INSERT INTO `avatar_history` VALUES (7,30),(8,30),(9,30),(10,30),(11,30),(12,30),(17,30),(18,30),(19,30),(20,30),(21,30),(22,30),(23,30),(24,30),(25,30),(26,30),(27,30),(28,30),(16,35),(13,40),(14,40),(15,40),(29,41);
/*!40000 ALTER TABLE `avatar_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condshowing`
--

DROP TABLE IF EXISTS `condshowing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condshowing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `description` varchar(100) NOT NULL COMMENT 'Описание условия видимости',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Таблица условий видимости элементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condshowing`
--

LOCK TABLES `condshowing` WRITE;
/*!40000 ALTER TABLE `condshowing` DISABLE KEYS */;
INSERT INTO `condshowing` VALUES (1,'Табличное представление'),(2,'Форменное представление'),(3,'Поле БД');
/*!40000 ALTER TABLE `condshowing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор члена общины',
  `name_detail` varchar(225) NOT NULL COMMENT 'Название детали',
  `type_value` varchar(45) DEFAULT NULL COMMENT 'Вид значения',
  `value_detail` varchar(225) DEFAULT NULL COMMENT 'Значение',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Таблица деталей по каждому члену общины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,18,'участник АТО','Да/Нет','Да'),(2,18,'льготник','Да/Нет','Да'),(3,18,'wew','Текстовое','www'),(4,29,'участник АТО','Текстовое','2014-2015');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details_by_people`
--

DROP TABLE IF EXISTS `details_by_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details_by_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор человека',
  `id_detail` int(11) NOT NULL COMMENT 'Идентификатор детали, таблица dir_details',
  `value` varchar(45) NOT NULL COMMENT 'Значение детали',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Детали по людям';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details_by_people`
--

LOCK TABLES `details_by_people` WRITE;
/*!40000 ALTER TABLE `details_by_people` DISABLE KEYS */;
INSERT INTO `details_by_people` VALUES (3,29,3,'раз в неделю'),(7,29,4,'true'),(10,29,2,'true'),(11,8,2,'true'),(12,27,6,'true'),(13,27,4,'true'),(14,28,8,'IV'),(15,28,4,'true'),(16,29,8,'IV'),(17,30,8,'III'),(18,31,8,'III'),(19,35,8,'3'),(20,37,4,'true');
/*!40000 ALTER TABLE `details_by_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_city`
--

DROP TABLE IF EXISTS `dir_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_city_ua` varchar(255) NOT NULL,
  `name_city_ru` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Перечень городов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_city`
--

LOCK TABLES `dir_city` WRITE;
/*!40000 ALTER TABLE `dir_city` DISABLE KEYS */;
INSERT INTO `dir_city` VALUES (1,'Кам`янське','Каменское'),(2,'Дніпро','Днипро'),(3,'Кривий ріг','Кривой рог'),(4,'Вишневе','Вишневое');
/*!40000 ALTER TABLE `dir_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_country`
--

DROP TABLE IF EXISTS `dir_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_country_ua` varchar(255) NOT NULL COMMENT 'Название страны на украинском языке',
  `name_country_ru` varchar(255) NOT NULL COMMENT 'Название страны на русском языке',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Список стран';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_country`
--

LOCK TABLES `dir_country` WRITE;
/*!40000 ALTER TABLE `dir_country` DISABLE KEYS */;
INSERT INTO `dir_country` VALUES (1,'Україна','Украина'),(2,'Ізраїль','Израиль'),(4,'Молдова','Молдвия'),(10,'Білорусь','Белоруссия'),(11,'Польща','Польша');
/*!40000 ALTER TABLE `dir_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_details`
--

DROP TABLE IF EXISTS `dir_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификтатор записи',
  `name_det` varchar(45) NOT NULL COMMENT 'Название детали',
  `type_value` varchar(45) NOT NULL COMMENT 'Тип значения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Справочник деталей о людях';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_details`
--

LOCK TABLES `dir_details` WRITE;
/*!40000 ALTER TABLE `dir_details` DISABLE KEYS */;
INSERT INTO `dir_details` VALUES (1,'участник АТО','checkbox'),(4,'участник ВОВ','checkbox'),(5,'пенсионер по инвалидности','checkbox'),(6,'пенсионер по возрасту','checkbox'),(7,'пенсионер','checkbox'),(8,'Группа крови','text');
/*!40000 ALTER TABLE `dir_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_district`
--

DROP TABLE IF EXISTS `dir_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_type_district` int(11) NOT NULL COMMENT 'Идентификатор типа территориальной единицы (dir_type_district)',
  `id_country` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице стран (dir_country)',
  `name_district_ua` varchar(255) NOT NULL COMMENT 'Название территориальной единицы на укр.яз.',
  `name_district_ru` varchar(255) NOT NULL COMMENT 'Название территориальной единицы на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник территориальных единиц в рамках которых расположены города';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_district`
--

LOCK TABLES `dir_district` WRITE;
/*!40000 ALTER TABLE `dir_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `dir_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_educationplace`
--

DROP TABLE IF EXISTS `dir_educationplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_educationplace` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_place_ua` varchar(255) NOT NULL COMMENT 'Наименование места учебы на укр.яз.',
  `name_place_ru` varchar(225) NOT NULL COMMENT 'Наименование места учебы на рус.яз.',
  `short_name_ru` varchar(45) NOT NULL COMMENT 'Сокращенное наименование места учебы на рус.яз.',
  `short_name_ua` varchar(45) NOT NULL COMMENT 'Сокращенное наименование места учебы на укр.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Таблица со списком мест учебы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_educationplace`
--

LOCK TABLES `dir_educationplace` WRITE;
/*!40000 ALTER TABLE `dir_educationplace` DISABLE KEYS */;
INSERT INTO `dir_educationplace` VALUES (1,'Дніпропетровський національний університет','Днепропетровский национальный университет','ДНУ','ДНУ');
/*!40000 ALTER TABLE `dir_educationplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_grade`
--

DROP TABLE IF EXISTS `dir_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_grade_ua` varchar(45) DEFAULT NULL COMMENT 'Название ученой степени на укр.яз.',
  `name_grade_ru` varchar(45) DEFAULT NULL COMMENT 'Название ученой степени на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Таблица со списком ученых степеней';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_grade`
--

LOCK TABLES `dir_grade` WRITE;
/*!40000 ALTER TABLE `dir_grade` DISABLE KEYS */;
INSERT INTO `dir_grade` VALUES (1,'бакалавр','бакалавр'),(2,'спеціаліст','специалист'),(3,'магістр','магистр');
/*!40000 ALTER TABLE `dir_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_obl`
--

DROP TABLE IF EXISTS `dir_obl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_obl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_obl_ua` varchar(100) NOT NULL COMMENT 'Название области на укр.яз',
  `name_obl_ru` varchar(100) NOT NULL COMMENT 'Название области на укр.яз',
  `short_name_ua` varchar(80) DEFAULT NULL COMMENT 'сокращенное название области на укр.яз',
  `short_name_ru` varchar(80) DEFAULT NULL COMMENT 'Сокращененое название области на рус.яз',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Перечень областей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_obl`
--

LOCK TABLES `dir_obl` WRITE;
/*!40000 ALTER TABLE `dir_obl` DISABLE KEYS */;
INSERT INTO `dir_obl` VALUES (1,'Дніпропетровська область','Днепропетровская область','Дніпропетровська обл.','Днепропетровская обл.'),(2,'Харківська область','Харьковская область','Харківська обл.','Харьковская обл.'),(3,'Полтавська область','Полтавская область','Полтавська обл.','Полтавская обл.'),(4,'Хмельницька область','Хмельницкая область','Хмельницька обл.','Хмельницкая обл.'),(5,'Сумська область','Сумская область','Сумська обл.','Сумская обл.'),(6,'Київська область','Киевская область','Київська обл.','Киевская обл.'),(7,'Донецька область','Донецкая область','Донецька обл.','Донецкая обл.'),(8,'Луганська область','Луганская область','Луганська обл.','Луганская обл.'),(9,'Миколаївська область','Николаевская область','Миколаївська обл.','Николаевская обл.'),(10,'Херсонська область','Херсонская область','Херсонська обл.','Херсонская обл.'),(11,'Одесська область','Одесская область','Одесська обл.','Одесская обл.');
/*!40000 ALTER TABLE `dir_obl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_people`
--

DROP TABLE IF EXISTS `dir_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `surname` varchar(100) NOT NULL COMMENT 'Фамилия',
  `name` varchar(100) NOT NULL COMMENT 'Имя',
  `lastname` varchar(100) NOT NULL COMMENT 'Отчество',
  `sex` varchar(20) NOT NULL COMMENT 'Пол',
  `eurname` varchar(100) DEFAULT NULL COMMENT 'Еврейское имя',
  `inn` varchar(45) DEFAULT NULL COMMENT 'ИНН',
  `seriapass` varchar(5) DEFAULT NULL COMMENT 'Серия пасспорта',
  `numpass` varchar(11) DEFAULT NULL COMMENT 'Номер пасспорта',
  `datebirth` varchar(50) DEFAULT NULL COMMENT 'Дата рождения',
  `eurdatebirth` varchar(50) DEFAULT NULL COMMENT 'Еврейская дата рождения',
  `telephone` varchar(45) DEFAULT NULL COMMENT 'телефон',
  `mobtelephone` varchar(45) DEFAULT NULL COMMENT 'Мобильный иелефон',
  `email` varchar(45) DEFAULT NULL,
  `datedeath` varchar(45) DEFAULT NULL,
  `eurdatedeath` varchar(45) DEFAULT NULL,
  `eurbymot` varchar(5) DEFAULT NULL COMMENT 'Еврей по матери',
  `eurbyfat` varchar(5) DEFAULT NULL COMMENT 'Еврей по отцу',
  `eurbygm` varchar(5) DEFAULT NULL COMMENT 'Еврей по бабушке (по материнской линии)',
  `eurbygf` varchar(5) DEFAULT NULL COMMENT 'Еврей по дедушке (по материнской линии)',
  `accepting` varchar(255) DEFAULT NULL COMMENT 'Подтверждение еврейства',
  `eurbyfgm` varchar(5) DEFAULT NULL COMMENT 'Еврей по бабушке (по отцовской линии)',
  `eurbyfgf` varchar(5) DEFAULT NULL COMMENT 'Еврей по дедушке (по отцовской линии)',
  `dt_input` timestamp NULL DEFAULT NULL COMMENT 'Дата добавления записи',
  `daily_pray` varchar(5) DEFAULT NULL COMMENT 'Ежедневные молитвы',
  `invalid` varchar(5) DEFAULT NULL COMMENT 'Инвалид',
  `alone` varchar(5) DEFAULT NULL COMMENT 'Одинокий',
  `celebrates` varchar(5) DEFAULT NULL COMMENT 'Праздничные мероприятия',
  `celeb_pray` varchar(5) DEFAULT NULL COMMENT 'Праздничные молитвы',
  `sat_pray` varchar(5) DEFAULT NULL COMMENT 'Субботние молитвы',
  `work_place` varchar(255) DEFAULT NULL COMMENT 'Место работы',
  `ed_place` varchar(255) DEFAULT NULL COMMENT 'Место учебы',
  `no_letters` varchar(5) DEFAULT NULL COMMENT 'Не печатать письма',
  `needmed` varchar(5) DEFAULT NULL COMMENT 'Нужна мед.помощь',
  `needsoc` varchar(5) DEFAULT NULL COMMENT 'Нужна соц.помощь',
  `isretirement` varchar(5) DEFAULT NULL COMMENT 'Пенсионер',
  `isretirementbyage` varchar(5) DEFAULT NULL COMMENT 'Пенсионер по возрасту',
  `position` varchar(100) DEFAULT NULL COMMENT 'Должность',
  `isvip` varchar(5) DEFAULT NULL COMMENT 'ВИП',
  `mesusa` varchar(5) DEFAULT NULL COMMENT 'Мезуза',
  `mesusa_count` varchar(45) DEFAULT NULL COMMENT 'Мезуза колл-во',
  `brit` varchar(5) DEFAULT NULL COMMENT 'Брит-мила',
  `member_from` varchar(45) DEFAULT NULL COMMENT 'Член общины с',
  `dt_update` varchar(45) DEFAULT NULL COMMENT 'Дата последнего обновления записи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Список людей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_people`
--

LOCK TABLES `dir_people` WRITE;
/*!40000 ALTER TABLE `dir_people` DISABLE KEYS */;
INSERT INTO `dir_people` VALUES (30,'Апанасюк','Юлия','Николаевна','женский','Юлия','123456789','АН','111111','08.09.1991','29 Элула 5751','380985351534','380985351534','ulia@mai.ru','','','on','on','on','on','документы','on','on','0000-00-00 00:00:00','on','','','','','','ДМКД','ДГТУ','','','on','','','программист','on','','','','01.05.2017','27.08.2017'),(34,'Дашко','Алена','Геннадьевна','женский','Алена','123456789','АН','123456','15.05.1991','2 Сивана 5751','380631186347','380631186347','dashkoalena@gmail.com','','','on','','','','','','','2017-04-17 17:44:48','on','','','','','','Фрилансер','','','','','','','','','','','','02.05.2017',NULL),(35,'Самокиша','Дмитрий','Александрович','мужской','Дено','56969684758','АН','569633','15.09.1991','7 Тишрея 5752','+380933077143','+380933077143','','','','on','','','','','','','0000-00-00 00:00:00','','','','on','on','','Польща ','','','','on','','','Руководитель','','','','','','02.07.2017'),(36,'Иванов','Иван','Иванович','мужской','','','','','06.05.1985','15 Ияра 5745','','','','06.05.2016','28 Нисана 5776','on','','','','','','','2017-04-19 09:42:52','','','','','','','','','','','','','','','on',NULL,NULL,NULL,NULL,NULL),(37,'Петров','Петр','Петрович','мужской','Петр','12345678','АН','123456','15.03.1931','26 Адара 5691','0631234567','1324546545','petrov@i.ua','','','on','on','','','Подтверждено','','','2017-04-24 06:01:20','','on','','','on','','Интрепайп','','','','','','','инженер','',NULL,NULL,NULL,NULL,NULL),(38,'Сидоров','Сидор','Сидорович','мужской','Сидор','','','','','','','','','','','','','','','','','','2017-04-26 08:45:54','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL),(39,'zz','zz','zz','','','','','','','','','','','','','on','on','','','','','','0000-00-00 00:00:00','','','','','','','','','','','','','','','','','','','','09.07.2017'),(40,'qqq','qqq','qqq','','','','','','','','','','','','','on','on','','','','','','0000-00-00 00:00:00','','','','','','','','','','','','','','','','','','','','09.07.2017'),(41,'Иванов','Иван','Иванович','мужской','Ивано','123456789','АН','123456','01.01.1990','4 Тевета 5750','+380963214587','+380963212154','one@i.ua','','','on','on','','','свид о рожд','','','2018-04-14 18:33:20','on','','','','','','ДМК','','','','','','','инженер','','','','','','');
/*!40000 ALTER TABLE `dir_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_pos_type_mail`
--

DROP TABLE IF EXISTS `dir_pos_type_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_pos_type_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_type_mail` int(11) NOT NULL COMMENT 'Идентификатор рассылки',
  `name_pos` varchar(100) NOT NULL COMMENT 'Название позиции',
  PRIMARY KEY (`id`),
  KEY `id_type_mail_idx` (`id_type_mail`),
  CONSTRAINT `id_type_mail` FOREIGN KEY (`id_type_mail`) REFERENCES `dir_type_mail` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Позиции рассылок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_pos_type_mail`
--

LOCK TABLES `dir_pos_type_mail` WRITE;
/*!40000 ALTER TABLE `dir_pos_type_mail` DISABLE KEYS */;
INSERT INTO `dir_pos_type_mail` VALUES (6,7,'Поздравления с Новым годом'),(7,7,'Поздравления с Днем рождения'),(8,7,'Поздравления с Днем свадьбы'),(9,9,'Оповещение о молитвах'),(10,9,'Оповещение о молитве'),(11,9,'Оповещение о праздничном мероприятии'),(12,9,'Оповещение');
/*!40000 ALTER TABLE `dir_pos_type_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_rayon`
--

DROP TABLE IF EXISTS `dir_rayon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_rayon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_rayon_ua` varchar(100) NOT NULL COMMENT 'Название района на укр.яз.',
  `name_rayon_ru` varchar(100) NOT NULL COMMENT 'Название района на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Районы города';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_rayon`
--

LOCK TABLES `dir_rayon` WRITE;
/*!40000 ALTER TABLE `dir_rayon` DISABLE KEYS */;
INSERT INTO `dir_rayon` VALUES (1,'Південний','Южный'),(2,'Заводський','Заводской'),(3,'Романково','Романково');
/*!40000 ALTER TABLE `dir_rayon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_social`
--

DROP TABLE IF EXISTS `dir_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_social_ua` varchar(100) NOT NULL COMMENT 'Наименование вида социального положения на укр.яз.',
  `name_social_ru` varchar(100) NOT NULL COMMENT 'Наименование вида социального положения на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Справочник видов социальных положений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_social`
--

LOCK TABLES `dir_social` WRITE;
/*!40000 ALTER TABLE `dir_social` DISABLE KEYS */;
INSERT INTO `dir_social` VALUES (1,'пенсіонер','песионер'),(2,'інвалід','инвалид'),(3,'багатодітна мати','многодетная мать'),(4,'учасник АТО','участник АТО'),(5,'дитина війни','ребенок войны'),(6,'учасник Великої вітчизняної війни','участник Великой отечественной войны');
/*!40000 ALTER TABLE `dir_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_street`
--

DROP TABLE IF EXISTS `dir_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_street_ua` varchar(100) NOT NULL COMMENT 'Название улицы на укр.яз.',
  `name_street_ru` varchar(100) NOT NULL COMMENT 'Название улицы на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Перечень улиц';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_street`
--

LOCK TABLES `dir_street` WRITE;
/*!40000 ALTER TABLE `dir_street` DISABLE KEYS */;
INSERT INTO `dir_street` VALUES (1,'Аношкіна','Аношкина'),(2,'Матросова','Матросова'),(3,'Алтайська','Алтайская'),(4,'Миколи Лисенка','Николая Лысенко'),(5,'Свободи','Свободы'),(6,'Богдана Хмельницького','Богдана Хмельницкого'),(7,'Соборна','Соборная');
/*!40000 ALTER TABLE `dir_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_type_address`
--

DROP TABLE IF EXISTS `dir_type_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_type_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Иденетификатор записи',
  `name_type_address` varchar(100) NOT NULL COMMENT 'Название типа адреса',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Виды адресов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_type_address`
--

LOCK TABLES `dir_type_address` WRITE;
/*!40000 ALTER TABLE `dir_type_address` DISABLE KEYS */;
INSERT INTO `dir_type_address` VALUES (1,'место прописки'),(2,'место постоянного жительства');
/*!40000 ALTER TABLE `dir_type_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_type_district`
--

DROP TABLE IF EXISTS `dir_type_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_type_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_distr_ua` varchar(45) NOT NULL COMMENT 'Название типа населенного пункта на укр.яз.',
  `name_distr_ru` varchar(45) NOT NULL COMMENT 'Название типа населенного пункта на рус.яз.',
  `short_name_ua` varchar(15) NOT NULL COMMENT 'Сокращенное название типа населенного пункта на укр.яз.',
  `short_name_ru` varchar(15) NOT NULL COMMENT 'Сокращенное название типа населенного пункта на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Типы населенных пунктов ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_type_district`
--

LOCK TABLES `dir_type_district` WRITE;
/*!40000 ALTER TABLE `dir_type_district` DISABLE KEYS */;
INSERT INTO `dir_type_district` VALUES (1,'місто','город','м.','г.'),(2,'село','село','с.','с.');
/*!40000 ALTER TABLE `dir_type_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_type_mail`
--

DROP TABLE IF EXISTS `dir_type_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_type_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_mail` varchar(100) DEFAULT NULL COMMENT 'Название рассылки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Виды рассылок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_type_mail`
--

LOCK TABLES `dir_type_mail` WRITE;
/*!40000 ALTER TABLE `dir_type_mail` DISABLE KEYS */;
INSERT INTO `dir_type_mail` VALUES (7,'Праздничная'),(8,'Траурная'),(9,'Инфо');
/*!40000 ALTER TABLE `dir_type_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_type_relative`
--

DROP TABLE IF EXISTS `dir_type_relative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_type_relative` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_type_rel_ua` varchar(100) NOT NULL COMMENT 'Наименование степень родства на укр.яз.',
  `name_type_rel_ru` varchar(100) NOT NULL COMMENT 'Наименование степень родства на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='Перечень степеней родства';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_type_relative`
--

LOCK TABLES `dir_type_relative` WRITE;
/*!40000 ALTER TABLE `dir_type_relative` DISABLE KEYS */;
INSERT INTO `dir_type_relative` VALUES (2,'син-дочка','сын-дочь'),(3,'брат-сестра','брат-сестра'),(5,'мати','мать'),(6,'батько','отец'),(12,'онуки','внуки'),(13,'чоловік-дружина','муж-жена'),(18,'бабуся-дідусь','бабушка-дедушка'),(19,'зять-невістка','зять-невестка'),(20,'кузен-кузина','кузен-кузина'),(21,'дядько-тітка','дядя-тетя'),(22,'інший родич','др.родственник');
/*!40000 ALTER TABLE `dir_type_relative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_type_street`
--

DROP TABLE IF EXISTS `dir_type_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_type_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_type_street_ua` varchar(45) NOT NULL COMMENT 'Наименование типа улицы на укр.яз.',
  `name_type_street_ru` varchar(45) NOT NULL COMMENT 'Наименование типа улицы на рус.яз.',
  `short_name_ua` varchar(15) NOT NULL COMMENT 'Сокращенное наименование типа улицы на укр.яз.',
  `short_name_ru` varchar(15) NOT NULL COMMENT 'Сокращенное наименование типа улицы на рус.яз.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Перечень типов улиц';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_type_street`
--

LOCK TABLES `dir_type_street` WRITE;
/*!40000 ALTER TABLE `dir_type_street` DISABLE KEYS */;
INSERT INTO `dir_type_street` VALUES (1,'проспект','проспект','пр-т.','пр-т.'),(2,'вулиця','улица','вул.','ул.'),(3,'провулок','переулок','пр.','пр.');
/*!40000 ALTER TABLE `dir_type_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dir_typeeducation`
--

DROP TABLE IF EXISTS `dir_typeeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dir_typeeducation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name` varchar(45) NOT NULL COMMENT 'Наименование типов образования',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Таблица типов образования';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dir_typeeducation`
--

LOCK TABLES `dir_typeeducation` WRITE;
/*!40000 ALTER TABLE `dir_typeeducation` DISABLE KEYS */;
INSERT INTO `dir_typeeducation` VALUES (1,'среднее'),(2,'техническое'),(3,'неоконченное высшее'),(4,'высшее');
/*!40000 ALTER TABLE `dir_typeeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `name_doc` varchar(100) NOT NULL COMMENT 'Название документа',
  `description_doc` varchar(200) NOT NULL COMMENT 'Описание документа',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор члена общины, которому пренадлежит документ',
  `dt_input` datetime DEFAULT NULL COMMENT 'Дата добавления записи',
  `count_files` int(11) NOT NULL COMMENT 'Количество файлов в группе',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`),
  CONSTRAINT `idpeople` FOREIGN KEY (`id_people`) REFERENCES `dir_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='Сопроводительные документы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` VALUES (113,'Паспорт','',35,'2017-04-17 21:49:50',1),(114,'документ1','',37,'2017-04-24 09:02:29',1),(115,'445','4444',30,'2017-05-08 18:50:56',1);
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dy_comments`
--

DROP TABLE IF EXISTS `dy_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dy_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_media` int(11) NOT NULL,
  `text_comment` varchar(200) NOT NULL,
  `date_comment` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dy_comments`
--

LOCK TABLES `dy_comments` WRITE;
/*!40000 ALTER TABLE `dy_comments` DISABLE KEYS */;
INSERT INTO `dy_comments` VALUES (4,2,10,'asASXASX','2018-03-16 13:39:24'),(5,2,10,'gyjhgjghgvng','2018-03-16 14:14:26');
/*!40000 ALTER TABLE `dy_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dy_likes`
--

DROP TABLE IF EXISTS `dy_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dy_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_media` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dy_likes`
--

LOCK TABLES `dy_likes` WRITE;
/*!40000 ALTER TABLE `dy_likes` DISABLE KEYS */;
INSERT INTO `dy_likes` VALUES (1,2,10),(2,2,10),(3,2,10),(4,2,11),(5,2,11),(6,2,11),(7,2,10),(8,2,11),(9,2,11),(10,2,11),(11,2,11),(12,2,11),(13,2,11),(14,2,10),(15,2,10),(16,2,10),(17,2,10),(18,2,10),(19,2,10),(20,2,10),(21,2,10),(22,2,10),(23,2,10),(24,2,10),(25,2,10),(26,2,10),(27,2,10),(28,2,10),(29,2,10),(30,2,10),(31,2,10),(32,2,10),(33,2,10),(34,2,10),(35,2,10);
/*!40000 ALTER TABLE `dy_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dy_media`
--

DROP TABLE IF EXISTS `dy_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dy_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_content` varchar(45) NOT NULL DEFAULT 'music',
  `name` varchar(100) NOT NULL DEFAULT '#',
  `dt_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(45) NOT NULL DEFAULT 'Dima',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dy_media`
--

LOCK TABLES `dy_media` WRITE;
/*!40000 ALTER TABLE `dy_media` DISABLE KEYS */;
INSERT INTO `dy_media` VALUES (41,'music?','','2018-03-20 07:42:53',''),(42,'music?','','2018-03-20 07:42:54',''),(43,'music?','','2018-03-20 07:42:55',''),(102,'music','1','2018-03-20 11:20:56',''),(103,'music','2','2018-03-20 11:21:15',''),(104,'music','3','2018-03-20 11:21:30',''),(105,'music','4','2018-03-20 11:30:40',''),(106,'music','5','2018-03-20 11:30:54','');
/*!40000 ALTER TABLE `dy_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dy_selected`
--

DROP TABLE IF EXISTS `dy_selected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dy_selected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_media` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dy_selected`
--

LOCK TABLES `dy_selected` WRITE;
/*!40000 ALTER TABLE `dy_selected` DISABLE KEYS */;
/*!40000 ALTER TABLE `dy_selected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dy_users`
--

DROP TABLE IF EXISTS `dy_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dy_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ИДентификатор',
  `email` varchar(45) NOT NULL COMMENT 'Е-мейл',
  `username` varchar(45) NOT NULL COMMENT 'Имя пользователя',
  `password` varchar(45) NOT NULL COMMENT 'Пароль',
  `role` varchar(45) NOT NULL COMMENT 'Роль',
  `ip` varchar(45) DEFAULT NULL COMMENT 'айпи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dy_users`
--

LOCK TABLES `dy_users` WRITE;
/*!40000 ALTER TABLE `dy_users` DISABLE KEYS */;
INSERT INTO `dy_users` VALUES (1,'dddd@i.ua','ALENA','11111','user',NULL),(2,'dddd@i.ua','DIMA','22222','administrator',NULL),(3,'vhdsfkjvhdkjf@i.ua','йй','11111','user',NULL),(4,'vhdsfkjvhdkjf@i.ua','йй','11111','user',NULL);
/*!40000 ALTER TABLE `dy_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_commentmeta`
--

DROP TABLE IF EXISTS `dym_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_commentmeta`
--

LOCK TABLES `dym_commentmeta` WRITE;
/*!40000 ALTER TABLE `dym_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dym_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_comments`
--

DROP TABLE IF EXISTS `dym_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_comments`
--

LOCK TABLES `dym_comments` WRITE;
/*!40000 ALTER TABLE `dym_comments` DISABLE KEYS */;
INSERT INTO `dym_comments` VALUES (1,1,'Автор комментария','wapuu@wordpress.example','https://wordpress.org/','','2018-05-24 22:04:21','2018-05-24 19:04:21','Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `dym_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_links`
--

DROP TABLE IF EXISTS `dym_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_links`
--

LOCK TABLES `dym_links` WRITE;
/*!40000 ALTER TABLE `dym_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dym_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_options`
--

DROP TABLE IF EXISTS `dym_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_options`
--

LOCK TABLES `dym_options` WRITE;
/*!40000 ALTER TABLE `dym_options` DISABLE KEYS */;
INSERT INTO `dym_options` VALUES (1,'siteurl','http://dima','yes'),(2,'home','http://dima','yes'),(3,'blogname','dimayolo','yes'),(4,'blogdescription','Ещё один сайт на WordPress','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','dashkoalena@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','d.m.Y','yes'),(24,'time_format','H:i','yes'),(25,'links_updated_date_format','d.m.Y H:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','3','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:3:{i:0;s:55:\"Z:\\home\\dima\\www/wp-content/themes/EventBlog/single.php\";i:1;s:54:\"Z:\\home\\dima\\www/wp-content/themes/EventBlog/style.css\";i:2;s:0:\"\";}','no'),(40,'template','NewMusic','yes'),(41,'stylesheet','NewMusic','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:5:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'initial_db_version','38590','yes'),(93,'dym_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(94,'fresh_site','0','yes'),(95,'WPLANG','ru_RU','yes'),(96,'widget_search','a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}','yes'),(102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:6:{i:1527192262;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1527196360;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"4334b88fe3501b2f0e4f630eb24f7ca5\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:26;}}}}i:1527196727;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"17f415781210aaa50f7cb291eccfc7af\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:28;}}}}i:1527231862;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527275087;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(112,'theme_mods_twentyseventeen','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527189184;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes'),(116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1527189529;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}','no'),(118,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527189529;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(119,'_site_transient_timeout_theme_roots','1527191328','no'),(120,'_site_transient_theme_roots','a:5:{s:9:\"EventBlog\";s:7:\"/themes\";s:8:\"NewMusic\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),(122,'_site_transient_timeout_browser_67c6f6eda80febb5151802a5996b2a76','1527793488','no'),(123,'_site_transient_browser_67c6f6eda80febb5151802a5996b2a76','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(125,'_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e','1527231893','no'),(126,'_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2018.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2018-06-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Belgrade, Serbia\";s:7:\"country\";s:2:\"RS\";s:8:\"latitude\";d:44.808497000000003;s:9:\"longitude\";d:20.432285;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:67:\"WordPress Zaporizhia Meetup. WordPress 15th Anniversary Celebration\";s:3:\"url\";s:54:\"https://www.meetup.com/WordCamp-Kyiv/events/250095721/\";s:6:\"meetup\";s:13:\"WordCamp Kyiv\";s:10:\"meetup_url\";s:37:\"https://www.meetup.com/WordCamp-Kyiv/\";s:4:\"date\";s:19:\"2018-05-27 11:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Zaporizhzhia, Ukraine\";s:7:\"country\";s:2:\"ua\";s:8:\"latitude\";d:47.836950000000002;s:9:\"longitude\";d:35.14564;}}}}','no'),(127,'can_compress_scripts','1','no'),(128,'_transient_timeout_feed_126d1ca39d75da07beec8b892738427b','1527231895','no'),(129,'_transient_feed_126d1ca39d75da07beec8b892738427b','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Блог — Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ru.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Русский\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"\n	Wed, 02 May 2018 07:03:30 +0000	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"ru-RU\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.0-alpha-43311\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"Конференция WordCamp Санкт-Петербург 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 07:03:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:25:\"Общие вопросы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1994\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:575:\"Конференция состоится 26 мая 2018 при поддержке компании SEMrush. Хотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress? Приходите, будет интересно! Полезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party. Подробности на сайте конференции.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:706:\"<p>Конференция состоится 26 мая 2018 при поддержке компании SEMrush.<br />\nХотите поучаствовать, поделиться сообществом своим опытом или просто рассказать что-то интересное из мира WordPress?<br />\nПриходите, будет интересно!<br />\nПолезные знакомства, новые доклады, футболка с символикой WordPress, пицца и after-party.<br />\nПодробности <a href=\"https://2018.saintpetersburg.wordcamp.org/\" target=\"_blank\" rel=\"noopener noreferrer\">на сайте конференции.</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"Выпуск WordPress 4.9.4 (требуется ручное обновление)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://ru.wordpress.org/news/2018/02/%d0%b2%d1%8b%d0%bf%d1%83%d1%81%d0%ba-wordpress-4-9-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 16:46:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:22:\"Исправления\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1886\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:661:\"Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в Консоль &#62; Обновления, либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно здесь. Детали ошибки [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"Yui\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:905:\"<p>Доступна версия WordPress 4.9.4, исправляющая внесенную в выпуске 4.9.3 ошибку с автообновлением. Если вы успели (возможно автоматически) обновить свой сайт (или сайты) до 4.9.3, то вам нужно обновить WordPress  до версии 4.9.4, используя кнопку в <em>Консоль &gt; Обновления, </em>либо иным удобным вам способом (wp-cli, через ftp или ssh). Скачать архив дистрибутива можно <a href=\"https://ru.wordpress.org/releases/\">здесь</a>.</p>\n<p>Детали ошибки <a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\" target=\"_blank\" rel=\"noopener\">доступны</a> в блоге Make WordPress.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Всемирный день перевода WordPress 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2017/09/wp-translation-day-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Sep 2017 18:55:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1841\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Denis Yanchevskiy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4393:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><a href=\"https://wptranslationday.org/\"><img class=\"alignnone wp-image-1842 size-full\" src=\"https://ru.wordpress.org/files/2017/09/4by3.jpg\" alt=\"\" width=\"1024\" height=\"768\" srcset=\"https://ru.wordpress.org/files/2017/09/4by3.jpg 1024w, https://ru.wordpress.org/files/2017/09/4by3-300x225.jpg 300w, https://ru.wordpress.org/files/2017/09/4by3-768x576.jpg 768w, https://ru.wordpress.org/files/2017/09/4by3-440x330.jpg 440w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></a></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируется встреча в Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 30 сентября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd3/22\">https://www.crowdcast.io/e/gwtd3/22</a>, начало в 20:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#primary\">https://wptranslationday.org/#primary</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://ru.wordpress.org/support/topic/%D0%BA%D0%B0%D0%BA-%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%B5%D1%81%D1%82%D0%B8-%D1%82%D0%B5%D0%BC%D1%83-%D0%B8%D0%BB%D0%B8-%D0%BF%D0%BB%D0%B0%D0%B3%D0%B8%D0%BD/\">Как перевести тему или плагин?</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://translate.wordpress.org/locale/ru/default/glossary\">Словарь терминов</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Всемирный день перевода WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ru.wordpress.org/news/2016/11/wp-translation-day/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Nov 2016 16:35:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1751\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:655:\"Всемирный день перевода — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык. Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4653:\"<p><a href=\"https://wptranslationday.org/\">Всемирный день перевода</a> — это мероприятие, которое проходит по всему миру в один день в формате вебинаров или митапов, когда каждый может принять участие в переводе плагинов, тем, документации и ядра WordPress на свой родной язык.</p>\n<p><img class=\"alignnone wp-image-1764 size-large\" src=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg\" width=\"692\" height=\"391\" srcset=\"https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-1024x579.jpg 1024w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-300x170.jpg 300w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2-768x434.jpg 768w, https://ru.wordpress.org/files/2016/11/global-wordpress-translation-day-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Быть разработчиком для этого совсем не обязательно, участвовать может любой желающий. Если вы давно хотели внести свой вклад в развитие WordPress — сейчас самое время!</p>\n<p>В России в рамках мероприятия планируются встречи в Москве и Ростове-на-Дону, а также вебинар для тех, кто будет переводить у себя дома.</p>\n<p><strong>Когда</strong></p>\n<p>День перевода WordPress пройдёт в субботу, 12 ноября.</p>\n<p><strong>Где</strong></p>\n<ul>\n<li><a href=\"https://wpmag.ru/2016/global-translation-day-moscow/\">Москва</a>: метро Краснопресненская, БЦ «Трехгорная мануфактура», ул. Рочдельская, д. 15 стр. 10, 2 этаж (офис компании Setka). Начало в 12:00.</li>\n<li>Ростов-на-Дону: ул. Большая Садовая, д. 81/31 (кафе Starbucks). Начало в 12:00.</li>\n<li>Вебинар: <a href=\"https://www.crowdcast.io/e/gwtd2/14\">https://www.crowdcast.io/e/gwtd2/14</a>, начало в 16:00 по московскому времени. Вы узнаете, как переводить WordPress, плагины и темы на русский язык, сможете выбрать проект и приступить к переводу.</li>\n</ul>\n<p>Расписание всех вебинаров мероприятия: <a href=\"https://wptranslationday.org/#schedule\">https://wptranslationday.org/#schedule</a>.</p>\n<p><strong>Полезные ресурсы</strong></p>\n<ul>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/about/get-involved/first-steps/\">Первые шаги переводчика</a></li>\n<li><a href=\"https://make.wordpress.org/polyglots/handbook/tools/glotpress-translate-wordpress-org/\">Как работать с сайтом translate.wordpress.org (GlotPress)</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D1.82.D0.B8.D0.BB.D1.8C_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.D0.B0\">Рекомендации по стилю перевода</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.9A.D0.B0.D0.BA_.D1.81.D0.B4.D0.B5.D0.BB.D0.B0.D1.82.D1.8C_.D1.85.D0.BE.D1.80.D0.BE.D1.88.D0.B8.D0.B9_.D0.BF.D0.B5.D1.80.D0.B5.D0.B2.D0.BE.D0.B4.3F\">Как сделать хороший перевод</a></li>\n<li><a href=\"https://codex.wordpress.org/Вниманию_переводчиков#.D0.A1.D0.BB.D0.BE.D0.B2.D0.B0.D1.80.D1.8C_.D1.82.D0.B5.D1.80.D0.BC.D0.B8.D0.BD.D0.BE.D0.B2\">Словарь терминов</a></li>\n</ul>\n<p>Для координации и обсуждения вопросов стоит зарегистрироваться в <a href=\"https://ruwp.slack.com/\">Slack-группе русскоязычного сообщества WordPress</a> и зайти на канал <code>#translations</code>. При регистрации введите адрес вида <code>username@chat.wordpress.org</code> (он же используется и в <a href=\"https://make.wordpress.org/chat/\">английском Slack</a>), где <code>username</code> — ваш логин на WordPress.org.</p>\n<p>Да пребудут с нами понятные интерфейсы и качественная локализация!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Moscow 2016\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2016/07/wordcamp-moscow-2016/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Jul 2016 14:00:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1722\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:345:\"13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2961:\"<p>13 августа в Москве пройдёт конференция WordCamp Moscow 2016 в центре Digital October. Гостей ждет целый день лекций на интересные темы связанные с разработкой, дизайном, предпринимательством и блоггингом.</p>\n<p><img src=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg\" alt=\"Николай Миронов на WordCamp Russia 2015\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1724\" srcset=\"https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-1024x684.jpg 1024w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-300x200.jpg 300w, https://ru.wordpress.org/files/2016/07/wordcamp-russia-2015-nikolay-768x513.jpg 768w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>Cписок докладов находится на стадии утверждения, но некоторые темы уже определены:</p>\n<ul>\n<li>Как заказать разработку сайта у специалиста и остаться довольным</li>\n<li>Как работает искусственный интеллект в поисковых системах</li>\n<li>Откуда брать идеи для написания постов, плагинов и тем</li>\n<li>Как опубликовать свою тему в директорию на WordPress.org</li>\n<li>Чем может быть полезен стек Elasticsearch, Logstash и Kibana</li>\n<li>Как держать потребление памяти в WordPress под контролем</li>\n<li>Что такое A/B тестирование и как его проводить в WordPress</li>\n<li>и многое другое</li>\n</ul>\n<p>В перерывах между докладами можно будет пообщаться с коллегами, задать вопросы опытным специалистам и поделиться своими идеями.</p>\n<p>Приобрести билет можно на <a href=\"https://2016.moscow.wordcamp.org/tickets/\">сайте конференции</a> кредитной или дебетовой картой через PayPal, или при помощи системы Яндекс.Деньги.</p>\n<p>После мероприятия всех ждёт afterparty, где участники смогут пообщаться в местном баре в неформальной обстановке. Ну и, конечно же, каждый из гостей получит футболку с символикой WordPress и унесет с собой столько наклеек и значков, сколько влезет в карманы.</p>\n<p><a href=\"https://2016.moscow.wordcamp.org/tickets/\">Зарегистрироваться</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2015\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2015/07/wordcamp-russia-2015/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Jul 2015 10:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1660\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:282:\"Конференция WordCamp Russia 2015 пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2883:\"<p>Конференция <a href=\"https://russia.wordcamp.org/2015/\">WordCamp Russia 2015</a> пройдет в субботу, 15 августа в центре Digital October в Москве. Это третья официальная конференция посвященная самой популярной в мире CMS.</p>\n<p><img src=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg\" alt=\"WordCamp Russia\" width=\"692\" height=\"462\" class=\"alignnone size-large wp-image-1662\" srcset=\"https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-1024x683.jpg 1024w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2-300x200.jpg 300w, https://ru.wordpress.org/files/2015/07/wordcamp-russia-2.jpg 1200w\" sizes=\"(max-width: 692px) 100vw, 692px\" /></p>\n<p>В этом году на WordCamp вы сможете послушать интересные доклады от ведущих специалистов по WordPress в России, познакомиться с единомышленниками и поделиться своими идеями. Доклады разделены на два потока для пользователей и разработчиков WordPress, и охватывают дизайн, маркетинг, программирование, безопасность, производительность и поисковую оптимизацию.</p>\n<h2>Программа</h2>\n<p>На WordCamp Russia 2015 вы узнаете:</p>\n<ul>\n<li>Как создавать эффективные лендинги с помощью WordPress</li>\n<li>Что такое поведенческие факторы и как они измеряются</li>\n<li>Как создавать многоязычные сайты на WordPress</li>\n<li>Самые распространенные причины медленных сайтов на WordPress</li>\n<li>Как взламываются сайты на WordPress (на практике)</li>\n<li>Что такое фильтры и события в WordPress</li>\n<li>Чего ожидать от REST API в WordPress и как с ним работать</li>\n<li>Почему следует участвовать в разработке ядра WordPress</li>\n<li><a href=\"https://russia.wordcamp.org/2015/schedule/\">и многое другое</a></li>\n</ul>\n<p>Стоимость билета – $20. Сюда входит участие в конференции, обед и напитки, футболка с символикой мероприятия, значки, наклейки, подарки от спонсоров и целый день хорошего настроения.</p>\n<p>Подробности и регистрация <a href=\"https://russia.wordcamp.org/2015/\">на сайте конференции &rarr;</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.2.1 на русском\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ru.wordpress.org/news/2015/04/wordpress-4-2-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 27 Apr 2015 16:54:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ru.wordpress.org/?p=1636\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:766:\"Доступен WordPress 4.2.1. Это критическое обновление безопасности для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее. Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил Йоуко Пиннонен. WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sergey Biryukov\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1558:\"<p>Доступен WordPress 4.2.1. Это <strong>критическое обновление безопасности</strong> для всех предыдущих версий, и мы настоятельно рекомендуем вам обновить все свои сайты как можно скорее.</p>\n<p>Несколько часов назад команде WordPress стало известно об уязвимости межсайтового скриптинга, которая позволяла авторам комментариев получить доступ к сайту. Уязвимость обнаружил <a href=\"http://klikki.fi/\">Йоуко Пиннонен</a>.</p>\n<p>WordPress 4.2.1 уже устанавливается в фоновом режиме на сайты, которые <a href=\"http://https://wordpress.org/plugins/background-update-tester/\">поддерживают</a> автоматические фоновые обновления.</p>\n<p>Дополнительную информацию можно найти в <a href=\"https://codex.wordpress.org/Version_4.2.1\">заметке о релизе</a> или в <a href=\"https://core.trac.wordpress.org/log/branches/4.2?rev=32311&amp;stop_rev=32300\">списке изменений</a>.</p>\n<p><a href=\"https://ru.wordpress.org/releases/\">Скачайте версию 4.2.1</a> или перейдите в меню «Консоль» → «Обновления» и нажмите кнопку «Обновить сейчас».</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Конференция WordCamp Russia 2014\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://ru.wordpress.org/news/2014/07/wordcamp-russia-2014/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Jul 2014 09:37:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:14:\"Новости\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:15:\"WordCamp Russia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1588\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:356:\"Конференция WordCamp Russia 2014 пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1919:\"<p>Конференция <a href=\"http://2014.russia.wordcamp.org/\">WordCamp Russia 2014</a> пройдет 9 августа в Москве. На мероприятии вы сможете пообщаться с профессионалами в сфере WordPress, поделиться своим опытом и узнать что-то новое о самой популярной в мире CMS.</p>\n<p>В этом году на WordCamp Russia планируется два отдельных потока для пользователей и разработчиков. С докладами на конференции выступят специалисты WordPress из России и из-за рубежа, включая разработчиков ядра WordPress. Среди подтвержденных докладов:</p>\n<ul>\n<li>Основы поисковой оптимизации WordPress</li>\n<li>WordPress под нагрузкой: масштабирование и отказоустойчивость</li>\n<li>Сайт глазами контентера: какой должна быть идеальная &#171;админка&#187;</li>\n<li>Как не сойти с ума при разработке крупных проектов на WordPress</li>\n<li>WordPress под прицелом хакеров. Что нужно знать, и как избежать проблем.</li>\n<li>Все что вы хотели знать о WP_Query</li>\n<li>Моделирование контента в WordPress: сильно больше, чем &#171;просто блог&#187;</li>\n<li>Малоизвестные функции в ядре WordPress</li>\n<li>Профилирование кода в WordPress</li>\n</ul>\n<p>Подробности и регистрация <a href=\"http://2014.russia.wordcamp.org/\">на сайте конференции &rarr;</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"WordPress 3.9 «Смит»\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://ru.wordpress.org/news/2014/04/3-9-smith/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Apr 2014 19:56:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1516\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:710:\"Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд! Медиа и редактор В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5339:\"<p>Русская версия WordPress 3.9 &#171;Смит&#187; доступна для скачивания. Если вы уже используете WordPress, то вы можете выполнить обновление через панель администрирования в разделе «Консоль» → «Обновления». Это займет всего несколько секунд!</p>\n<h3>Медиа и редактор</h3>\n<p><img src=\"//wordpress.org/news/files/2014/04/editor1-300x233.jpg\" alt=\"editor\" width=\"228\" height=\"177\" /><img src=\"//wordpress.org/news/files/2014/04/image1-300x233.jpg\" alt=\"image\" width=\"228\" height=\"178\" /><img src=\"//wordpress.org/news/files/2014/04/dragdrop1-300x233.jpg\" alt=\"dragdrop\" width=\"228\" height=\"178\" /></p>\n<p>В новой версии WordPress мы обновили визуальный редактор, который стал еще быстрее и надежнее, а также более удобным на мобильных устройствах. Вы теперь можете вставлять текст из таких программ, как Microsoft Word, и редактор автоматически преобразует их в чистую разметку.</p>\n<p>Редактировать изображения (повернуть, перевернуть, обрезать) в медиатеке стало еще быстрее и приятнее в новой версии, а изменять размер вставленных изображений вы теперь можете прямо в самом редакторе.</p>\n<p>Загружать новые файлы в библиотеку файлов также стало намного легче &#8212; теперь их достаточно просто перетащить с вашего компьютера (например, с рабочего стола) прямо в редактор WordPress.</p>\n<p>При вставке галерей в визуальный редактор версии 3.9 вы теперь увидите полноценное превью ваших изображений. Предварительный просмотр элементов в редакторе также доступен для аудио, видео и плей-листов.</p>\n<h3>Аудио и видео</h3>\n<p>В WordPress 3.9 улучшена встроенная поддержка аудио- и видеофайлов. Мы обновили медиаплеер, а также добавили возможность легко создавать плей-листы для аудио и видео:</p>\n<p><img class=\"alignnone size-large wp-image-1534\" src=\"//ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png\" alt=\"wordpress-audio-playlist\" width=\"641\" height=\"254\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1.png 641w, https://ru.wordpress.org/files/2014/04/wordpress-audio-playlist1-300x118.png 300w\" sizes=\"(max-width: 641px) 100vw, 641px\" /></p>\n<h3>Работа с виджетами</h3>\n<p>Виджетами теперь легко управлять прямо из конфигуратора тем WordPress. Для запуска конфигуратора зайдите в раздел «Внешний вид» → «Настроить». Любые изменения в этом режиме вступят в силу только после сохранения, так что не бойтесь экспериментировать!</p>\n<p><img class=\"alignnone size-full wp-image-1536\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png\" alt=\"wordpress-3-9-widgets-screen\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-widgets-screen-300x120.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<h3>Поиск и установка тем</h3>\n<p>В версии 3.9 изменился интерфейс для поиска и установки тем из официального каталога WordPress.org. Он стал чище, приятнее и намного быстрее:</p>\n<p><img class=\"alignnone size-large wp-image-1539\" src=\"//ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png\" alt=\"wordpress-3-9-themes-install\" srcset=\"https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install.png 700w, https://ru.wordpress.org/files/2014/04/wordpress-3-9-themes-install-300x113.png 300w\" sizes=\"(max-width: 700px) 100vw, 700px\" /></p>\n<p>В новой версии также произошло большое количество внутренних изменений, которые сделали WordPress 3.9 еще быстрее и надежнее. В разработке новой версии WordPress приняло участие более 250 человек из разных стран мира. Мы надеемся, что вам понравится данное обновление.</p>\n<p>Если у вас возникнут проблемы с новой версией, обратитесь на <a href=\"https://ru.forums.wordpress.org/\">форум поддержки</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WordPress 3.8 «Паркер»\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ru.wordpress.org/news/2013/12/parker/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Dec 2013 16:07:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Релизы\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://ru.wordpress.org/?p=1478\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:749:\"Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным. Совершенно новый внешний вид WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Konstantin Kovshenin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3736:\"<p>Новая версия WordPress 3.8 &#171;Паркер&#187;, названная в честь джазового музыканта Чарли Паркера, доступна для скачивания или обновления через вашу консоль WordPress. Мы надеемся, что вы посчитаете данный релиз самым привлекательным.</p>\n<p><span id=\"more-1478\"></span></p>\n<h2>Совершенно новый внешний вид</h2>\n<p><img alt=\"Новый дизайн WordPress 3.8\"  src=\"//i2.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/overview.jpg?resize=623%2C193\" /></p>\n<p>WordPress получил совершенно новый облик. Новая версия 3.8 полностью изменяет внешний вид панели администрирования, включая новый крупный шрифт Open Sans, плоские векторные иконки и восемь различных цветовых схем.</p>\n<p><img alt=\"Цветовые схемы WordPress 3.8\"  src=\"//i2.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/colors.jpg?w=420\" /></p>\n<p>Любителям писать &#171;на ходу&#187; будет интересно знать, что панель администрирования теперь стала адаптивной. Она автоматически подстраивается под необходимую ширину вашего экрана и безупречно работает как с крупными экранами настольных компьютеров, так и с мелкими экранами мобильных устройств и планшетов.</p>\n<h2>Новый подход к работе с темами</h2>\n<p>В новой версии WordPress стало намного проще и удобнее работать с темами оформления. Мы полностью переделали интерфейс для вашего удобства, включая возможность быстрого поиска по названию, описанию или автору темы, а также возможность &#171;листать&#187; темы с помощью клавиатуры.</p>\n<p><img alt=\"Работа с темами в WordPress 3.8\"  src=\"//i2.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/themes.jpg?resize=360%2C344\" /></p>\n<h2>Журнальная тема Twenty Fourteen</h2>\n<p>Twenty Fourteen стала новой стандартной темой в WordPress 3.8. Темный лаконичный дизайн, адаптивная верстка, поддержка ряда форматов записей, несколько разделов для ваших виджетов и совершенно новый модуль &#171;Избранное содержимое&#187;, с помощью которого можно выделить ваши самые яркие записи в виде сетки или слайдера на главной странице.</p>\n<p><img  src=\"//i2.wp.com/i0.wp.com/wpdotorg.files.wordpress.com/2013/12/twentyfourteen.jpg?resize=692%2C275\" alt=\"Тема Twenty Fourteen\" /></p>\n<p>Скачать официальную русскую версию WordPress 3.8 вы можете по <a href=\"https://ru.wordpress.org/wordpress-3.8-ru_RU.zip\">этой ссылке</a>. Если вы уже пользуетесь WordPress, выполнить обновление можно в вашей панели администрирования в разделе Консоль → Обновления.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ru.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 24 May 2018 19:04:48 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 24 May 2018 18:51:43 GMT\";s:4:\"link\";s:61:\"<https://ru.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911010210\";}','no'),(130,'_transient_timeout_feed_mod_126d1ca39d75da07beec8b892738427b','1527231895','no'),(131,'_transient_feed_mod_126d1ca39d75da07beec8b892738427b','1527188695','no'),(132,'_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9','1527231896','no'),(133,'_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WPTavern: Why Sites Didn’t Automatically Update to WordPress 4.9.6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/why-sites-didnt-automatically-update-to-wordpress-4-9-6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2086:\"<p>WordPress 4.9.6 was <a href=\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\">released last</a> week and was labeled a minor release. Minor releases trigger WordPress&#8217; automatic update system. Shortly after its release, some users <a href=\"https://wordpress.org/support/topic/4-9-6-not-updating-automatically/\">began questioning</a> why their sites were not automatically updating to 4.9.6. I wondered the same thing after logging into a site I maintain and discovering it had not updated.</p>\n\n<p>It turns out that the WordPress Development team disabled the auto update system after discovering that a few plugins were incorrectly loading the new privacy features and <a href=\"https://core.trac.wordpress.org/ticket/44142\">triggering fatal 500 errors</a> on the frontend of user&#8217;s sites.</p>\n\n<p>The issue stems from privacy code that includes a file that was not expected to be loaded without the rest of the WordPress admin. Mika Epstein, a volunteer member of the plugin review team, personally contacted the affected plugin developers last weekend to help rectify the issue.</p>\n\n<p>A recent scan of the WordPress plugin directory shows that there are no other plugins incorrectly loading the privacy code. However, automatic updates for WordPress 4.9.6 remain disabled until the release of WordPress 4.9.7.</p>\n\n<p>WordPress 4.9.7 will fix the issue described above and include a few other bug fixes. Since auto updates will be enabled for 4.9.7, sites running on 4.9.5 should auto update to 4.9.7 when it&#8217;s released. WordPress 4.9.7 is expected to be released sometime after the Memorial Day holiday (Monday, May 28th). <del>Until then, users will need to manually update to 4.9.6.</del></p>\n\n<h3><strong>*Updated 5/23/2018 9:28 PM EST*</strong></h3>\n\n<p>Earlier this evening, Gary Pendergast enabled auto updates for WordPress 4.9.6 and the team is monitoring for any new errors that are triggered. So far, 20K sites have updated without any notable problems. </p>\n\n<p><del></del></p>\n\n<p><br /></p><br /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 May 2018 00:32:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Accessibility Where It Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2551\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/accessibility-where-it-matters/#utm_source=rss&utm_medium=rss&utm_campaign=accessibility-where-it-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3223:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The beauty of WordPress and its community is that we can create opportunities for ourselves.\" /><p>One of the things that I&#8217;ve always loved about WordPress is how it provides things to people. It provides a living to those who have none, it provides community to those without one, and it can provide tools to those who need them.</p>\n<p>Amanda Rush is blind, and navigates a world that is often hostile to blind people. WordPress developers work very very hard to make the WordPress software usable by people with no sight.</p>\n<p>A wonderful by-product of that is that Amanda and people like her can build a career for themselves, without depending on a physically friendly workplace and a physically friendly transit.</p>\n<p>WordPress provides Freedom to those who deal with a world that&#8217;s built to be hostile toward them.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/finding-freedom-wordpress/\">Finding Freedom in WordPress</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Accessibility Where It Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Accessibility%20Where%20It%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Accessibility Where It Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Faccessibility-where-it-matters%2F&title=Accessibility+Where+It+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Accessibility Where It Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/accessibility-where-it-matters/&media=https://heropress.com/wp-content/uploads/2015/07/BeautyOfWordpress-HeroPress-corrected-150x150.jpg&description=Accessibility Where It Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Accessibility Where It Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/accessibility-where-it-matters/\" title=\"Accessibility Where It Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/accessibility-where-it-matters/\">Accessibility Where It Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 May 2018 12:00:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Marcel Schmitz Releases Unofficial WordCamp for iOS App\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80910\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2623:\"<p>Marcel Schmitz, founder of <a href=\"https://hellodev.us/\">hellodev</a>, has <a href=\"https://schmitzoide.blog/wordcamp-app-an-ios-app-for-all-wordcampers-around-the-world/\">released</a> WordCamp for iOS for free on the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. The app utilizes the WordPress REST API endpoints from <a href=\"https://central.wordcamp.org/\">WordCamp Central</a> and hellodev to display sessions, speakers, and news from an event&#8217;s official site.</p>\n\n<p>Schmitz used <a href=\"https://2018.porto.wordcamp.org/\">WordCamp Porto</a> to test features within the app. Sessions are displayed in a timeline and if you give the app permission to access your device&#8217;s calendar, you can add sessions to it and create reminders.</p>\n\n<img />\n	Session Timeline\n\n\n<p>When viewing a session in the app, the screen displays the time the session takes place, name of the speaker with a quick link to a bio, session description, and a section at the bottom to write notes.</p>\n\n<p>There&#8217;s also an option on the top-right corner to mark sessions as favorites. However, during testing, marking a session as a favorite would crash the app.</p>\n\n<img />\n	Take Notes While Watching a Session\n\n\n<p>The app displays all of the necessary information concerning the event without the need to browse to the actual site. Schmitz says he plans to add more information about the city, venue, and the ability to call an UBER in future updates.</p>\n\n<p>WordCamp is a <a href=\"https://wordpressfoundation.org/trademark-policy/\">trademark of the WordPress Foundation</a>. Although Schmitz clearly states that WordCamp for iOS is not the official app for all WordCamps, he does not mention receiving permission from the Foundation to use WordCamp in the name. Unless his app is adopted to be the official App for iOS devices, it&#8217;s likely he will need to change the name.</p>\n\n<p>Searching the App Store for WordCamp only produces two results. Schmitz&#8217;s app and a WordCamp EU Paris Guide. There&#8217;s an official WordCamp App for Android available on <a href=\"https://play.google.com/store/apps/details?id=org.wordcamp.android&hl=en_US\">Google Play</a> and <a href=\"https://github.com/wordpress-mobile/WordCamp-Android\">GitHub</a> but the project has seen little activity in the last three years.</p>\n\n<p>WordCamp for iOS fills a void and gives users convenient access to a lot of relevant WordCamp information. To check it out for yourself, you can download it for free from the <a href=\"https://itunes.apple.com/gb/app/wordcamp/id1384323581?mt=8\">App Store</a>. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 May 2018 20:54:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"BuddyPress: BuddyPress 3.0.0 “Apollo”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=273108\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://buddypress.org/2018/05/buddypress-3-0-0-apollo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3300:\"<p>BuddyPress 3.0.0 &#8220;Apollo&#8221; is now available for immediate download from the WordPress.org plugin repository, or right from your WordPress Dashboard. &#8220;Apollo&#8221; focuses on various improvement for developers, site builders and site managers.</p>\n<h4>Say hello to “Nouveau”!</h4>\n<p>A bold reimagining of our legacy templates, Nouveau is our celebration of <a href=\"https://buddypress.org/2018/03/10-years/\">10 years of BuddyPress</a>! Nouveau delivers modern markup with fresh JavaScript-powered templates, and full integration with WordPress’ Customizer, allowing more out-of-the-box control of your BuddyPress content than ever before.</p>\n<p>Nouveau provides vertical and horizontal layout options for BuddyPress navigation, and for the component directories, you can choose between a grid layout, and a classic flat list.</p>\n<p>Nouveau is fully compatible with WordPress. Existing BuddyPress themes have been written for our legacy template pack, and until they are updated, resolve any compatibility issues by choosing the legacy template pack option in <strong>Settings &gt; BuddyPress</strong>.</p>\n<h4>Support for WP-CLI</h4>\n<p><a href=\"https://wp-cli.org/\">WP-CLI</a> is the command-line interface for WordPress. You can update plugins, configure multisite installs, and much more, without using a web browser. With this version of BuddyPress, you can now manage your BuddyPress content from WP-CLI.</p>\n<h4>Control site-wide notices from your dashboard</h4>\n<p>Site Notices are a feature within the Private Messaging component that allows community managers to share important messages with all members of their community. With Nouveau, the management interface for Site Notices has been removed from the front-end theme templates.</p>\n<p>Explore the new management interface at <strong>Users &gt; Site Notices</strong>.</p>\n<h4>New profile field type: telephone numbers</h4>\n<p>A new telephone number field type has been added to the Extended Profiles component, with support for all international number formats. With a modern web browser, your members can use this field type to touch-to-dial a number directly.</p>\n<h4>BuddyPress: leaner, faster, stronger</h4>\n<p>With every BuddyPress version, we strive to make performance improvements alongside new features and fixes; this version is no exception. Memory use has been optimised — within active components, we now only load each individual code file when it’s needed, not before.</p>\n<p>Most notably, the <a href=\"https://bpdevel.wordpress.com/2017/12/07/legacy-forums-support-will-be/\">Legacy Forums component has been removed</a> after 9 years of service. If your site was using Legacy Forums, you need to <a href=\"https://codex.buddypress.org/getting-started/guides/migrating-from-old-forums-to-bbpress-2/\">migrate to the bbPress plugin</a>.</p>\n<h4>Make mine Apollo&#8217;s</h4>\n<p>In north-east London, Stoke Newington &#8212; or Stokey, as it&#8217;s affectionately known &#8212; is an area awash with newly-opening restaurants, amidst lapping waves of encroaching gentrification. Apollo&#8217;s is an authentically Neapolitan pizza place on the High Street, serving fantastically tasty yet uncomplicated pizzas. If you ever find yourself in north London, don&#8217;t miss Apollo&#8217;s!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 May 2018 00:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Paul Gibbs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: WordPress 4.9.6 Released With User Data Export and Removal Tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80898\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/wordpress-4-9-6-released-with-user-data-export-and-removal-tools\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2428:\"<p><a href=\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\">WordPress 4.9.6</a> has been released and is considered a privacy and maintenance release. Traditionally, <a href=\"https://make.wordpress.org/core/handbook/about/release-cycle/version-numbering/\">minor versions</a> contain security and bug fixes. This release is different as it includes a number of privacy related features such as:</p>\n\n<ul>\n	<li>Privacy Policy page template/creation</li>\n	<li>User Data Request Handling</li>\n	<li>User Data Export and Removal tools</li>\n	<li>Cookie Opt-in for Comments</li>\n	<li>Other features related to <a href=\"https://www.eugdpr.org/\">GDPR Compliance</a></li>\n</ul>\n\n<p>Earlier this month, I <a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">reviewed the privacy features</a> in 4.9.6 and since that post was published, the team has made a number of adjustments. For example, site admins will receive an email when a user confirms a personal data export or removal request and the text on the privacy policy template page has been simplified. <br /></p>\n\n<p>The privacy features in WordPress 4.9.6 are largely the result of a <a href=\"https://wptavern.com/new-team-forms-to-facilitate-gdpr-compliance-in-wordpress-core\">new team of volunteers</a> that was formed earlier this year. The team is already hard at work on improving these features for future versions of WordPress.</p>\n\n<p>In addition to privacy enhancements, more than 50 bugs have been fixed. &#8216;Mine&#8217; has been added as a filter in the WordPress Media Library and when viewing a plugin in the backend, it will display the minimum PHP version that&#8217;s required.</p>\n\n<p>The WordPress Development team has published an <a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">update guide</a> that provides links to technical information related to features in 4.9.6. In addition, there&#8217;s a <a href=\"https://make.wordpress.org/core/2018/05/17/changes-that-affect-theme-authors-in-wordpress-4-9-6/\">guide available for Theme Authors</a> as styling adjustments may be necessary.</p>\n\n<p>As this is a minor release, sites are in the process of updating automatically. If you encounter an issue with 4.9.6, please report it on the <a href=\"https://wordpress.org/support/forum/how-to-and-troubleshooting/\">Support Forums</a>. <br /></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 22:46:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Dev Blog: WordPress 4.9.6 Privacy and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10732:\"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&ssl=1\" alt=\"A decorative header featuring the text \" />\n\n<h2>Privacy</h2>\n\n<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>\n\n<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>\n\n<p>You can learn more about the GDPR from the European Commission&#8217;s <a href=\"http://ec.europa.eu/justice/smedataprotect/index_en.htm\">Data Protection page</a>.<br /></p>\n\n<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>\n\n<h2>Comments</h2>\n\n<img src=\"https://i0.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&ssl=1\" alt=\"A screenshot of a comment form, where the new \" name=\"name\" />\n\n<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>\n\n<h2>Privacy Policy Page</h2>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&ssl=1\" alt=\"A screenshot of the new Privacy Settings page.\" class=\"wp-image-5995\" />\n\n<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>\n\n<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>\n\n<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href=\"https://developer.wordpress.org/plugins/privacy/\">Learn more in our Privacy section of the Plugin Handbook</a>.</p>\n\n<h2>Data Handling</h2>\n\n<img src=\"https://i2.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&ssl=1\" alt=\"A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work.\" class=\"wp-image-5999\" />\n\n<div class=\"wp-block-columns has-2-columns\">\n		<h3 class=\"layout-column-1\">Data Export</h3>\n	\n		<p class=\"layout-column-1\">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>\n	\n		<h3 class=\"layout-column-2\">Data Erasure</h3>\n	\n		<p class=\"layout-column-2\">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>\n	</div>\n\n<blockquote class=\"wp-block-quote\">\n	<p>Howdy,</p>\n	<p>A request has been made to perform the following action on your account:<br /> </p>\n	<p><strong>Export Personal Data</strong><br /> </p>\n	<p>To confirm this, please click on the following link:<br /><a href=\"https://wordpress.org/news/feed/\">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>\n	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>\n	<p>This email has been sent to <a href=\"https://wordpress.org/news/feed/\">you@example.com</a>.<br /> </p>\n	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href=\"http://wordpress.org\"><em> http://wordpress.org</em></a></p>\n</blockquote>\n\n<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Maintenance</h2>\n\n<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>\n\n<ul>\n	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>\n	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>\n	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>\n	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>\n</ul>\n\n<p><a href=\"https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/\">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>\n\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>\n\n<p class=\"has-background has-very-light-gray-background-color\">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/schlessera/\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/allendav/\">allendav</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton/\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/ayeshrajans/\">Ayesh Karunaratne</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bridgetwillard/\">bridgetwillard</a>, <a href=\"https://profiles.wordpress.org/burlingtonbytes/\">Burlington Bytes</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/claudiu/\">claudiu</a>, <a href=\"https://profiles.wordpress.org/coreymckrill/\">Corey McKrill</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ericdaams/\">Eric Daams</a>, <a href=\"https://profiles.wordpress.org/fclaussen/\">Fernando Claussen</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/idea15/\">Heather Burns</a>, <a href=\"https://profiles.wordpress.org/helen/\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/herregroen/\">herregroen</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jesperher/\">Jesper V Nielsen</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/dejliglama/\">Kåre Mulvad Steffensen</a>, <a href=\"https://profiles.wordpress.org/lakenh/\">Laken Hafner</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/macbookandrew/\">macbookandrew</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Michael Nelson</a>, <a href=\"https://profiles.wordpress.org/mikejolley/\">Mike Jolley</a>, <a href=\"https://profiles.wordpress.org/casiepa/\">Pascal Casier</a>, <a href=\"https://profiles.wordpress.org/pbarthmaier/\">pbrocks</a>, <a href=\"https://profiles.wordpress.org/postphotos/\">postphotos</a>, <a href=\"https://profiles.wordpress.org/pmbaldha/\">Prashant Baldha</a>, <a href=\"https://profiles.wordpress.org/presstigers/\">PressTigers</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/littlerchicken/\">Robin Cornett</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/satollo/\">Stefano Lissa</a>, <a href=\"https://profiles.wordpress.org/stephdau/\">Stephane Daury (stephdau)</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/teddytime/\">teddytime</a>, <a href=\"https://profiles.wordpress.org/thomasplevy/\">thomasplevy</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/tz-media/\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tjnowell/\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/voneff/\">voneff</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, and <a href=\"https://profiles.wordpress.org/xkon/\">Xenos (xkon) Konstantinos</a>.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 19:21:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Allen Snook\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: WPWeekly Episode 316 – Stone Cold WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80887&preview=true&preview_id=80887\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wpweekly-episode-316-stone-cold-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2175:\"<p>While editing this episode, I noticed that my voice routinely goes from quiet to loud. I&#8217;m not sure why this is and suspect it has something to do with Windows 10. I apologize for the audio quality and will try to have it fixed by next week&#8217;s show.</p>\n<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I discuss the recent acquisition of the Google Analytics Dashboard for WordPress plugin, rebuilding the WordPress edit screen, and an in-depth conversation on the concerns expressed surrounding WordPress 4.9.6. We send a shout out to Alex Mills, get an update on John&#8217;s stolen goats, and rant about lawn care power equipment.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://exactmetrics.com/google-analytics-dashboard-wordpress-gadwp-now-exactmetrics/\">Google Analytics Dashboard for WordPress (GADWP) is Now ExactMetrics</a><br />\n<a href=\"https://www.satellitewp.com/en/warning-wordpress-4-9-6-really-is-a-major-update/\">Warning: WordPress 4.9.6 Really is a Major Update</a><br />\n<a href=\"https://humanmade.com/2018/05/11/rebuilding-wordpress-edit-screen/\">Rebuilding the WordPress Edit Screen</a><br />\n<a href=\"https://techcrunch.com/2018/05/10/mediums-latest-pivot-leaves-some-independent-media-in-the-lurch/\">Medium’s latest pivot leaves some independent media in the lurch</a><br />\n<a href=\"https://alex.blog/2018/05/15/vision-update-better-than-expected-but-serious-damage-was-done/\">Vision Update: Better Than Expected But Serious Damage Was Done</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 23rd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #316:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 May 2018 01:12:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"HeroPress: Succeeding in Egypt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2548\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://heropress.com/succeeding-in-egypt/#utm_source=rss&utm_medium=rss&utm_campaign=succeeding-in-egypt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2936:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/09/Fail-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: If you didn’t fail, you probably haven’t *truly* succeeded yet.\" /><p>This week&#8217;s HeroPress rewind is by Shady Sharaf from Cairo, Egypt. Shady is really the kind of person I had in mind when I started HeroPress: talented and smart, but isolated. The WordPress community is relatively small in Cairo, given the number of people that live there. So he leans on the international community for the kinds of relationships others (who can just go to WordCamps whenever they want) might take for granted.</p>\n<p>Shady&#8217;s essay came to me during a time of unrest in Egypt, yet he still got up every morning, took care of his family, and got work done. He&#8217;s one of my heroes for a number of reasons, as well as a good friend.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/ambition-persistence-self-motivation/\">Ambition, Persistence, and Self-Motivation</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Succeeding in Egypt\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Succeeding%20in%20Egypt&via=heropress&url=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Succeeding in Egypt\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fsucceeding-in-egypt%2F&title=Succeeding+in+Egypt\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Succeeding in Egypt\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/succeeding-in-egypt/&media=https://heropress.com/wp-content/uploads/2015/09/Fail-HeroPress-150x150.jpg&description=Succeeding in Egypt\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Succeeding in Egypt\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/succeeding-in-egypt/\" title=\"Succeeding in Egypt\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/succeeding-in-egypt/\">Succeeding in Egypt</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 May 2018 11:55:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: To Free Up Resources, WordPress.org Plugin Review Team Begins Closing Unused Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80872\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://wptavern.com/to-free-up-resources-wordpress-org-plugin-review-team-begins-closing-unused-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1561:\"<p>In an effort to free up resources on WordPress.org, the WordPress Plugin Review Team <a href=\"https://make.wordpress.org/plugins/2018/05/14/closing-unused-plugins/\">is closing</a> unused plugins. An unused plugin is one that has been approved for the directory but no code was uploaded by the developer in six months or more.<br /></p>\n\n<p>An unused plugin reserves a URL slug on WordPress.org and prevents others from using it. It also takes resources away from active plugins. In addition, if plugin authors are submitting multiple plugins without taking advantage of the resources WordPress.org offers, submissions from that author will be suspended.</p>\n\n<p>WordPress.org provides plugin authors free hosting as a convenience and is not a listing service. Mika Epstein, a member of the plugin review team, says that some people have taken advantage of the submission process to receive a code audit, &#8220;We’ve found out some people like to get a review as a ‘free’ security review instead of hiring people for that work.&#8221;</p>\n\n<p>To find out what happens when a plugin is closed and how to close a plugin you maintain, check out <a href=\"https://developer.wordpress.org/plugins/wordpress-org/plugin-developer-faq/#closed-plugins\">this guide</a> in the Plugin Developer FAQ. Also, if you want to use a plugin name that&#8217;s currently held by a closed, unused plugin, you can <a href=\"https://developer.wordpress.org/plugins/wordpress-org/take-over-an-existing-plugin/\">request to take over the slug</a> by contacting the review team.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 May 2018 21:17:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WPTavern: WordPress 4.9.6 RC1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80843\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wptavern.com/wordpress-4-9-6-rc1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1551:\"<p>WordPress 4.9.6 Release Candidate 1 <a href=\"https://make.wordpress.org/core/2018/05/10/wordpress-4-9-6-release-candidate/\">is available</a> for download and addresses some of the issues that have been reported in beta 1. Since the beta&#8217;s release, there have been 30 bugs fixed.</p>\n\n<p>Many of the fixes in this release are focused on the new privacy tools that help with GDPR compliance. The verbiage has been changed in multiple areas to make explanations and actions clearer. For example, the Privacy Policy introduction text has been <a href=\"https://core.trac.wordpress.org/ticket/43933\">shortened and more user friendly</a>.</p>\n\n<p>One notable bug fix is that site administrators now receive an email when a Personal Data Export/Removal request is confirmed. In a future version of WordPress, it&#8217;s possible that the <a href=\"https://core.trac.wordpress.org/ticket/44000\">notification bubbles</a> will be extended to display confirmed requests.</p>\n\n<p>A full list of changes in this release can be <a href=\"https://core.trac.wordpress.org/query?status=closed&type=defect+(bug)&milestone=4.9.6&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&desc=1&order=type\">found on Trac</a>. This minor release needs more testing than usual due to the privacy tools and enhancements introduced. Please test 4.9.6 on staging site or local server and if you encounter any issues, report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta/Release Candidate section</a> of the forums.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 12 May 2018 01:37:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: WPWeekly Episode 315 – WordPress 4.9.6, Gutenberg, and Stolen Goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80834&preview=true&preview_id=80834\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/wpweekly-episode-315-wordpress-4-9-6-gutenberg-and-stolen-goats\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2075:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> starts the show by giving everyone a status update on bbPress 2.6. We review the new privacy features in WordPress 4.9.6 Beta 1 and provide feedback. We tell you what&#8217;s new in Gutenberg 2.8 and comment on WooCommerce&#8217;s new Products insertion block. Last but not least, John describes <a href=\"https://jjj.blog/2018/05/a-lady-stole-our-goats/\">watching security footage of a woman stealing metal goats</a> off his property at 4:30 AM.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\">WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/08/4-9-6-schedule-changes/\">4.9.6 Schedule Changes</a><br />\n<a href=\"https://make.wordpress.org/core/2018/05/04/whats-new-in-gutenberg-may-the-4th/\">What’s new in Gutenberg? (May the 4th)</a><br />\n<a href=\"https://woocommerce.com/2018/05/making-it-easier-to-add-products-to-posts-and-pages-with-the-products-block-for-gutenberg/\">Making it easier to add products to posts and pages with the Products block for Gutenberg</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/05/09/woocommerce-3-4-rc1/\">WooCommerce 3.4 RC1</a><br />\n<a href=\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\">Recap of Attending the First WordCamp Retreat</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 16th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #315:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 22:21:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"HeroPress: Finding Family Wherever You Can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2544\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:129:\"https://heropress.com/finding-family-wherever-you-can/#utm_source=rss&utm_medium=rss&utm_campaign=finding-family-wherever-you-can\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3162:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050918-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Without the WordPress community, I don\'t know where I would be now.\" /><p>I don&#8217;t actually remember when I met Jeff Matson.  As I look back over the last 8 years I know there were times I didn&#8217;t know him, and then suddenly he was there, immediately a good friend. And then, for all that I thought I knew him, his HeroPress essay shed an entirely new light on who he is.</p>\n<p>I believe that what we know about people shapes how we view them. Now I know that Jeff plowed through some crazy, dangerous, harmful things in his young life and somehow still ended up a stable, intelligent, reliable adult. Many kids in that life don&#8217;t make it this far.</p>\n<p>I&#8217;m proud of what the WordPress community has contributed to his life, and I&#8217;m grateful to Jeff for what he&#8217;s has contributed to this community.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/out-of-the-darkness/\">Out Of The Darkness</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Finding Family Wherever You Can\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Finding%20Family%20Wherever%20You%20Can&via=heropress&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Finding Family Wherever You Can\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ffinding-family-wherever-you-can%2F&title=Finding+Family+Wherever+You+Can\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Finding Family Wherever You Can\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/finding-family-wherever-you-can/&media=https://heropress.com/wp-content/uploads/2018/05/050918-150x150.jpg&description=Finding Family Wherever You Can\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Finding Family Wherever You Can\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/finding-family-wherever-you-can/\" title=\"Finding Family Wherever You Can\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/finding-family-wherever-you-can/\">Finding Family Wherever You Can</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 12:00:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WPTavern: Recap of Attending the First WordCamp Retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80810\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/recap-of-attending-the-first-wordcamp-retreat\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5176:\"<img />\n\n<p>The first <a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat</a> was held this past weekend in Soltau, Germany and by all accounts, it was a very successful event. The following is a guest post by <a href=\"https://remkus.devries.frl/\">Remkus de Vries</a> who recaps his experience attending the event.</p>\n\n<p><a href=\"https://twitter.com/DeFries\">Remkus</a> is from Fryslân, the Netherlands and is Manager Partnerships at <a href=\"https://yoast.com/\">Yoast</a>. He’s been active in the WordPress Community since 2006 and co-founded WordCamp Netherlands and WordCamp Europe.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<p>As some of you know, I&#8217;ve been active in the WordPress Community for over a decade and in that time, I&#8217;ve attended many WordPress related events. From Meetups to WordCamps. I get so excited about WordCamps, I&#8217;ve even <a href=\"https://netherlands.wordcamp.org\">co-founded</a> <a href=\"https://europe.wordcamp.org\">a few.</a></p>\n\n<p>However, in all those years, the format of a WordCamp has been relatively consistent. One or two days, multiple tracks and, in the last five years, a Contributor Day. Perhaps the biggest difference has been the city + location combination. WordCamp Europe started shaking this up with us opting for a rotating city and country principle (<a href=\"https://2018.europe.wordcamp.org\">you should totally come to this year&#8217;s edition btw</a>), but the main format has relatively remained the same.</p>\n\n<p>This past weekend, I attended a WordCamp with my colleagues from Yoast with quite a different format though. Yes, there were still presentations, different tracks, a Contributor Day, and an after party. So what was different about this one? The short answer: a lot.</p>\n\n<p><a href=\"https://2018-soltau.retreat.wordcamp.org/\">WordCamp Retreat in Soltau</a>, Germany was the first of its kind. One of the primary goals of WordCamps is to benefit the local community and <a href=\"https://twitter.com/search?q=WCRetreat&src=typd\">#WCRetreat</a> took a very different approach.<br /></p>\n\n<p>Here are a couple of things that set it apart from a typical WordCamp:</p>\n\n<ul>\n	<li>The location was exclusive for the WordCamp attendees.</li>\n	<li>Indoor and outdoor activities.</li>\n	<li>Work on your personal development/strengths.</li>\n	<li>Enjoy co-working under ideal conditions.</li>\n	<li>Alternate between valuable input and relaxation.</li>\n	<li>Benefit from previously unknown networking opportunities.</li>\n</ul>\n\n<h2><strong>Exclusive Location</strong></h2>\n\n<p>Most of this was made possible by the location. <a href=\"http://www.hotel-park-soltau.de/index.php\">Hotel Park Soltau</a> is located in the North of Germany surrounded by woods and heath. The hotel was reserved for WordCamp attendees only. Everyone stayed there, ate there, and networked there. It was an incredibly immersive experience on a different level than any of the other WordCamps I&#8217;ve attended.</p>\n\n<img />\n	WordCamp Retreat Venue\n\n\n<h2><strong>Immersive Activities</strong></h2>\n\n<p>In addition to the regular WordCamp presentations you might be familiar with, were non-tech related workshops and activities. From mindfulness, yoga, boot camps, to jam sessions and just playing sports outside (like football – not egg hand – and basketball). The goal being to interact with fellow attendees on a different level. And it worked. I saw much more networking and getting to know one another happening.</p>\n\n<h2><strong>A Schedule Built Around Social Interaction﻿</strong></h2>\n\n<p>The day started with some of the above-mentioned activities, then breakfast for all, followed by the first regular sessions. There was plenty of time between the sessions as well as morning, lunch and afternoon breaks that allowed for a lot of hallway tracks. Before the end of the afternoon, we switched back to other activities again like playing sports or jam sessions.</p>\n\n<h2><strong>Contributor Day on Day 2 of 3</strong></h2>\n\n<p>One of the things I enjoyed a lot is the fact that the Contributor Day was organized the second day of the three. This meant that everyone attending was kinda &#8216;locked into&#8217; attending the Contributor Day.  I&#8217;m not a big fan of forcing people to do anything, but this was a nice way of integrating the giving back part of a WordCamp.</p>\n\n<img />\n	WordCamp Retreat Contributor Day\n\n\n<h2>I Want to See More of These Types of WordCamps</h2>\n\n<p>Sunday afternoon, as the attendees were getting ready to head home, you could see how much everyone had enjoyed these three immersive days. The relaxed schedule, the different approach to what came when,  the fact of us all sharing the same rooms for 72 hours, the activities before, between and after the presentations, they all made this concept an extremely pleasant and relaxed one.<br /></p>\n\n<p>This first edition had about 180 attendees and all of their feedback will determine the fine tuning of what this WordCamp can be, but I&#8217;m very enthusiastic about this first edition.<br /></p>\n\n<p>I hope to see this type of WordCamp happen a lot more. It adds value to the format as we know it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 May 2018 06:38:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Post Status: Making WordPress and WordSesh —  Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://poststatus.com/making-wordpress-and-wordsesh-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1915:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss the upcoming WordSesh schedule and go spelunking through <a href=\"https://make.wordpress.org/\">make.wordpress.org</a> to surface some recent gems making their way to WordPress.org – both the project and the website.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"http://wordsesh.com/\">WordSesh schedule and tickets</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/28/rest-api-meeting-summary-april-26/\">REST API search endpoint</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">Help for Gutenberg migration guide</a></li>\n<li><a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">Theme review with trusted authors</a></li>\n</ul>\n<h3>Sponsor: iThemes</h3>\n<p>This episode is sponsored by <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">iThemes</a>. The team at iThemes offers WordPress plugins, themes and training to help take the guesswork out of building, maintaining and securing WordPress websites. For more information, check out their <a href=\"https://ithemes.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">website</a> and thank you to iThemes for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 23:33:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: WordPress 4.9.6 Beta 1 Adds Tools for GDPR Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80787\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/wordpress-4-9-6-beta-1-adds-tools-for-gdpr-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4711:\"<p>WordPress <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">4.9.6 Beta 1 is available</a> for testing. It&#8217;s the first step in bringing <a href=\"https://www.eugdpr.org/\">GDPR</a> (General Data Protection Regulation) tools to WordPress. In addition to 10 bugs being fixed, this release heavily focuses on privacy enhancements.</p>\n\n<p>One of the first changes is the addition of a Privacy tab on the successful update screen. The message informs users that their sites may send data to WordPress.org for plugin and theme updates with a link to the WordPress.org privacy policy.</p>\n\n<img />\n	WordPress 4.9.6 Privacy Information\n\n\n<h2>Privacy Policy Page Creation and Template<br /></h2>\n\n<p>WordPress 4.9.6 includes the ability to create a Privacy Policy page from the backend. Simply browse to <strong>Settings > Privacy</strong> and select an existing page or create a new one where the policy will be displayed.</p>\n\n<img />\n	Privacy Policy Page Settings\n\n\n<p>Privacy policy pages will likely become as ubiquitous as About Us pages thanks to the GDPR, but the information that&#8217;s displayed is unique to individual sites. WordPress helps out by providing a template with suggestions on what information to display.</p>\n\n<img />\n	Privacy Policy Template<br />\n\n\n<h2>Personal Data Export and Removal Tools</h2>\n\n<p>To comply with the GDPR, sites need to provide a way for users to obtain their personal data and request that it be removed. WordPress 4.9.6 does not give users a button to make these requests. Instead, a site&#8217;s privacy policy needs to  include information on where to send such requests.</p>\n\n<p>Once a request for a data export or removal is received, site administrators or the Data Protection Officer can browse to <strong>Tools > Export Personal Data</strong> or <strong>Tools > Remove Personal Data</strong> and send that user a verification request.</p>\n\n<img />\n	Export Personal Data Verification UI\n\n\n<img />\n	Data Removal Request Verification UI\n\n\n<p>When an admin enters a username or email address into the send request field, they&#8217;ll receive an email with a confirmation link. Once clicked, the site will display an Action Confirmed notice and that the site administrator has been notified and will fulfill the request as soon as possible.</p>\n\n<p>Here&#8217;s what a confirmed notice looks like in the backend.</p>\n\n<img />\n	Confirmed Data Export Request\n\n\n<p>One thing I noticed is that after a user confirms the request, the site administrator has <a href=\"https://core.trac.wordpress.org/ticket/43967\">no way of knowing</a> that they confirmed unless they visit the Data Export or Removal page. <br /></p>\n\n<p>Perhaps a new notification bubble can be created, similar to pending comments and updates that takes admins to the appropriate place for confirmed requests.</p>\n\n<p>When WordPress finishes creating the zip file, a link is sent to the user. For security purposes, the file will automatically be deleted after 72 hours. </p>\n\n<img />\n	My Personal Data Export\n\n\n<p>To test this feature, I exported my personal data from WP Tavern. My data export arrived in a zip file as one Index.html file. This file contains my comments, user meta data, links to attachments, and more. The data provides me with an opportunity to see what data the site has and what would be deleted if I requested full data removal.</p>\n\n<h2>Commenter Cookie Notification and Opt-in<br /></h2>\n\n<p>Cookies save data so that visitors don&#8217;t have to fill in the Author, URL, and Email fields each time they want to leave a comment. In 4.9.6, visitors will be informed of this data storage and will need to check mark a box to opt-in.</p>\n\n<img />\n	Checkbox For Consenting to Data Storage\n\n\n<p>WordPress 4.9.6 isn&#8217;t your typical minor release. It introduces new UI, options, and a bunch of privacy related enhancements. The development team is aiming to officially release 4.9.6 before GDPR goes into effect later this month, but these features need battle tested now, especially on multi-site configurations.</p>\n\n<p>I encourage you to check out 4.9.6 on a staging site and go through the process of requesting, confirming, and obtaining user data. Now is a good time to experience what users will be going through. </p>\n\n<p>You can download <a href=\"https://make.wordpress.org/core/2018/05/03/wordpress-4-9-6-beta/\">WordPress 4.9.6 beta 1 here</a> or obtain it by using the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester plugin</a>. If you encounter any issues, please report them on the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta section</a> of the support forums. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 May 2018 22:18:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: Jetpack 6.1, Now With Even More Privacy Information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80769\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/jetpack-6-1-now-with-even-more-privacy-information\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2178:\"<p>Jetpack 6.1 <a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">is available</a> and is considered a general maintenance release. This version adds two improvements to the WordAds module. Users can now use the [wordads] shortcode to place an inline ad on any post or page. Support for the <a href=\"https://en.wikipedia.org/wiki/Ads.txt\">ads.txt</a> file has also been added.</p>\n\n<p>A <a href=\"https://github.com/Automattic/jetpack/pull/8075\">new filter</a> is available that honors the <a href=\"https://en.wikipedia.org/wiki/Do_Not_Track\">Do Not Track</a> feature. This filter only affects the Stats module and will not track visitors who have Do Not Track enabled. This filter <a href=\"https://github.com/Automattic/jetpack/issues/727#issuecomment-383119108\">may be exposed</a> as a setting in the UI in a future update.</p>\n\n<p>Sharing and Likes functionality has been removed from WooCommerce&#8217;s Cart, Checkout, and Account pages. Notices that appeared in log files related to language features on sites running PHP 7.2 have been fixed.</p>\n\n<p>Continuing the <a href=\"https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\">progress made in Jetpack 6.0</a> towards GDPR compliance, 6.1 adds More Info buttons to every module that handles user data.</p>\n\n<p>The More Info buttons contain links to specific sections of support documents that describe whether or not the module is activated by default, what data is used for site owners and visitors, and what data is synchronized with WordPress.com.<br /></p>\n\n<img />\n	More Info Links in Jetpack\n\n\n<img />\n	Detailed Privacy Information for The WordPress.com Toolbar Module\n\n\n<p>In the example above, the Privacy Information link for the WordPress.com Toolbar module points to the <a href=\"https://jetpack.com/support/masterbar/#privacy\">following support document</a>. With all of this information now readily available, users can educate themselves on the privacy implications of each module and decide what&#8217;s best for their visitors.</p>\n\n<p>A <a href=\"https://wordpress.org/plugins/jetpack/#developers\">full changelog</a> of Jetpack 6.1 is available on WordPress.org.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 05 May 2018 00:23:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WPWeekly Episode 314 – Getting Squeebly With It\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80759&preview=true&preview_id=80759\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wptavern.com/wpweekly-episode-314-getting-squeebly-with-it\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1878:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> recaps his trip to WordCamp Chicago and explains the thought process behind his presentation, The Fourth Wall of WordPress. We highlight a new project that gives developers a guided path to migrate functionality from the Classic editor to Gutenberg.</p>\n<p>We discuss the pros and cons of the trusted authors program launched by the WordPress Theme Review Team and what&#8217;s new in Jetpack 6.1, what to expect from WordSesh 5, and comment on Square&#8217;s agreement to acquire Weebly for $365M.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\">A Gutenberg Migration Guide for Developers</a></p>\n<p><a href=\"https://wptavern.com/wordpress-theme-review-theme-launches-trusted-authors-program\">WordPress Theme Review Team Launches Trusted Authors Program</a></p>\n<p><a href=\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\">WordSesh 5 Scheduled for July 25th</a></p>\n<p><a href=\"https://jetpack.com/2018/05/01/jetpack-6-1-general-maintenance/\">Jetpack 6.1 Released</a></p>\n<p><a href=\"https://techcrunch.com/2018/04/26/square-acquires-weebly/\">Square Acquires Weebly for $365M</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 9th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #314:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 May 2018 21:41:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"HeroPress: Childhood to WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2522\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://heropress.com/essays/childhood-to-wordpress/#utm_source=rss&utm_medium=rss&utm_campaign=childhood-to-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:17171:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/050218-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordCamp is a way to meet new people, learn, and share knowledge!\" /><p><a href=\"https://heropress.com/feed/#gujarati\">આ નિબંધ ગુજરાતીમાં પણ ઉપલબ્ધ છે</a></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<div>First of all, I want to say thank you to HeroPress for reaching out and letting so many people share their stories. I am a follower of HeroPress and read new stories every week! A few months ago my cousin Chetan Prajapati published a WordPress story, and I was inspired by him to share my own and how it has changed my way of working.</div>\n<div></div>\n<div>I love WordPress because it had a great impact on my career. I was pursuing my Diploma in Computer Engineering. When I was in my last year of college I was working on an Industrial project and was very confused about to how to complete my project, how to choose the best framework and language so that based on my project after my college I can get a good job in my field.</div>\n<div></div>\n<div>My cousin was working on WordPress and I randomly discussed with him my last year’s project and he suggested me to use WordPress! For a demo he created an eCommerce project within 10 minutes and I was shocked. I just could not believe he created a project that fast. He said “I just installed WooCommerce and a simple theme”. From that moment on I am in love with WordPress and continuously research and gain more knowledge regarding wordpress.</div>\n<div></div>\n<div>After completing my Diploma I got a job in Ahmedabad and working as Junior WordPress Developer. Also I am attending Local Meetups and WordCamps.</div>\n<div></div>\n<div>Now I also take seminars every weekend on how to make a career in WordPress.</div>\n<div></div>\n<div>\n<div>It was my first time speaking in Ahmedabad WooCommerce Local Meetup in a session on how to create and setup eCommerce within 10 minutes.</div>\n</div>\n<p><strong>Speaking at the Ahmedabad WooCommerce Local Meetup</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p><strong>My First WordCamp &#8211; WordCamp Udaipur 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Second WordCamp &#8211; WordCamp Mumbai 2017</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Third WordCamp &#8211; WordCamp Nagpur</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>After much hardwork to achieve this event, it&#8217;s WordCamp Ahmedabad 2017.</p>\n<p><strong>My Fourth WordCamp &#8211; WordCamp Ahmedabad 2017 as Volunteer</strong></p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p><strong>My Fifth WordCamp &#8211; WordCamp Mumbai 2018 ( Second time )</strong></p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>I am a WordCamp Lover. WordCamp is a way to meet new people, learn and share knowledge!</p>\n<p>Finally my dreams are coming true at WordCamp Europe 2018. Finally I am volunteer in WordCamp Europe 2018.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<h1 id=\"gujarati\">હું WordPress પ્રેમી છું</h1>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR.jpg\"><img class=\"aligncenter size-large wp-image-2526\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131810_HDR-1024x768.jpg\" alt=\"Pravin standing by a long sign that says I Heart WordPress\" width=\"960\" height=\"720\" /></a></p>\n<p>સૌ પ્રથમ, હું તમને કહેવા માગું છું કે હિરોપર્સને પહોંચવા માટે અને ઘણા લોકોને તેમના વાર્તાઓ શેર કરવા માટે આભાર. હું હિરોપ્રેસનો અનુયાયી છું અને દર અઠવાડિયે નવી કથાઓ વાંચી સંભળાવું છું! થોડા મહિના પહેલાં મારા પિતરાઇ ભાઇ ચેતન પ્રજાપતિએ એક વાર્તાની વાર્તા લખી હતી, અને મારા દ્વારા તેનો પોતાનો ભાગ લેવા માટે પ્રેરણા મળી હતી અને તે કેવી રીતે કામ કરવાની રીત બદલ્યો છે.</p>\n<p>હું WordPress સાથે રમવા માટે chilhood છું beacuse લવ. હું છેલ્લા વર્ષમાં ડિપ્લોમા ઇન કમ્પ્યુટર એન્જીનિયરિંગમાં અભ્યાસ કરતો હતો, મારી પાસે ઔદ્યોગિક પ્રોજેક્ટ છે, તેથી હું પ્રોજેક્ટમાં કેવી રીતે સર્જન કરું છું અને કેવી રીતે શ્રેષ્ઠ માળખા અને ભાષા પસંદ કરવી તે મારા કૉલેજ પછીથી હું આઇટીમાં શ્રેષ્ઠ કામ મેળવી શકું છું તે અંગે ભ્રમિત છું.</p>\n<p>એક મારા પિતરાઈ ભાઈ WordPress પર કામ કરી રહ્યા છે, તેથી હું મારા છેલ્લા વર્ષ પ્રોજેક્ટ અંગે ચર્ચા કરી રહ્યો છું પછી તે કહે છે કે તમે WordPress પસંદ કરો છો અને તે 10 મિનિટમાં ઈકોમર્સ પ્રોજેક્ટ બનાવશે અને હું ખૂબ જ વ્યસ્ત છું. હું તે સાથે તૈયાર કરી શકતો નથી, તે 10 મિનિટમાં પૂર્ણ થયેલ પ્રોજેક્ટમાં તે કહે છે કે મેં WooCommerce અને સરળ થીમ ઇન્સ્ટોલ કરી છે. પછી હું WordPress લવ અને હું WordPress માં વધુ અને વધુ સંશોધન છું અને WordPress માં જ્ઞાન વિકાસ.</p>\n<p>દરેક અઠવાડિયે મારા સત્ર પર WordPress સાથે કારકિર્દી કેવી રીતે શરૂ કરવી તે મારા સત્ર પર.</p>\n<p>મારી ડિપ્લોમા પૂરો કર્યા પછી મને અમદાવાદમાં નાની કંપનીમાં નોકરી મળી અને જુનિયર વર્ડપ્રેસ ડેવલપર તરીકે કામ કર્યું. પછી હું સ્થાનિક મીટઅપ અને વર્ડકેમ્પમાં હાજરી કરું છું. સત્રમાં અમદાવાદ વુકોમર્સ સ્થાનિક મેટઅપમાં મારો પ્રથમ વાર સ્પીકર હતો અને 10 મિનિટમાં ઈકોમર્સ કેવી રીતે બનાવવું અને કેવી રીતે સેટઅપ કરવું તે વિશે.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\"><img class=\"aligncenter size-full wp-image-2527\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/600_458475085.jpeg\" alt=\"Pravin Teaching At WordCamp\" width=\"600\" height=\"450\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>મારો પ્રથમ વર્ડકેમ્પ &#8211; વર્ડકૅમ્પ ઉદયપુર 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_132840/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_132840-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin and a woman showing WordCamp name tags\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170128_131922_hdr/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170128_131922_HDR-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin in a cutout pink tuk tuk\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારી સેકન્ડ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ મુંબઇ 2017</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_143547_1024/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20170325_143547_1024-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin by the WordCamp Mumbai tag\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20170325_104005/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20170325_104005-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"Pravin\'s Nametag\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો ત્રીજો વર્ડકેમ્પ &#8211; વર્ડકેપ નાગપુર</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5327/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5327-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_5338/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_5338-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>આ ઇવેન્ટને તેના વર્ડકેમ્પ અમદાવાદ 2017 માં પહોંચાડવા માટે વધુ અને વધુ સખત મહેનત કર્યા પછી</p>\n<p>મારી ફોર્થ વર્ડકેમ્પ &#8211; વર્ડકેમ્પ અમદાવાદ 2017 સ્વયંસેવક તરીકે</p>\n\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_081917/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_081917-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n<a href=\"https://heropress.com/essays/childhood-to-wordpress/img_20171006_153955/\"><img width=\"150\" height=\"150\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/IMG_20171006_153955-150x150.jpg\" class=\"attachment-thumbnail size-thumbnail\" alt=\"\" /></a>\n\n<hr class=\"ttfmake-hr\" />\n<p>મારો પાંચમા વર્ડકેમ્પ &#8211; વર્ડકામ મુંબઇ 2018 (સેકન્ડ ટાઇમ)</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739.jpg\"><img class=\"aligncenter size-large wp-image-2541\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/img_20180318_105739-768x1024.jpg\" alt=\"\" width=\"768\" height=\"1024\" /></a></p>\n<hr class=\"ttfmake-hr\" />\n<p>હું એક WordCamp પ્રેમી છું વર્ડકેમ્પ નવા લોકોને મળે, જ્ઞાન અને જ્ઞાન વહેંચવાનો એક માર્ગ છે!</p>\n<p>છેલ્લે WordCamp યુરોપ 2018 માં સાચા મારા સપના. છેલ્લે હું WordCamp યુરોપ 2018 માં સ્વયંસેવક છું.</p>\n<p><a href=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\"><img class=\"aligncenter size-full wp-image-2540\" src=\"https://s20094.pcdn.co/wp-content/uploads/2018/05/wceu18-badge-square-volunteer-1.png\" alt=\"WCEU Volunteer Badge\" width=\"600\" height=\"600\" /></a></p>\n<p>&#8220;કોડ કવિતા છે&#8221;</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Childhood to WordPress\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Childhood%20to%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Childhood to WordPress\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchildhood-to-wordpress%2F&title=Childhood+to+WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Childhood to WordPress\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/childhood-to-wordpress/&media=https://heropress.com/wp-content/uploads/2018/05/050218-150x150.jpg&description=Childhood to WordPress\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Childhood to WordPress\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/childhood-to-wordpress/\" title=\"Childhood to WordPress\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/childhood-to-wordpress/\">Childhood to WordPress</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 12:45:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Pravin Parmar\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: The Month in WordPress: April 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5891\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4980:\"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>The WordPress 15th Anniversary is Coming</h2>\n\n<p>On May 27 2018, <a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>\n\n<p>Check <a href=\"https://wp15.wordpress.net/\">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">start one today</a> and host a party yourself.</p>\n\n<h2>Work has Started on a Gutenberg Migration Guide</h2>\n\n<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>\n\n<p>If you’d like to contribute to this guide, you can review <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">the existing documentation on GitHub</a> and <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">open a new issue</a> if you find something to add.</p>\n\n<h2>Theme Review Team Launches Trusted Authors Program</h2>\n\n<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>\n\n<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>\n\n<p>If you would like to get involved with reviewing themes, you can read <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">their getting started guide</a>, follow the <a href=\"https://make.wordpress.org/themes/\">team blog</a> and join the #themereview channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n\n<hr class=\"wp-block-separator\" />\n\n<h2>Further Reading:</h2>\n\n<ul>\n    <li><a href=\"https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href=\"https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/\">published some interesting feedback</a> about the process.</li>\n    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">making some changes to their review process</a> to minimize theme review delays.<br /></li>\n    <li>The Marketing Team produced <a href=\"https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/\">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>\n    <li>The Accessibility Team is actively looking for contributors for <a href=\"https://make.wordpress.org/accessibility/handbook/\">their handbook</a>.</li>\n    <li>A new type of WordCamp, <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">targeted at organizers</a>, is in the planning stages now.</li>\n    <li><a href=\"https://wordpress.org/about/\">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>\n    <li>The Community Team <a href=\"https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/\">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>\n</ul>\n\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 08:30:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"WPTavern: WordSesh 5 Scheduled for July 25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80677\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wptavern.com/wordsesh-5-scheduled-for-july-25th\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1124:\"<p>After not having an event in 2017, <a href=\"https://wordsesh.com/\">WordSesh</a>, a virtual WordPress conference, is returning July 25th. The event is being organized by Brian Richards, Founder of <a href=\"https://wpsessions.com/\">WPSessions</a> and a collection of partners. ﻿</p>\n\n<p>The <a href=\"https://wpsessions.com/\">schedule</a> is online and like previous events, there is a mixture of sessions and live podcasts. Based on the sessions, this year&#8217;s event leans towards consultants and developers. <br /></p>\n\n<img />\n    WordSesh 2018 Schedule\n\n\n<p>WordSesh five will have a hallway track that provides multiple ways for attendees to get in touch with speakers and other viewers. Attendees will also receive digital swag.</p>\n\n<p>Richards is encouraging Meetup organizers to host viewing parties. If you&#8217;d like to coordinate a viewing party for your meetup or co-working space, please contact Wordseshlive at gmail.com.</p>\n\n<p>Tickets are not yet available but those who sign up to the <a href=\"https://wordsesh.com/\">site&#8217;s email list</a> will be the first to know when they are.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 05:10:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: WordPress Theme Review Team Launches Trusted Authors Program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80587\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/wordpress-theme-review-team-launches-trusted-authors-program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2669:\"<p>In an effort to further streamline the review process and take some of the burden off of reviewers, the WordPress Theme Review team <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">has launched</a> a Trusted Authors Program.</p>\n\n<p>The program is for authors who consistently submit themes that follow the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">WordPress theme review guidelines</a> and have three or fewer issues in multiple areas. Applications and approvals will be handled by team leaders only.</p>\n\n<p>To apply for the program, theme authors need to select a ticket for the team to take into consideration and submit it as a comment on the <a href=\"https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/\">announcement post</a>. This can either be a recently approved theme or a ticket in the new or final queue.</p>\n\n<p>In addition to following the guidelines, the theme must meet the following conditions.</p>\n\n<ol>\n    <li>Escaping/Sanitization with a maximum of three issues.</li>\n    <li>Needs to be 100% GPL with a maximum of three issues. This includes all of your products on your site or third-party sites.<br /></li>\n    <li>Can not create content and demo content must be used correctly.  <br /></li>\n    <li>The theme must not contain any PHP or JavaScript errors, plugin territory functionality, correct use of prefixing, enqueue, translations, and advertising. <br /></li>\n</ol>\n\n<p>Theme authors can submit a theme for review once every two weeks, must have at least one approved theme in the directory, and can not apply using a child theme. The privilege is non-transferable and themes that are approved can only be transferred to other accounts after six months.</p>\n\n<p>As with any program, there are consequences for breaking the rules. The announcement notes that the team will not take into consideration active installs counts, how old a theme is or a theme author&#8217;s financial distress and that suspensions will be given without hesitation.</p>\n\n<p>The team has already demonstrated their ability to enforce this thought process. Last year, <a href=\"https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue\">Zerif Light was suspended</a> from the directory for five months, affecting 300K users and costing its parent company, ThemeIsle, $75k/month in lost revenue.</p>\n\n<p>If you have any questions or concerns about the program, you can contact any of the <a href=\"https://make.wordpress.org/themes/handbook/about/members/#team-repsleads\">team leads</a> on Slack. </p>\n\n<p></p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 May 2018 04:23:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Matt: Chinese Bikeshare Photos\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48075\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://ma.tt/2018/04/chinese-bikeshare-photos/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:641:\"<a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\"><img /></a>\n    A worker rides a shared bicycle past piled-up shared bikes at a vacant lot in Xiamen, Fujian province, China December 13, 2017. Picture taken December 13, 2017. REUTERS/Stringer\n\n\n<p>I find myself frequently returning to <a href=\"https://www.theatlantic.com/photo/2018/03/bike-share-oversupply-in-china-huge-piles-of-abandoned-and-broken-bicycles/556268/\">this Atlantic photo essay on the Chinese bike share companies flooding the streets with bikes</a>. It&#8217;s strangely beautiful.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 30 Apr 2018 17:53:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Rent-A-Family in Japan\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48060\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2018/04/rent-a-family-in-japan/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:909:\"<p><a href=\"http://elifbatuman.com/\">Elif Batuman</a>, who was recently a Pulitzer finalist for her novel <a href=\"https://www.amazon.com/dp/B01HNJIJ3U/\"><em>The Idiot</em></a>, has a stunning story in the <em>New Yorker</em> on <a href=\"https://www.newyorker.com/magazine/2018/04/30/japans-rent-a-family-industry\">Japan’s Rent-a-Family Industry</a>, &#8220;People who are short on relatives can hire a husband, a mother, a grandson. The resulting relationships can be more real than you’d expect.&#8221;</p>\n\n<p>You think from the title it&#8217;s going to be one of those gee-whiz stories or vaguely condescending toward Japanese, but what follows is actually an incredibly poignant and powerful view of society through a lens I had never imagined before. It&#8217;s a <a href=\"https://longreads.com/\">#longread</a> but I hope you take the time to sit with it this weekend. You may need a swordsman.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Apr 2018 01:05:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Post Status: The meta episode — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45443\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://poststatus.com/the-meta-episode-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2308:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p>In this episode, Brian and Brian discuss meta data in WordPress, including the challenge of implementing data into new tools, such as the REST API and the Gutenberg editor.</p>\n<p>With the endless options of data complexity that’s historically possible with meta fields, the way these features are implemented into new projects has to be well thought out. There is continued activity with both the REST API and Gutenberg to make sure meta is well supported. There are several things that are worth knowing, if you are a consultant or a product maker in regard to working with WordPress meta.</p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://make.wordpress.org/core/2018/04/26/completing-the-implementation-of-metadata-registration-with-the-rest-api/\">Completing the implementation of meta data registration with the REST API</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/04/23/gutenberg-rest-api-and-you/\">Gutenberg, REST API, and You</a></li>\n<li><a href=\"https://github.com/alleyinteractive/wordpress-fieldmanager\">Fields Manager</a></li>\n<li><a href=\"https://www.advancedcustomfields.com/\">Advanced Custom Fields</a></li>\n<li><a href=\"https://cmb2.io/\">CMB2</a></li>\n</ul>\n<h3>Sponsor: Pippin&#8217;s Plugins</h3>\n<p>This episode is sponsored by Pippin’s Plugins. <a href=\"http://pippinsplugins.com/\">Pippin’s Plugins</a> creates a suite of plugins that work great alone, or together. Whether you need to restrict content, sell downloads, or start an affiliate program, they’ve got you covered. For more information, check out their <a href=\"http://pippinsplugins.com/\">website</a> and thank you to Pippin’s Plugins for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:10:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WPTavern: A Gutenberg Migration Guide for Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wptavern.com/a-gutenberg-migration-guide-for-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1423:\"<p>In order to help developers learn how to migrate from the classic editor to Gutenberg, Daniel Bachhuber has launched a <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. Bachhuber is <a href=\"https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/\">seeking the community&#8217;s help</a> in identifying and filling a database to document all of the ways the classic editor can be customized.<br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p> Take a look through the <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide\">Gutenberg Migration Guide</a>. For each action, filter, and so on, we’d like to document real-world examples of how they’ve been used. Then, for each of those real-world examples, identify how the feature might be replicated in Gutenberg.</p><cite>Daniel Bachhuber</cite></blockquote>\n\n<p>He uses the media_buttons action as an example. This action is commonly used to add a button to the top of the editor. Developers can accomplish the same task in Gutenberg <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/blob/master/action-media-buttons.md\">using the block inserter</a>. </p>\n\n<p>If you have any questions or suggestions, you&#8217;re encouraged to <a href=\"https://github.com/danielbachhuber/gutenberg-migration-guide/issues\">create a new issue</a> on GitHub. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 20:06:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WPWeekly Episode 313 – BuddyPress, Gutenberg, and An Upcoming Anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=80519&preview=true&preview_id=80519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/wpweekly-episode-313-buddypress-gutenberg-and-an-upcoming-anniversary\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2714:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show with a shout out to <a href=\"https://webdevstudios.com/2018/04/24/10-years-webdevstudios/\">WebDevStudios</a>, a web development agency that&#8217;s celebrating its 10th year in business. We then cover what&#8217;s new in BuddyPress 3.0, why plugins hosted on WordPress.org can no longer claim legal compliance, and what to expect from 0.7 of the AMP for WordPress plugin. Last but not least, we share what&#8217;s new in Gutenberg 2.7 and explain why you shouldn&#8217;t edit content written in Gutenberg with the WordPress for iOS app just yet.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\">Celebrate the WordPress 15th Anniversary on May 27</a><br />\n<a href=\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\">Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance</a><br />\n<a href=\"https://wptavern.com/buddypress-3-0-beta-2-released\">BuddyPress 3.0 Beta 2 Released</a><br />\n<a href=\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\">WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project</a><br />\n<a href=\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\">AMP for WordPress 0.7 RC 1 Released</a><br />\n<a href=\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\">Gutenberg 2.7 Released, Adds Ability to Edit Permalinks</a><br />\n<a href=\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\">WordPress for iOS and Gutenberg Don’t Get Along</a><br />\n<a href=\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\">Talking Gutenberg on Episode Eight of the Drunken UX Podcast</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">Delicious Brains explains how they create and release WordPress plugins.</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, May 2nd 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #313:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 27 Apr 2018 02:08:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WPTavern: AMP for WordPress 0.7 RC 1 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80438\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wptavern.com/amp-for-wordpress-0-7-rc-1-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1966:\"<p>XWP, Automattic, and Google&#8217;s AMP team, <a href=\"https://make.xwp.co/2018/04/23/wordpress-amp-plugin-0-7-rc1/\">has released</a> 0.7 Release Candidate 1 of the <a href=\"https://wordpress.org/plugins/amp/\">AMP for WordPress plugin﻿</a>. Hinted at during <a href=\"https://www.youtube.com/watch?v=GGS-tKTXw4Y\">AMP Conf 2018</a> earlier this year, 0.7 is a major release that contains significant new features.</p>\n\n<p>This release adds Native AMP support for all of the default widgets, embeds, and commenting. Notifications will be triggered for posts that contain content with validation errors or if you use a theme or plugin that adds invalid AMP markup.</p>\n\n<p>While earlier versions of AMP displayed content in a way that was different from a site&#8217;s theme, 0.7 creates a native experience. For example, if you visit the <a href=\"https://ampdemo.xwp.io/\">AMP Conf WordPress Theme Demo site</a> on an iPhone 7, the site looks exactly the same. As you can see in the image below, you can&#8217;t tell it&#8217;s running AMP. <br /></p>\n\n<img />\n    AMP Conf Demo Theme\n\n\n<p>Before 0.7 is officially released, the development team is asking for users to put 0.7 RC 1 through its paces and <a href=\"https://github.com/Automattic/amp-wp/issues\">report issues</a> on the project&#8217;s GitHub page. You can download the <a href=\"https://github.com/Automattic/amp-wp/releases/download/0.7-RC1/amp.zip\">pre-release version here</a>.﻿<br />.﻿<br /></p>\n\n<p>For more information on the AMP project, <a href=\"https://wptavern.com/wpweekly-episode-309-all-amped-up\">listen to episode 309 of WordPress Weekly</a> where I interviewed <a href=\"https://medinathoughts.com/\">Alberto Medina</a>, Developer Advocate working with the Web Content Ecosystems Team at Google, and <a href=\"https://weston.ruter.net/\">Weston Ruter</a>, CTO of XWP. In this interview, we covered why the project was created, its future, and its potential impacts on the Open Web. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 17:30:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: How Delicious Brains Creates and Releases WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/how-delicious-brains-creates-and-releases-wordpress-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:420:\"<p>Delicious Brains have <a href=\"https://deliciousbrains.com/building-wordpress-plugins/\">published the process</a> they use for creating and releasing WordPress plugins. The post covers development, brainstorming, reviewing, testing, and wire frames. The team also describes the products and services they use and the roles they play within their projects. How is their process different or similar to yours?<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 16:32:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"HeroPress: Second Careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://heropress.com/second-careers/#utm_source=rss&utm_medium=rss&utm_campaign=second-careers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3381:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/05/042418-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I\'d rather solve the right problem with code that has room for improvement, than solve the wrong problem with perfect code.\" /><p>I&#8217;m always fascinated by people who find second careers when they&#8217;re at the top of their game in the first one. To be really excellent at something and then switch to something else altogether is fascinating to see. Very often those people bubble to the top of whatever career they venture into.</p>\n<p>This week&#8217;s HeroPress replay is titled &#8220;<a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a>&#8221; by Karin Taliga. Karin is a dancer, and has had a rich and full career in that field. But the web called to her. Like the siren&#8217;s song, always keening &#8220;Come play here, it&#8217;s wonderful!&#8221;</p>\n<p>When someone recommended I contact Karin 2 years ago she was winding up her dancing career and moving into a full time career as a web developer. The whole concept of a second career sounds exciting. I&#8217;ve always thought of &#8220;career&#8221; as something you do your whole life. But Karin has more adult life ahead of her than behind her, and I&#8217;m super excited to see where she goes with it.</p>\n<p>Check out Karin&#8217;s original post from May of 2016.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/moving-on-from-moving-on-stage/\">Moving On From Moving On Stage</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Second Careers\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Second%20Careers&via=heropress&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Second Careers\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fsecond-careers%2F&title=Second+Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Second Careers\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/second-careers/&media=https://heropress.com/wp-content/uploads/2016/05/042418-150x150.jpg&description=Second Careers\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Second Careers\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/second-careers/\" title=\"Second Careers\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/second-careers/\">Second Careers</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Apr 2018 11:30:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"WPTavern: WordPress for iOS and Gutenberg Don’t Get Along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80236\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3064:\"<p>When it comes to editing and crafting content on the go, the <a href=\"https://apps.wordpress.com/mobile/\">WordPress Mobile apps</a> are a good choice. The question is, how does the editor in the iOS app interact with content written in Gutenberg? Let&#8217;s find out.</p>\n\n<h2>Quick Edits Turn Into Lengthy, Frustrating Fixes<br /></h2>\n\n<p>For testing purposes, I used a simple scenario that many users may run into. I&#8217;ve written and published a post in Gutenberg using paragraph, unordered lists, and image blocks. I then used the WordPress for iOS mobile app to access the post, correct a typo, and save it. The goal is to see if content is affected by saving it in a different editor.<br /></p>\n\n<p>Here is what the content looks like written and published in Gutenberg.</p>\n\n<img />\n    Content Written and Published in Gutenberg\n\n\n<p>Here is what the post looks like in the iOS app. It displays what appears to be Comment shortcodes at the beginning of each paragraph.<br /></p>\n\n<img />\n    Gutenberg Content in WordPress for Ios\n\n\n<p>After correcting a typo and saving the changes, this is what happened to the post. As you can see, what was supposed to be a quick fix has turned into a lengthy process of fixing the entire article in Gutenberg.</p>\n\n<img />\n    Content Written in Gutenberg After Editing in the WordPress for iOS App\n\n\n<p>All of the content runs together as one giant block. To say that this is frustrating is an understatement, especially if you&#8217;re on the road and don&#8217;t have access to a desktop or tablet that can load the WordPress backend.  <br /></p>\n\n<p>Here is what the content looks like in Gutenberg after saving the edits in the iOS app. There are large gaps and a few of the blocks have warnings stating that they appear to have been modified externally.</p>\n\n<img />\n    Content in Gutenberg After It Was Edited in the WordPress for iOS App\n\n\n<p>Clicking the convert to block buttons turns the messages into blocks but it doesn&#8217;t return the formatting and in some cases, content goes missing. Before editing in the iOS app, this block contained a quote with a citation. Now it&#8217;s empty. <br /></p>\n\n<img />\n    Quote Block Is Missing Content\n\n\n<p>WordPress has post revisions so I was able to quickly restore the breaking changes introduced by the iOS app. But this user experience between Gutenberg and the WordPress for iOS app is a great example of how something so simple can easily turn into a perceived disaster by users and ultimately, tarnish the new editor&#8217;s reputation.</p>\n\n<p>Searching the Gutenberg repository on Github for iOS <a href=\"https://github.com/WordPress/gutenberg/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+ios\">produces some results</a>, but none refer to the compatibility issues I experienced. </p>\n\n<p>I found out the hard way and will not be making any more changes to posts written in Gutenberg in the iOS app until compatibility between both editors exists. I recommend you don&#8217;t as well unless you want to fix a lot more than a typo. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Apr 2018 23:33:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"Dev Blog: Celebrate the WordPress 15th Anniversary on May 27\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3246:\"<p>May 27, 2018 is the <strong>15th anniversary</strong> of the <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">first WordPress release</a> <a href=\"https://wordpress.org/news/2003/05/wordpress-now-available/\">﻿</a>— and we can&#8217;t wait to celebrate!</p>\n\n<img src=\"https://i1.wp.com/wordpress.org/news/files/2018/04/wp15_mark-1.png?resize=342%2C268&ssl=1\" alt=\"\" class=\"wp-image-5841\" width=\"342\" height=\"268\" />\n\n<h2>Party time!</h2>\n\n<p>Join WordPress fans all over the world in celebrating the 15th Anniversary of WordPress by throwing your own party! Here&#8217;s how you can join in the fun:</p>\n\n<ol>\n    <li>Check the <a href=\"https://wp15.wordpress.net/about/\">WordPress 15th Anniversary website</a> to see if there&#8217;s a party already planned for your town. If there is, RSVP for the party and invite your friends!<br /></li>\n    <li>If there isn&#8217;t, then pick a place to go where a bunch of people can be merry — a park, a pub, a backyard; any family-friendly venue will do!</li>\n    <li>List your party with <a href=\"https://www.meetup.com/pro/wordpress/\">your local WordPress meetup group</a> (Don&#8217;t have a group? <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group\">Start one!</a>)  and then spread the word to other local meetups, tech groups, press, etc and get people to say they’ll come to your party.</li>\n    <li><a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/event-formats/wordpress-15th-anniversary-celebrations/#request-wordpress-15th-anniversary-swag\">Request</a> some special 15th anniversary WordPress swag (no later than April 27, please, so we have time to ship it to you).<br /></li>\n    <li>Have party attendees post photos, videos, and the like with the #WP15 hashtag, and <a href=\"https://wp15.wordpress.net/live/\">check out the social media stream</a> to see how the rest of the world is sharing and celebrating.</li>\n</ol>\n\n<p>Don&#8217;t miss this chance to participate in a global celebration of WordPress!<br /></p>\n\n<h2>Special Swag</h2>\n\n<p>In honor of the 15th anniversary, we’ve added some <a href=\"https://mercantile.wordpress.org/product-category/wordpress-15/\">special 15th anniversary items</a> in the swag store — you can use the offer code <strong>CELEBRATEWP15</strong> to take 15% off this (and any other WordPress swag you buy), all the way through the end of 2018!</p>\n\n<p>Keep checking the swag store, because we&#8217;ll be adding more swag over the next few weeks!</p>\n\n<h2>Share the fun</h2>\n\n<p>However you celebrate the WordPress 15th anniversary — with <a href=\"https://wp15.wordpress.net/about/\">a party</a>, with <a href=\"https://wp15.wordpress.net/swag/\">commemorative swag</a>, by <a href=\"https://wp15.wordpress.net/live/\">telling the world</a> what WordPress means to you — remember to use the #WP15 hashtag to share it! And don&#8217;t forget to <a href=\"https://wp15.wordpress.net/live/\">check the stream of WordPress 15th anniversary posts</a>.</p>\n\n<p>When <a href=\"https://venturebeat.com/2018/03/05/wordpress-now-powers-30-of-websites/\">30% of the internet</a> has a reason to celebrate, you know it&#8217;s going to be great! </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 21:07:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Gutenberg 2.7 Released, Adds Ability to Edit Permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80121\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/gutenberg-2-7-released-adds-ability-to-edit-permalinks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>Gutenberg 2.7 <a href=\"https://wordpress.org/plugins/gutenberg/\">is available</a> for testing and not only does it refine the visuals around block controls, it adds the highly requested ability to <a href=\"https://github.com/WordPress/gutenberg/pull/5756\">edit permalinks</a>.</p>\n\n<img />\n    Editing Permalinks in Gutenberg 2.7\n\n\n<p>A new pagination block is available that adds a page break, allowing users to break posts into multiple pages. The block is located in the <strong>Blocks &#8211; Layout Elements</strong> section.</p>\n\n<p>There are a number of changes to the link insertion interface. Gutenberg 2.7 brings back the option to have links open in the same window.<br /></p>\n\n<img />\n    Toggle Determines Whether Links Open in a New Window\n\n\n<p>When editing linked text, the Unlink icon now stays in the toolbar instead of displaying within the link options modal. When adding links, there&#8217;s a URL suggestion tool similar to what&#8217;s available in WordPress&#8217; current editor.</p>\n\n<p>What will be welcomed news to plugin developers, the <a href=\"https://github.com/WordPress/gutenberg/pull/6031\">PluginSidebar API</a> is ﻿exposed and considered final. According to the pull request, this change does the following.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Refactors all the existing Sidebar components to share the same set components and removes duplicated custom CSS styles applied to <code>&lt;PluginSidebar /></code>. There are no changes to the public API of <code>&lt;PublicSidebar /></code> component, other than it is going to be available under <code>wp.editPost.PluginSidebar</code>.</p><cite>Grzegorz Ziółkowski<br /></cite></blockquote>\n\n<p>This release, like the others before it, has a changelog that&#8217;s a mile long. Please check out the <a href=\"https://make.wordpress.org/core/2018/04/18/whats-new-in-gutenberg-18th-april/\">release post</a> for a detailed list of changes and links to issues on GitHub. <br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 03:05:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: WordPress Accessibility Team Is Seeking Contributors for Its Handbook Project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=80068\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/wordpress-accessibility-team-is-seeking-contributors-for-its-handbook-project\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1290:\"<p>The <a href=\"https://make.wordpress.org/accessibility/\">WordPress Accessibility team</a> is seeking contributors for its <a href=\"https://make.wordpress.org/accessibility/handbook/\">handbook project</a>. It&#8217;s a collection of tips, resources, <a href=\"https://make.wordpress.org/accessibility/handbook/which-tools-can-i-use/\">tools</a>, and <a href=\"https://make.wordpress.org/accessibility/handbook/best-practices/\">best practices</a>. The goal is to educate users through summaries, articles, and reference materials.<br /></p>\n\n<p>The handbook was created after the accessibility team repeatedly noticed the same accessibility issues cropping up and not having a central place to send people to learn about them.</p>\n\n<p>The team is looking for people to review articles, discover resources to add to the handbook, and suggest topics to cover. If you&#8217;re interested in contributing, please join the #<a href=\"https://wordpress.slack.com/archives/C6PK2QCTY\">accessibility-docs</a> channel on <a href=\"https://make.wordpress.org/chat/\">Slack</a> where you can ask questions and learn more about the project.</p>\n\n<p>Also, consider following <a href=\"https://twitter.com/WPAccessibility\">WPAccessibility</a> on Twitter to keep tabs on team projects and links to resources. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2018 01:57:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WPTavern: BuddyPress 3.0 Beta 2 Released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79984\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wptavern.com/buddypress-3-0-beta-2-released\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1844:\"<p>The BuddyPress development team <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">has released</a> Beta 2 of BuddyPress 3.0. BuddyPress 3.0 is a major release that contains some significant changes. A new template pack called Nouveau will replace the bp-legacy template packs introduced in BuddyPress 1.7.</p>\n\n<p>The new template pack has been refactored to be semantic, accessible, and use a new set of markup files. Loops, members, and activity areas now run under Backbone to provide a smoother experience. JavaScript has been rewritten to be more modular and have better structure. <br /></p>\n\n<img />\n    BuddyPress 3.0 Customizer Options\n\n\n<p>BuddyPress 3.0 utilizes the Customizer by providing options to manipulate the Nouveau template pack or the site itself. For example, you can modify a user&#8217;s navigation options from the frontend. There&#8217;s also an option to adjust the number of columns for the Members loop. </p>\n\n<p>There are <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&page=2&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">138 tickets closed</a> in this release. In addition to what&#8217;s noted above, 3.0 will <a href=\"https://buddypress.trac.wordpress.org/ticket/7722\">remove support for WordPress 4.3 and below</a> and BuddyPress functions for bbPress 1.x forums <a href=\"https://buddypress.trac.wordpress.org/ticket/6851\">will be deprecated</a>.</p>\n\n<p>Considering the scope and breadth of changes in 3.0, users are highly encouraged to test <a href=\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\">BuddyPress 3.0 Beta 2</a>. If you encounter any issues, please report them in the <a href=\"https://buddypress.org/support/forum/how-to/\">Troubleshooting and How-to</a> section of the support forums. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 22:55:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"HeroPress: Where WordPress REALLY Matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2509\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:127:\"https://heropress.com/where-wordpress-really-matters/#utm_source=rss&utm_medium=rss&utm_campaign=where-wordpress-really-matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3591:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2016/03/041818-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: The silence is there. But it no longer scares me.\" /><p>A couple years ago I was given possibly the biggest gift the WordPress community has ever given me. The organizers of WordCamp Pune called me to speak, and the community sent me. It was an amazing experience that changed my life.</p>\n<p>While I was there I met Mahangu Weerasinghe, a wonderful man from Sri Lanka. He spoke about things that really really resonated with me. His talk was about linguistic accessibility to the Internet in Southeast Asia. Many people told me that English is enough to communicate to all of India, but Mahangu pointed out that MILLIONS of people in Southeast Asia cannot read or understand a single language on the web, let alone English.</p>\n<p>WordPress can change that, and that&#8217;s where WordPress really matters.  It&#8217;s wonderful that people around the world can make a living with it, and it&#8217;s wonderful that it gives creative outlet to so many, but <strong>important</strong> that WordPress can give global voice to those who have none.</p>\n<p>Mahangu felt for a long time that he had no voice. WordPress changed that for him, and now he&#8217;s using WordPress to change that for everyone.  He&#8217;s been hugely inspirational to me, and I hope he is for you as well.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/breaking-the-silence/\">Breaking the Silence</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Where WordPress REALLY Matters\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Where%20WordPress%20REALLY%20Matters&via=heropress&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Where WordPress REALLY Matters\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fwhere-wordpress-really-matters%2F&title=Where+WordPress+REALLY+Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Where WordPress REALLY Matters\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/where-wordpress-really-matters/&media=https://heropress.com/wp-content/uploads/2016/03/041818-150x150.jpg&description=Where WordPress REALLY Matters\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Where WordPress REALLY Matters\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/where-wordpress-really-matters/\" title=\"Where WordPress REALLY Matters\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/where-wordpress-really-matters/\">Where WordPress REALLY Matters</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Apr 2018 12:00:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"Matt: Abstract Aluminum\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48051\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://ma.tt/2018/04/abstract-aluminum/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"<p>You probably haven&#8217;t thought much about beer cans, Abstract Aluminum Space, the Midwest Premium, and how it all ties into Goldman Sachs, so you should read <a href=\"https://www.bloomberg.com/view/articles/2014-09-03/the-goldman-sachs-aluminum-conspiracy-lawsuit-is-over\">how the Goldman Sachs aluminum conspiracy lawsuit is over</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 21:57:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"BuddyPress: BuddyPress 3.0 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=272059\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://buddypress.org/2018/04/buddypress-3-0-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3509:\"<p>It&#8217;s with a huge amount of pleasure and excitement that we&#8217;re announcing the Beta 2 release of BP 3.0 today ready for testing and feedback.</p>\n<p>BuddyPress 3.0 will be a major milestone release for us and one we&#8217;re all really excited about, it&#8217;s been a long time coming but finally we are close to releasing the first template pack for BP, this is a completely new &#8216;theme&#8217; or set of template files and functionality designed to replace bp-legacy which has served us so well since it&#8217;s inception way back in the  major release of 1.7 where we introduced &#8216;Theme Compatibility&#8217;, and we&#8217;re all really eager for any feedback during these beta phases you may grab a copy of our beta1 release <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">here</a> to test with.</p>\n<p>Nouveau &#8211; as our new template pack has been named &#8211; provides an all new clean set of markup files, refactored from the ground up to be semantic and accessible. Styles are re-written and provided as Sass partials for developers if wanting to build out new packs. A lot of core functionality for components has been re-written and re-located to be sourced from include files by component in the template directory which allows even easier access to modify functions by overloading to a new theme or child theme. Our major loops, members, activity etc have been re-factored to run under Backbone for a smooth Ajax experience and indeed all the Javascript functionality is re-written to be far more modular than it was before and has a far better modern feel to it&#8217;s structuring.</p>\n<p>For the first time we have brought in the Customizer to provide user option choices and a range of layout configurations may be selected. In our initial offering we have provided various layout options for the main BP navigation elements  allowing for vertical navs or horizontal, tab effect where suitable. for the component loops such as members, Groups we provide an option to display in a grid layout &amp; at row quantity options or simply as a flat classic list layout.</p>\n<p>While we are really excited about Nouveau 3.0 also has many other improvements to offer and you can <a href=\"https://buddypress.trac.wordpress.org/query?status=closed&milestone=3.0&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">view a list of all closed tickets for 3.0</a></p>\n<p>As always your feedback and testing is an invaluable part of our releases, helping us to catch any last minute bugs.<br />\nYou can download the beta release for testing at <a href=\"https://downloads.wordpress.org/plugin/buddypress.3.0.0-beta1.zip\">downloads.wordpress.org</a> and install on a local copy of WordPress ( please remember this is a beta release and should not be run on an active production site). Any issues found can be reported on our Trac by creating a <a href=\"https://buddypress.trac.wordpress.org/newticket\">new ticket</a></p>\n<p>If you&#8217;re a developer comfortable with SVN you might like to checkout a development copy which you can do <a href=\"https://svn.buddypress.org/trunk\">from this link</a> patches can be submitted to existing tickets or issues found reported on a new ticket.</p>\n<p>Further guidance on contributing to BuddyPress is covered on our <a href=\"https://codex.buddypress.org/participate-and-contribute/\">Contributor guidelines page</a> in our <a href=\"https://codex.buddypress.org/\">Codex</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 20:30:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Hugo Ashmore\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: Talking Gutenberg on Episode Eight of the Drunken UX Podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79942\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/talking-gutenberg-on-episode-eight-of-the-drunken-ux-podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:738:\"<p>Last week, I had the pleasure of joining Michael Fienen and Aaron Hill, hosts of the Drunken UX podcast, to <a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">discuss Gutenberg</a>. We covered a lot of topics, including, why Gutenberg was created, our experiences, its timeline, pros, cons, resources, our biggest concerns, and what developers and freelancers need to know.</p>\n\n<p>The show is one hour and thirty minutes in length. By the way, please don&#8217;t criticize my drink of choice.</p>\n\n\n    <blockquote class=\"wp-embedded-content\"><a href=\"https://drunkenux.com/podcast/8-sweet-home-automattic-where-we-use-gutenberg/\">#8: Sweet Home Automattic, Where We Use Gutenberg</a></blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Apr 2018 00:14:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Plugins Hosted on WordPress.org Can No Longer Guarantee Legal Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79884\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/plugins-hosted-on-wordpress-org-can-no-longer-guarantee-legal-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2105:\"<p>The plugin review team has amended <a href=\"https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/#9-developers-and-their-plugins-must-not-do-anything-illegal-dishonest-or-morally-offensive\">guideline number nine</a> which states, <em>developers and their plugins must not do anything illegal, dishonest, or morally offensive</em>, to include the following statement:</p>\n\n<ul>\n    <li>Implying that a plugin can create, provide, automate, or guarantee legal compliance</li>\n</ul>\n\n<p>Mika Epstein, a member of the WordPress.org plugin review team, <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">says</a> the change was made because plugins by themselves can not provide legal compliance. <br /></p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>Sadly, no plugin in and of itself can provide legal compliance. While a plugin can certainly <em>assist</em> in automating the steps on a compliance journey, or allow you to develop a workflow to solve the situation, they cannot protect a site administrator from mistakes or lack of compliance, nor can they protect site users from incorrect or incomplete legal compliance on the part of the web site.</p><cite>Mika Epstein</cite></blockquote>\n\n<p>Since sites can have any combination of WordPress plugins and themes activated, it&#8217;s nearly impossible for a single plugin to make sure they&#8217;re 100% legally compliant.</p>\n\n<p>Plugin developers affected by this change will be contacted by the review team and be asked to change their titles, descriptions, plugin header images, and or the text within the readme.</p>\n\n<p>Instead of claiming compliance, the team has published a <a href=\"https://developer.wordpress.org/plugins/wordpress-org/compliance-disclaimers/\">frequently asked questions</a> document that recommends plugin authors explain how the plugin will assist in compliance. If you have any questions, please leave a comment on the <a href=\"https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/\">announcement post</a>. </p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 23:35:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Post Status: All about you(r privacy) — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45249\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://poststatus.com/all-about-your-privacy-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2485:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, the two Brians discuss the current conversations and controversy surrounding data collection and visitor privacy on the web. The duo dig in to the General Data Protection Regulation (GDPR) and what it means for you both as site visitors and site owners and, in particular, how WordPress core and plugin authors are (or should be) responding to the new regulation. It’s a pretty deep topic with many implications and ramifications. Be sure to follow the episode links, too, so that you can be best informed and prepared for when GDPR goes into effect on May 25, 2018.</span></p>\n<p></p>\n<p>Links</p>\n<ul>\n<li><a href=\"https://www.cjr.org/tow_center_reports/understanding-general-data-protection-regulation.php\">CJR report on understanding the General Data Protection Regulation</a></li>\n<li><a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">Core&#8217;s roadmap for GDPR compliance</a></li>\n<li><a href=\"https://core.trac.wordpress.org/query?status=!closed&keywords=~gdpr\">Trac issues related to GDPR</a></li>\n<li><a href=\"https://pagely.com/blog/gdpr-wordpress-2018-resources/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Pagely&#8217;s GDPR guide</a></li>\n<li><a href=\"https://www.smashingmagazine.com/2018/02/gdpr-for-web-developers/?mc_cid=a002d1fc74&mc_eid=58d2ea272a\">Heather Burns&#8217; detailed GDPR analysis in Smashing Magazine</a></li>\n</ul>\n<h3>Sponsor: Valet</h3>\n<p>This episode is sponsored by <a href=\"https://www.valet.io/\">Valet</a>. Valet helps keep your clients happy &amp; coming back. They offer expert services and keep the websites they manage functioning flawlessly. They offer preventative care that provides peace of mind around the clock. For more information, check out <a href=\"https://www.valet.io/\">their website</a> and thank you to Valet for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 16 Apr 2018 12:56:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Russell’s Treadmill\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=48043\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2018/04/russells-treadmill/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:704:\"<p>From <a href=\"https://www.amazon.com/dp/B015D3X0YG\">Bertrand Russell&#8217;s A Conquest of Happiness</a>.</p>\n\n<blockquote class=\"wp-block-quote\">\n    <p>It is very singular how little men seem to realize that they are not caught in the grip of a mechanism from which there is no escape, but that the treadmill is one upon which they remain merely because they have not noticed that it fails to take them up to a higher level.</p>\n</blockquote>\n\n<p>He also says later, &#8220;﻿There are two motives for reading a book: one, that you enjoy it; the other, that you can boast about it.&#8221; <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f602.png\" alt=\"?\" class=\"wp-smiley\" /></p>\n\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Apr 2018 20:22:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"Dev Blog: GDPR Compliance Tools in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=5728\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2018/04/gdpr-compliance-tools-in-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3913:\"<p>GDPR compliance is an important consideration for all WordPress websites. The GDPR Compliance team is looking for help to test the privacy tools that are currently being developed in core. </p>\n\n<h2>What is GDPR?</h2>\n\n<p>GDPR stands for <a href=\"https://en.wikipedia.org/wiki/General_Data_Protection_Regulation\">General Data Protection Regulation</a> and is intended to strengthen and unify data protection for all individuals within the European Union. Its primary aim is to give control back to the EU residents over their personal data. <br /></p>\n\n<p>Why the urgency? Although the GDPR was introduced two years ago, it becomes  enforceable starting May 25, 2018.</p>\n\n<h2>Make WordPress GDPR Compliance Team</h2>\n\n<p>Currently, the GDPR Compliance Team understands that helping WordPress-based sites become compliant is a large and ongoing task. The team is focusing on creating a comprehensive core policy, plugin guidelines, privacy tools and documentation. All of this requires your help.<br /></p>\n\n<p>The GDPR Compliance Team is focusing on four main areas:</p>\n\n<ul>\n    <li>Add functionality to assist site owners in creating comprehensive privacy policies for their websites.</li>\n    <li>Create guidelines for plugins to become GDPR ready.</li>\n    <li>Add administration tools to facilitate compliance and encourage user privacy in general.</li>\n    <li>Add documentation to educate site owners on privacy, the main GDPR compliance requirements, and on how to use the new privacy tools.</li>\n</ul>\n\n<h2>Don’t we already have a privacy policy?</h2>\n\n<p>Yes and no. That said, The GDPR puts tighter guidelines and restrictions. Though we have many plugins that create privacy pages, we need means to generate a unified, comprehensive privacy policy. We will need tools for users to easily come into compliance.<br /></p>\n\n<p>Site owners will be able to create GDPR compliant privacy policy in three steps:</p>\n\n<ol>\n    <li>Adding a dedicated page for the policy.<br /></li>\n    <li>Adding privacy information from plugins.</li>\n    <li>Reviewing and publishing the policy.</li>\n</ol>\n\n<p>A new &#8220;postbox&#8221; will be added to the Edit Page screen when editing the policy. All plugins that collect or store user data will be able to add privacy information there. In addition it will alert the site owners when any privacy information changes after a plugin is activated, deactivated, or updated.<br /></p>\n\n<p>There is a new functionality to confirm user requests by email address. It is intended for site owners to be able to verify requests from users for displaying, downloading, or anonymizing of personal data.<br /></p>\n\n<p>A new &#8220;Privacy&#8221; page is added under the &#8220;Tools&#8221; menu. It will display new, confirmed requests from users, as well as already fulfilled requests. It will also contain the tools for exporting and anonymizing of personal data and for requesting email confirmation to avoid abuse attempts.<br /></p>\n\n<p>New section on privacy will be added to the <a href=\"https://developer.wordpress.org/plugins/\">Plugin Handbook</a>. It will contain some general information on user privacy, what a plugin should do to be compliant, and also tips and examples on how to use the new privacy related functionality in WordPress.<br /></p>\n\n<p>The new privacy tools are scheduled for release at the end of April or beginning of May 2018.</p>\n\n<h2>How can you get involved?</h2>\n\n<p>We would love to have your help. The first step is awareness and education. For more information about the upcoming privacy tools see ﻿<a href=\"https://make.wordpress.org/core/2018/03/28/roadmap-tools-for-gdpr-compliance/\">the roadmap</a>.</p>\n\n<p>If you would like to get involved in building WordPress Core and testing the new privacy tools, please join the #gdpr-compliance channel in the <a href=\"https://make.wordpress.org/chat/\">Make WordPress</a> Slack group.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 20:11:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"WPTavern: WPWeekly Episode 312 – Dragon Drop, WordPress Accessibility Statement, and WooCommerce GDPR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=79862&preview=true&preview_id=79862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://wptavern.com/wpweekly-episode-312-dragon-drop-wordpress-accessibility-statement-and-woocommerce-gdpr\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1888:\"<p>In this episode, <a href=\"http://jjj.me\">John James Jacoby</a> and I start the show by sharing our thoughts on Mark Zuckberberg&#8217;s congressional hearing. We then discuss what&#8217;s new in Gutenberg 2.6 and describe our user experience. We let you know what&#8217;s in WooCommerce 3.3.5 and discuss what the development team is doing to prepare for GDPR compliance.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/gutenberg-2-6-introduces-drag-and-drop-block-sorting\">Gutenberg 2.6 Introduces Drag and Drop Block Sorting</a><br />\n<a href=\"https://wptavern.com/theme-review-changes-place-more-onus-onto-theme-authors\">Theme Review Changes Place More Onus Onto Theme Authors</a><br />\n<a href=\"https://wordpress.org/about/accessibility/\">WordPress Accessibility Statement</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/woocommerce-3-3-5-fix-release-notes/\">WooCommerce 3.3.5 Released</a><br />\n<a href=\"https://woocommerce.wordpress.com/2018/04/10/how-were-tackling-gdpr-in-woocommerce-core/\">How WooCommerce is tackling GDPR</a></p>\n<h2>Picks of the Week:</h2>\n<p><a href=\"https://atomicblocks.com/introducing-the-atomic-blocks-plugin-and-theme/\">AtomBlocks by Mike McAlister</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, April 18th 3:00 P.M. Eastern</p>\n<p>Subscribe to <a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\">WordPress Weekly via Itunes</a></p>\n<p>Subscribe to <a href=\"https://www.wptavern.com/feed/podcast\">WordPress Weekly via RSS</a></p>\n<p>Subscribe to <a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\">WordPress Weekly via Stitcher Radio</a></p>\n<p>Subscribe to <a href=\"https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe\">WordPress Weekly via Google Play</a></p>\n<p><strong>Listen To Episode #312:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Apr 2018 01:05:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"HeroPress: Growing Up Rural\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2503\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://heropress.com/growing-up-rural/#utm_source=rss&utm_medium=rss&utm_campaign=growing-up-rural\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2947:\"<img width=\"960\" height=\"480\" src=\"https://s20094.pcdn.co/wp-content/uploads/2015/10/ImpactForOthers-HeroPress-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I hope and pray that in some small way I\'ll be able to take what I\'ve learned and make an impact for others.\" /><p>This week&#8217;s throwback essay is titled &#8220;<a href=\"https://heropress.com/essays/i-dont-know-anything-and-thats-ok/\">I don&#8217;t know anything, and that&#8217;s ok</a>&#8220;. It was written back in 2015 by my friend Kyle. He and I grew up in similar circumstances; far from a hub of civilization, in a relatively economically depressed area, without the best education opportunities.</p>\n<p>Yet he and I both managed to find the web, dive in, and find home. We support our families and find joy in the work we produce. I&#8217;m not sure there&#8217;s a better way to live than that.</p>\n<p>Check out Kyle&#8217;s essay and let him know what you think.</p>\n<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/i-dont-know-anything-and-thats-ok/\">I Don’t Know Anything and That’s OK</a></p></blockquote>\n<p></p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Growing Up Rural\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Growing%20Up%20Rural&via=heropress&url=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Growing Up Rural\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fgrowing-up-rural%2F&title=Growing+Up+Rural\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Growing Up Rural\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/growing-up-rural/&media=https://heropress.com/wp-content/uploads/2015/10/ImpactForOthers-HeroPress-150x150.jpg&description=Growing Up Rural\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Growing Up Rural\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/growing-up-rural/\" title=\"Growing Up Rural\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/growing-up-rural/\">Growing Up Rural</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Apr 2018 12:15:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Theme Review Changes Place More Onus Onto Theme Authors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79771\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/theme-review-changes-place-more-onus-onto-theme-authors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2093:\"<p>The WordPress Theme Review team has <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/\">implemented changes</a> that simplify the process and places more responsibility onto theme authors. Theme reviewers now only need to check the following items to pass a theme.</p>\n\n<ul>\n    <li>Licensing</li>\n    <li>Malicious or egregious stuff</li>\n    <li>Content Creation</li>\n    <li>Security</li>\n</ul>\n\n<p>Although the bar to pass a theme is significantly lower, theme authors are still expected to follow the <a href=\"https://make.wordpress.org/themes/handbook/review/required/\">required</a> and <a href=\"https://make.wordpress.org/themes/handbook/review/recommended/\">recommended</a> requirements listed in the theme handbook.</p>\n\n<p>Moderators will check themes after they&#8217;ve gone live to make sure the author is following guidelines. If a moderator discovers any issues, a request will be made to the theme author to correct them. Failure to do so could lead to a temporary or permanent suspension.</p>\n\n<p>Justin Tadlock <a href=\"https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/#comment-43128\">clarified</a> in the comments examples of egregious issues.</p>\n\n<ul>\n    <li>Illegal</li>\n    <li>Dishonest</li>\n    <li>Morally offensive</li>\n    <li>PHP Errors</li>\n</ul>\n\n<p>In the past two years, The Theme Review Team has battled the theme review queue with moderate success. <a href=\"https://wptavern.com/wordpress-theme-review-team-making-progress-on-clearing-out-1000-review-backlog\">In early 2017</a>, the number of themes in the queue dropped below 200. Although there has been some work on automating the process, it&#8217;s largely reliant on humans.</p>\n\n<p>Even though it hasn&#8217;t been updated in more than a year, theme authors are highly encouraged to use the <a href=\"https://wordpress.org/plugins/theme-check/\">Theme Check plugin</a> before submitting themes for review.</p>\n\n<p>With a simplified process to get a theme live, reviewers are hoping it will free them up to focus on larger projects.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Apr 2018 23:45:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: Gutenberg 2.6 Introduces Drag and Drop Block Sorting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79658\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/gutenberg-2-6-introduces-drag-and-drop-block-sorting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1729:\"<p><a href=\"https://wordpress.org/plugins/Gutenberg/\">Gutenberg 2.6</a> is available for download and with it, comes a new way of sorting blocks. In addition to using up and down arrows, this version introduces the ability to sort blocks by <a href=\"https://github.com/WordPress/gutenberg/issues/6041\">dragging and dropping</a>.</p>\n\n<p>If you hover the cursor over the up and down arrows on the left side of a block, you&#8217;ll see a hand icon. Simply click, hold, and drag the block up or down below or above the blue indicator.</p>\n\n\n    \n\n\n<p>In my limited testing, I found drag and drop to be hit or miss. Sometimes, when I try to drag and drop a block, the blue line doesn&#8217;t show up.</p>\n\n<p>The hand icon for the cursor is different for the top and bottom of the block. You can drag a block by hovering over the bottom of it but you can&#8217;t do it from the top.</p>\n\n<img />\n    Hovering the cursor at the top of the block\n\n\n<img />\n    Hovering the cursor at the bottom of the block\n\n\n<p>I also found it difficult to add a new block manually. For example, when I add a paragraph block, I don&#8217;t see the Plus icon to create a new block underneath it anymore.</p>\n\n<p>Pressing enter at the end of a paragraph creates a new Paragraph block automatically. But I don&#8217;t know how to transform it into an image block. I&#8217;ll need to do more testing to figure out what&#8217;s going on. <br /></p>\n\n<p>There&#8217;s a host of <a href=\"https://make.wordpress.org/core/2018/04/05/whats-new-in-gutenberg-5th-april/\">other improvements and bug fixes </a>in this release, some of which I covered <a href=\"https://wptavern.com/an-update-to-my-gutenberg-experience\">in this post</a>. ﻿<br />. ﻿<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Apr 2018 00:09:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Post Status: Designing the news — Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=45154\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://poststatus.com/designing-the-news-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1904:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>\n<p><span>In this episode, Brian and Brian discuss a variety of news topics spanning design, development, and business. Tune in to learn about the history of WordPress and the web, the newest TechCrunch redesign, a WordCamp for WordCamp organizers, and more.</span></p>\n<p></p>\n<h3>Links</h3>\n<ul>\n<li><a href=\"https://zeen101.com/for-developers/leakypaywall/\">Leaky Paywall</a></li>\n<li><a href=\"https://designintech.report/\">2018 Design in Tech report</a></li>\n<li><a href=\"https://gutenberg.courses/development/\">Gutenberg Development Course</a></li>\n<li><a href=\"https://techcrunch.com/2018/03/13/welcome-to-the-new-techcrunch/\">TechCrunch redesign</a></li>\n<li><a href=\"https://thehistoryoftheweb.com/the-story-of-wordpress/\">WordPress turns 15</a>, via History of the Web</li>\n<li><a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">Proposal for a WordCamp for WordCamp organizers </a></li>\n</ul>\n<h3>Sponsor: Gravity Forms</h3>\n<p><a href=\"http://www.gravityforms.com/?utm_source=post_status&utm_medium=banner&utm_campaign=ps_ads\">Gravity Forms</a> makes the best web forms on the planet. Over a million WordPress sites are already using Gravity Forms. Is yours? Thanks to Gravity Forms for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Apr 2018 18:36:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: An Update to My Gutenberg Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79564\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wptavern.com/an-update-to-my-gutenberg-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2508:\"<p>Not long after I published <a href=\"https://wptavern.com/my-gutenberg-experience-thus-far\">my experience with Gutenberg</a>, developers reached out to me to work on some of the issues I mentioned. Riad Benguella <a href=\"https://github.com/WordPress/gutenberg/pull/5902\">figured out</a> why meta boxes were not collapsing or expanding.</p>\n\n<p>It turns out that some meta boxes depend on the post script which has a side effect of calling the window.postboxes.add_postbox_toggles( postType ) twice, causing meta boxes to break.</p>\n\n<p>Gutenberg 2.6 <a href=\"https://make.wordpress.org/core/2018/04/05/whats-new-in-gutenberg-5th-april/\">released earlier this week</a>, fixes the issue and all meta boxes function properly again. This also fixes the issue I had with the Telegram for WordPress plugin. <br /></p>\n\n<p><a href=\"https://wordpress.org/plugins/public-post-preview/\">Public Post Preview</a> still doesn&#8217;t work in Gutenberg but the plugin&#8217;s developer, Dominik Schilling, shared some experiments he has conducted with adding support for Gutenberg on Twitter.</p>\n\n\n    <blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Can\'t wait for seeing Gutenberg in WordPress core. So many new possibilities. Even for Public Post Preview (<a href=\"https://t.co/Xsw9hugxKT\">https://t.co/Xsw9hugxKT</a>). With just a few lines I was able to create this: <a href=\"https://t.co/fxyuBIMPOl\">pic.twitter.com/fxyuBIMPOl</a></p>&mdash; Dominik Schilling <img src=\"https://s.w.org/images/core/emoji/2.4/72x72/1f30a.png\" alt=\"?\" class=\"wp-smiley\" /> (@ocean90) <a href=\"https://twitter.com/ocean90/status/980420608822562816?ref_src=twsrc%5Etfw\">April 1, 2018</a></blockquote>\n\n\n<p>In the preview video, you can see Public Post Preview&#8217;s options added to the sidebar and in addition to generating a link, you can choose when that URL expires which is better than what&#8217;s currently available in the plugin.</p>\n\n<p>I mentioned how Tags would sometimes disappear and there overall behavior was inconsistent. This <a href=\"https://github.com/WordPress/gutenberg/pull/5913\">pull request </a>that made it into Gutenberg 2.6, fixes the issue by only including the term in the Tag selector if it&#8217;s known.</p>\n\n<p>Although I&#8217;m still bummed that certain plugins are not yet compatible with Gutenberg, I&#8217;m pretty happy that two of the major pain points I experienced have been fixed. Thanks to Riad, Tammie Lister, and others for helping to solve these problems so quickly. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Apr 2018 21:29:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: A WordCamp for Organizers Is in the Planning Stages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79513\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/a-wordcamp-for-organizers-is-in-the-planning-stages\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2684:\"<p>Last year, Drew Jaynes and Carol Stambaugh <a href=\"https://make.wordpress.org/community/2017/08/16/proposed-event-wordcamp-for-wordcamp-organizers/\">proposed</a> a new WordCamp event geared towards organizers to the WordPress Community Team. After fleshing out the details and discussing the idea over the course of seven months, the duo <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">has announced</a> that a WordCamp for Organizers is officially on the table.</p>\n\n<p>The goal of the event is to provide an opportunity for meetup and WordPress event organizers to share their experience with others in the community. The plan is to host a one-day event a day or two before <a href=\"https://2018.us.wordcamp.org/\">WordCamp US</a> in Nashville, TN, later this year.</p>\n\n<p>&#8220;The idea for WordCamp for Organizers – what some of us affectionately refer to as &#8216;dotOrganize&#8217; – was really borne out of many conversations I’ve had over the years with others in the WordPress community lamenting the lack of a ready knowledge sharing opportunity between event organizers,&#8221; Jaynes said.</p>\n\n<p>&#8220;One common thread seemed to be the idea of common lessons learned, and how awesome it would be to just have an event for organizers to get together and swap tips and tricks. </p>\n\n<p>&#8220;We’re all here organizing the same community, maybe we should get together and trade notes! And so we now have a new topic-based WordCamp just for organizers. </p>\n\n<p>&#8220;It’s kind of meta – organizing a WordCamp for Organizers, but I really feel like this could be a boon for anybody currently organizing or looking to start organizing in WordPress. Exciting!&#8221;</p>\n\n<p>Some of the session topics that could be presented on include:</p>\n\n<ul>\n    <li>Spreading the word about your community events</li>\n    <li>Tips for wrangling speakers, volunteers, and sponsors</li>\n    <li>Conflict resolution among organizing teams</li>\n    <li>How to respond to a code of conduct issue</li>\n    <li>Finding and using official organizing tools and resources<br /></li>\n</ul>\n\n<p>The team is seeking volunteers who can spend 2-4 hours per week to help organize the event. Although it&#8217;s focused on organizers, those who have attended many conferences, including WordCamps, with little event organizing experience, are encouraged to join the team.</p>\n\n<p>If you&#8217;re interested in volunteering, please leave a comment on the <a href=\"https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/\">official announcement post</a>. </p>\n\n<p><br /></p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Apr 2018 00:22:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Jetpack 6.0 Takes Steps Towards GDPR Compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=79459\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1148:\"<p>Jetpack 6.0 <a href=\"https://jetpack.com/2018/04/03/jetpack-6-0/\">is available</a> for upgrade. It comes with improvements to the social media icons widget, enhanced brute force protection, and better compatibility between WooCommerce and Jetpack.</p>\n\n<p>Its headlining features though are privacy related as the <a href=\"https://www.eugdpr.org/\">General Data Protection Regulation</a> (GDPR) is set to go into effect May 25th. In 6.0, Jetpack has a dedicated privacy settings page that links to privacy documents and includes a way to opt-out of activity tracking.</p>\n\n<p>These settings can be accessed by clicking the Privacy link at the bottom of the Jetpack Dashboard page. </p>\n\n<img />\n    Jetpack 6.0 Privacy Settings\n\n\n<p>The &#x27;<a href=\"https://jetpack.com/support/what-data-does-jetpack-sync/\">What Data Does Jetpack Sync</a>&#x27; page outlines what data is used, how it&#x27;s used, the relationship it has with the WordPress mobile apps, and provides an inside look at how Jetpack works.</p>\n\n<p>These are the first steps towards GDPR compliance with more updates planned before the regulation goes into effect next month. </p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Apr 2018 23:20:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 24 May 2018 19:04:49 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 24 May 2018 19:00:29 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911010210\";}','no'),(134,'_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1527231896','no'),(135,'_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9','1527188696','no'),(136,'_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000','1527231896','no'),(137,'_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ru.wordpress.org/news/2018/05/wordcamp-stpetersburg2018/\'>Конференция WordCamp Санкт-Петербург 2018</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/why-sites-didnt-automatically-update-to-wordpress-4-9-6\'>WPTavern: Why Sites Didn’t Automatically Update to WordPress 4.9.6</a></li><li><a class=\'rsswidget\' href=\'https://heropress.com/accessibility-where-it-matters/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=accessibility-where-it-matters\'>HeroPress: Accessibility Where It Matters</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/marcel-schmitz-releases-unofficial-wordcamp-for-ios-app\'>WPTavern: Marcel Schmitz Releases Unofficial WordCamp for iOS App</a></li></ul></div>','no'),(147,'theme_mods_twentyfifteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527189091;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}','yes'),(148,'current_theme','NewMusic','yes'),(149,'theme_switched','','yes'),(150,'theme_switched_via_customizer','','yes'),(151,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes'),(154,'eventblog_logo','http://dima/wp-content/themes/EventBlog/images/logo.png','yes'),(155,'eventblog_popular_posts','true','yes'),(156,'eventblog_video','V7P6E69aihY','yes'),(157,'eventblog_head','','yes'),(158,'eventblog_footer','','yes'),(159,'eventblog_featured_posts','true','yes'),(160,'eventblog_featured_posts_category','0','yes'),(161,'eventblog_twitter_widget','true','yes'),(162,'eventblog_facebook_widget','true','yes'),(163,'eventblog_socialnetworks','true','yes'),(164,'eventblog_rss','http://feeds.feedburner.com/themepixcom','yes'),(165,'eventblog_facebook','http://facebook.com/ThemePix','yes'),(166,'eventblog_twitter','http://twitter.com/ThemePix','yes'),(167,'eventblog_googleplus','https://plus.google.com/105902409914354750342/','yes'),(168,'eventblog_linkedin','http://linkedin.com/yourprofile','yes'),(169,'eventblog_youtube','http://youtube.com/yourprofile','yes'),(170,'eventblog_email','mailto:contact@themepix.com','yes'),(171,'eventblog_ad_sidebar_top','<a href=\\\"http://themepix.com\\\"><img class=\\\"sidebaradbox\\\" src=\\\"http://themepix.com/pix/uploads/ad-125.png\\\" style=\\\"border: 0;\\\" alt=\\\"Advertise Here\\\" /></a> \r\n<a href=\\\"http://themepix.com\\\"><img class=\\\"sidebaradbox\\\" src=\\\"http://themepix.com/pix/uploads/ad2-125.png\\\" style=\\\"border: 0;\\\" alt=\\\"Advertise Here\\\" /></a>','yes'),(172,'eventblog_ad_sidebar1_bottom','<a href=\\\"http://themepix.com\\\"><img src=\\\"http://themepix.com/pix/uploads/ad-160x600.png\\\" style=\\\"border: 0;\\\" alt=\\\"Advertise Here\\\" /></a>','yes'),(173,'eventblog_ad_sidebar2_bottom','<a href=\\\"http://themepix.com\\\"><img src=\\\"http://themepix.com/pix/uploads/ad-250.png\\\" style=\\\"border: 0;\\\" alt=\\\"Advertise Here\\\" /></a>','yes'),(174,'eventblog_options','yes','yes'),(175,'widget_themater_tweets','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(176,'widget_themater_facebook','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(177,'_is_widget_active_','1','yes'),(178,'theme_mods_EventBlog','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527189546;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}','yes'),(179,'theme_switch_menu_locations','','yes'),(180,'customize_stashed_theme_mods','a:0:{}','no'),(182,'_site_transient_timeout_available_translations','1527200271','no'),(183,'_site_transient_available_translations','a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 07:02:30\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-25 15:24:22\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 03:44:52\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 04:53:33\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 13:12:01\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 10:52:38\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-20 11:12:07\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 18:14:55\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 17:56:21\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.6/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 17:56:03\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 18:15:25\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.6/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-05 12:41:56\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 00:27:45\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 23:18:17\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 19:01:38\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 15:47:52\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 08:45:22\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-15 21:49:04\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 17:29:36\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-02-27 05:22:44\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-18 03:09:27\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-30 07:44:25\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-16 10:29:40\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 21:23:19\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 09:43:24\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-17 12:42:52\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-02-14 06:16:04\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 03:43:25\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 15:45:31\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 22:45:22\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-13 11:16:25\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 18:40:01\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 11:38:59\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.6/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-08 06:01:48\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 22:24:38\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-18 09:30:34\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 08:05:19\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 19:04:05\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 14:40:52\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-23 12:42:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-23 14:20:12\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-22 09:27:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 06:05:40\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 19:42:47\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 11:43:38\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 16:25:40\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 14:48:16\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-22 17:23:37\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-25 10:30:04\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-17 22:21:34\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-21 15:07:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 21:51:10\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-06 20:34:06\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-13 08:24:25\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 10:37:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-11 05:09:29\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}','no'),(185,'newmusic_logo','http://dima/wp-content/themes/NewMusic/images/logo.png','yes'),(186,'newmusic_popular_posts','true','yes'),(187,'newmusic_video','V7P6E69aihY','yes'),(188,'newmusic_head','','yes'),(189,'newmusic_footer','','yes'),(190,'newmusic_featured_posts','true','yes'),(191,'newmusic_featured_posts_category','0','yes'),(192,'newmusic_facebook_widget','true','yes'),(193,'newmusic_socialnetworks','true','yes'),(194,'newmusic_rss','http://feeds.feedburner.com/themepixcom','yes'),(195,'newmusic_facebook','http://facebook.com/ThemePix','yes'),(196,'newmusic_twitter','http://twitter.com/ThemePix','yes'),(197,'newmusic_googleplus','https://plus.google.com/105902409914354750342/','yes'),(198,'newmusic_linkedin','http://linkedin.com/yourprofile','yes'),(199,'newmusic_youtube','http://youtube.com/yourprofile','yes'),(200,'newmusic_email','contact@themepix.com','yes'),(201,'newmusic_ad_sidebar_top','<a href=\"http://themepix.com\"><img class=\"sidebaradbox\" src=\"http://themepix.com/pix/uploads/ad-125.png\" style=\"border: 0;\" alt=\"Advertise Here\" /></a> \n<a href=\"http://themepix.com\"><img class=\"sidebaradbox\" src=\"http://themepix.com/pix/uploads/ad2-125.png\" style=\"border: 0;\" alt=\"Advertise Here\" /></a>','yes'),(202,'newmusic_ad_sidebar1_bottom','<a href=\"http://themepix.com\"><img src=\"http://themepix.com/pix/uploads/ad-250.png\" style=\"border: 0;\" alt=\"Advertise Here\" /></a>','yes'),(203,'newmusic_options','yes','yes'),(204,'theme_mods_NewMusic','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),(205,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527189555;s:7:\"checked\";a:5:{s:9:\"EventBlog\";s:3:\"3.2\";s:8:\"NewMusic\";s:5:\"3.3.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
/*!40000 ALTER TABLE `dym_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_postmeta`
--

DROP TABLE IF EXISTS `dym_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_postmeta`
--

LOCK TABLES `dym_postmeta` WRITE;
/*!40000 ALTER TABLE `dym_postmeta` DISABLE KEYS */;
INSERT INTO `dym_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,5,'_wp_attached_file','2018/05/espresso.jpg'),(4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/05/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(5,5,'_starter_content_theme','twentyseventeen'),(7,6,'_wp_attached_file','2018/05/sandwich.jpg'),(8,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/05/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(9,6,'_starter_content_theme','twentyseventeen'),(11,7,'_wp_attached_file','2018/05/coffee.jpg'),(12,7,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/05/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(13,7,'_starter_content_theme','twentyseventeen'),(16,8,'_customize_changeset_uuid','c9a591aa-c329-4b94-a2d0-5e05f48d6e69'),(17,9,'_thumbnail_id','6'),(19,9,'_customize_changeset_uuid','c9a591aa-c329-4b94-a2d0-5e05f48d6e69'),(20,10,'_thumbnail_id','5'),(22,10,'_customize_changeset_uuid','c9a591aa-c329-4b94-a2d0-5e05f48d6e69'),(23,11,'_thumbnail_id','7'),(25,11,'_customize_changeset_uuid','c9a591aa-c329-4b94-a2d0-5e05f48d6e69'),(26,12,'_thumbnail_id','5'),(28,12,'_customize_changeset_uuid','c9a591aa-c329-4b94-a2d0-5e05f48d6e69'),(29,13,'_edit_lock','1527188989:1'),(30,19,'_menu_item_type','custom'),(31,19,'_menu_item_menu_item_parent','0'),(32,19,'_menu_item_object_id','19'),(33,19,'_menu_item_object','custom'),(34,19,'_menu_item_target',''),(35,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(36,19,'_menu_item_xfn',''),(37,19,'_menu_item_url','http://dima/'),(38,20,'_menu_item_type','post_type'),(39,20,'_menu_item_menu_item_parent','0'),(40,20,'_menu_item_object_id','9'),(41,20,'_menu_item_object','page'),(42,20,'_menu_item_target',''),(43,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(44,20,'_menu_item_xfn',''),(45,20,'_menu_item_url',''),(46,21,'_menu_item_type','post_type'),(47,21,'_menu_item_menu_item_parent','0'),(48,21,'_menu_item_object_id','11'),(49,21,'_menu_item_object','page'),(50,21,'_menu_item_target',''),(51,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(52,21,'_menu_item_xfn',''),(53,21,'_menu_item_url',''),(54,22,'_menu_item_type','post_type'),(55,22,'_menu_item_menu_item_parent','0'),(56,22,'_menu_item_object_id','10'),(57,22,'_menu_item_object','page'),(58,22,'_menu_item_target',''),(59,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(60,22,'_menu_item_xfn',''),(61,22,'_menu_item_url',''),(62,23,'_menu_item_type','custom'),(63,23,'_menu_item_menu_item_parent','0'),(64,23,'_menu_item_object_id','23'),(65,23,'_menu_item_object','custom'),(66,23,'_menu_item_target',''),(67,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(68,23,'_menu_item_xfn',''),(69,23,'_menu_item_url','https://www.yelp.com'),(70,24,'_menu_item_type','custom'),(71,24,'_menu_item_menu_item_parent','0'),(72,24,'_menu_item_object_id','24'),(73,24,'_menu_item_object','custom'),(74,24,'_menu_item_target',''),(75,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(76,24,'_menu_item_xfn',''),(77,24,'_menu_item_url','https://www.facebook.com/wordpress'),(78,25,'_menu_item_type','custom'),(79,25,'_menu_item_menu_item_parent','0'),(80,25,'_menu_item_object_id','25'),(83,27,'_wp_trash_meta_status','publish'),(84,27,'_wp_trash_meta_time','1527189185'),(87,29,'_wp_trash_meta_status','publish'),(88,29,'_wp_trash_meta_time','1527189546');
/*!40000 ALTER TABLE `dym_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_posts`
--

DROP TABLE IF EXISTS `dym_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_posts`
--

LOCK TABLES `dym_posts` WRITE;
/*!40000 ALTER TABLE `dym_posts` DISABLE KEYS */;
INSERT INTO `dym_posts` VALUES (1,1,'2018-05-24 22:04:21','2018-05-24 19:04:21','Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!','Привет, мир!','','publish','open','open','','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80','','','2018-05-24 22:04:21','2018-05-24 19:04:21','',0,'http://dima/?p=1',0,'post','',1),(2,1,'2018-05-24 22:04:21','2018-05-24 19:04:21','Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://dima/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!','Пример страницы','','publish','closed','open','','sample-page','','','2018-05-24 22:04:21','2018-05-24 19:04:21','',0,'http://dima/?page_id=2',0,'page','',0),(3,1,'2018-05-24 22:04:21','2018-05-24 19:04:21','<h2>Кто мы</h2><p>Наш адрес сайта: http://dima.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать ваши данные, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взвимодействия если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>','Политика конфиденциальности','','draft','closed','open','','privacy-policy','','','2018-05-24 22:04:21','2018-05-24 19:04:21','',0,'http://dima/?page_id=3',0,'page','',0),(4,1,'2018-05-24 22:04:48','0000-00-00 00:00:00','','Черновик','','auto-draft','open','open','','','','','2018-05-24 22:04:48','0000-00-00 00:00:00','',0,'http://dima/?p=4',0,'post','',0),(5,1,'2018-05-24 22:06:15','2018-05-24 19:06:15','','Эспрессо','','inherit','open','closed','','%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be','','','2018-05-24 22:06:15','2018-05-24 19:06:15','',0,'http://dima/wp-content/uploads/2018/05/espresso.jpg',0,'attachment','image/jpeg',0),(6,1,'2018-05-24 22:06:15','2018-05-24 19:06:15','','Сэндвич','','inherit','open','closed','','%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87','','','2018-05-24 22:06:15','2018-05-24 19:06:15','',0,'http://dima/wp-content/uploads/2018/05/sandwich.jpg',0,'attachment','image/jpeg',0),(7,1,'2018-05-24 22:06:15','2018-05-24 19:06:15','','Кофе','','inherit','open','closed','','%d0%ba%d0%be%d1%84%d0%b5','','','2018-05-24 22:06:15','2018-05-24 19:06:15','',0,'http://dima/wp-content/uploads/2018/05/coffee.jpg',0,'attachment','image/jpeg',0),(8,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.','Главная страница','','publish','closed','closed','','%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',0,'http://dima/?page_id=8',0,'page','',0),(9,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.','О нас','','publish','closed','closed','','%d0%be-%d0%bd%d0%b0%d1%81','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',0,'http://dima/?page_id=9',0,'page','',0),(10,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.','Контакты','','publish','closed','closed','','%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',0,'http://dima/?page_id=10',0,'page','',0),(11,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','','Блог','','publish','closed','closed','','%d0%b1%d0%bb%d0%be%d0%b3','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',0,'http://dima/?page_id=11',0,'page','',0),(12,1,'2018-05-24 22:06:17','2018-05-24 19:06:17','Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.','Раздел главной страницы','','publish','closed','closed','','%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b','','','2018-05-24 22:06:17','2018-05-24 19:06:17','',0,'http://dima/?page_id=12',0,'page','',0),(13,1,'2018-05-24 22:06:14','2018-05-24 19:06:14','{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"38b8ce3eff06412f9c095fa2014e22d8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5d804bf01cccfff06bfd4c048a5adfcc\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a63a0b2590f73c581e8cd5974e798919\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"38b8ce3eff06412f9c095fa2014e22d8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a63a0b2590f73c581e8cd5974e798919\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5d804bf01cccfff06bfd4c048a5adfcc\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://dima/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:06:14\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:10\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:05:36\"\n    }\n}','','','publish','closed','closed','','c9a591aa-c329-4b94-a2d0-5e05f48d6e69','','','2018-05-24 22:06:14','2018-05-24 19:06:14','',0,'http://dima/?p=13',0,'customize_changeset','',0),(14,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.','Главная страница','','inherit','closed','closed','','8-revision-v1','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',8,'http://dima/2018/05/24/8-revision-v1/',0,'revision','',0),(15,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.','О нас','','inherit','closed','closed','','9-revision-v1','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',9,'http://dima/2018/05/24/9-revision-v1/',0,'revision','',0),(16,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.','Контакты','','inherit','closed','closed','','10-revision-v1','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',10,'http://dima/2018/05/24/10-revision-v1/',0,'revision','',0),(17,1,'2018-05-24 22:06:16','2018-05-24 19:06:16','','Блог','','inherit','closed','closed','','11-revision-v1','','','2018-05-24 22:06:16','2018-05-24 19:06:16','',11,'http://dima/2018/05/24/11-revision-v1/',0,'revision','',0),(18,1,'2018-05-24 22:06:17','2018-05-24 19:06:17','Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.','Раздел главной страницы','','inherit','closed','closed','','12-revision-v1','','','2018-05-24 22:06:17','2018-05-24 19:06:17','',12,'http://dima/2018/05/24/12-revision-v1/',0,'revision','',0),(19,1,'2018-05-24 22:06:18','2018-05-24 19:06:18','','Главная страница','','publish','closed','closed','','%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0','','','2018-05-24 22:06:18','2018-05-24 19:06:18','',0,'http://dima/2018/05/24/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0/',0,'nav_menu_item','',0),(20,1,'2018-05-24 22:06:19','2018-05-24 19:06:19',' ','','','publish','closed','closed','','20','','','2018-05-24 22:06:19','2018-05-24 19:06:19','',0,'http://dima/2018/05/24/20/',1,'nav_menu_item','',0),(21,1,'2018-05-24 22:06:20','2018-05-24 19:06:20',' ','','','publish','closed','closed','','21','','','2018-05-24 22:06:20','2018-05-24 19:06:20','',0,'http://dima/2018/05/24/21/',2,'nav_menu_item','',0),(22,1,'2018-05-24 22:06:20','2018-05-24 19:06:20',' ','','','publish','closed','closed','','22','','','2018-05-24 22:06:20','2018-05-24 19:06:20','',0,'http://dima/2018/05/24/22/',3,'nav_menu_item','',0),(23,1,'2018-05-24 22:06:27','2018-05-24 19:06:27','','Yelp','','publish','closed','closed','','yelp','','','2018-05-24 22:06:27','2018-05-24 19:06:27','',0,'http://dima/2018/05/24/yelp/',0,'nav_menu_item','',0),(24,1,'2018-05-24 22:06:38','2018-05-24 19:06:38','','Facebook','','publish','closed','closed','','facebook','','','2018-05-24 22:06:38','2018-05-24 19:06:38','',0,'http://dima/2018/05/24/facebook/',1,'nav_menu_item','',0),(25,1,'2018-05-24 22:06:40','2018-05-24 19:06:40','','Twitter','','publish','closed','closed','','twitter','','','2018-05-24 22:06:40','2018-05-24 19:06:40','',0,'http://dima/2018/05/24/twitter/',2,'nav_menu_item','',0),(27,1,'2018-05-24 22:13:04','2018-05-24 19:13:04','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:13:04\"\n    }\n}','','','trash','closed','closed','','718daef9-c249-469a-bfbf-4b22510891d9','','','2018-05-24 22:13:04','2018-05-24 19:13:04','',0,'http://dima/2018/05/24/718daef9-c249-469a-bfbf-4b22510891d9/',0,'customize_changeset','',0),(29,1,'2018-05-24 22:19:06','2018-05-24 19:19:06','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"text-2\",\n                \"search-3\",\n                \"text-3\"\n            ],\n            \"sidebar-2\": [\n                \"text-4\"\n            ],\n            \"sidebar-3\": [\n                \"text-5\",\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-24 19:19:06\"\n    }\n}','','','trash','closed','closed','','5f5fe667-28c6-4d03-a606-1dd01634ab13','','','2018-05-24 22:19:06','2018-05-24 19:19:06','',0,'http://dima/2018/05/24/5f5fe667-28c6-4d03-a606-1dd01634ab13/',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `dym_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_term_relationships`
--

DROP TABLE IF EXISTS `dym_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_term_relationships`
--

LOCK TABLES `dym_term_relationships` WRITE;
/*!40000 ALTER TABLE `dym_term_relationships` DISABLE KEYS */;
INSERT INTO `dym_term_relationships` VALUES (1,1,0),(19,2,0),(20,2,0),(21,2,0),(22,2,0),(23,3,0),(24,3,0),(25,3,0);
/*!40000 ALTER TABLE `dym_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_term_taxonomy`
--

DROP TABLE IF EXISTS `dym_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_term_taxonomy`
--

LOCK TABLES `dym_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `dym_term_taxonomy` DISABLE KEYS */;
INSERT INTO `dym_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,4),(3,3,'nav_menu','',0,3);
/*!40000 ALTER TABLE `dym_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_termmeta`
--

DROP TABLE IF EXISTS `dym_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_termmeta`
--

LOCK TABLES `dym_termmeta` WRITE;
/*!40000 ALTER TABLE `dym_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dym_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_terms`
--

DROP TABLE IF EXISTS `dym_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_terms`
--

LOCK TABLES `dym_terms` WRITE;
/*!40000 ALTER TABLE `dym_terms` DISABLE KEYS */;
INSERT INTO `dym_terms` VALUES (1,'Без рубрики','%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8',0),(2,'Верхнее меню','%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e',0),(3,'Меню социальных ссылок','%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba',0);
/*!40000 ALTER TABLE `dym_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_usermeta`
--

DROP TABLE IF EXISTS `dym_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_usermeta`
--

LOCK TABLES `dym_usermeta` WRITE;
/*!40000 ALTER TABLE `dym_usermeta` DISABLE KEYS */;
INSERT INTO `dym_usermeta` VALUES (1,1,'nickname','ALENA'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'dym_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'dym_user_level','10'),(14,1,'dismissed_wp_pointers','wp496_privacy,theme_editor_notice'),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"782f5a970ed3648f303e21b6055c9d4bd9fbe20e4d2449b7a96b2df6b40cde38\";a:4:{s:10:\"expiration\";i:1527361486;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:65:\"Mozilla/5.0 (Windows NT 6.1; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1527188686;}}'),(17,1,'dym_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),(19,1,'nav_menu_recently_edited','2'),(20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
/*!40000 ALTER TABLE `dym_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dym_users`
--

DROP TABLE IF EXISTS `dym_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dym_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dym_users`
--

LOCK TABLES `dym_users` WRITE;
/*!40000 ALTER TABLE `dym_users` DISABLE KEYS */;
INSERT INTO `dym_users` VALUES (1,'ALENA','$P$Bw3VfSCviPSWyZzc1YDnattw2tyIZR1','alena','dashkoalena@gmail.com','','2018-05-24 19:04:20','',0,'ALENA');
/*!40000 ALTER TABLE `dym_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_people',
  `id_typeeducation` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице dir_typeeducation',
  `educationplace` varchar(255) NOT NULL COMMENT 'Место обучения',
  `yearbegin` varchar(45) NOT NULL COMMENT 'Год начала обучения',
  `yearend` varchar(45) NOT NULL COMMENT 'Год окончания обучения',
  `spec` varchar(255) DEFAULT NULL COMMENT 'Специальность по диплому',
  `id_grade` int(11) DEFAULT NULL COMMENT 'Идентификатор записи в таблице dir_grade',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`),
  CONSTRAINT `id_people` FOREIGN KEY (`id_people`) REFERENCES `dir_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Таблица с указанием образования каждого члена общины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (10,30,4,'%D0%94%D0%93%D0%A2%D0%A3','2008','2013','%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%81%D1%82',2);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_table` int(11) NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT 'Column',
  `datatype` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='Поля таблиц';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,1,'surname','text','Фамилия'),(2,1,'name','text','Имя'),(3,1,'lastname','text','Отчество'),(4,1,'sex','select','Пол'),(5,1,'eurname','text','Еврейское имя'),(6,1,'inn','text','ИНН'),(7,1,'seriapass','text','Серия пасспорта'),(8,1,'numpass','text','Номер пасспорта'),(9,1,'datebirth','text','Дата рождения'),(10,1,'eurdatebirth','text','Дата рождения еврейская'),(11,1,'telephone','text','Телефон'),(17,1,'mobtelephone','text','Мобильный телефон'),(19,1,'email','text','E-mail'),(20,2,'name_country_ua','text','Назв. страны на укр.'),(21,2,'name_country_ru','text','Назв. страны на рус.'),(22,1,'id','int','Код'),(23,2,'id','int','Код'),(24,1,'datedeath','text','Дата смерти'),(25,1,'eurdatedeath','text','Еврейская дата смерти'),(27,5,'name_city_ua','text','Название города на укр.яз.'),(28,5,'name_city_ru','text','Название города на рус.яз.'),(29,5,'id','int','Код'),(30,6,'name_street_ua','text','Название улицы на укр.яз.'),(31,6,'name_street_ru','text','Название улицы на рус.яз.'),(32,6,'id','int','Код'),(33,3,'name_obl_ua','text','Название области на укр.яз.'),(34,3,'name_obl_ru','text','Название области на рус.яз.'),(35,3,'short_name_ua','text','Сокращенное название области на укр.яз.'),(36,3,'short_name_ru','text','Сокращенное название области на рус.яз.'),(37,3,'id','int','Код'),(38,7,'name_place_ua','text','Название учебного заведения на укр.яз.'),(39,7,'name_place_ru','text','Название учебного заведения на рус.яз.'),(40,7,'short_name_ru','text','Сокращенное название учебного заведения на рус.яз.'),(41,7,'short_name_ua','text','Сокращенное название учебного заведения на укр.яз.'),(42,7,'id','int','Код'),(43,8,'name_grade_ua','text','Название ученой степени на рус.яз.'),(44,8,'name_grade_ru','text','Название ученой степени на укр.як.'),(45,8,'id','int','Код'),(46,9,'name_rayon_ua','text','Название района на укр.яз.'),(47,9,'name_rayon_ru','text','Название района на рус.яз.'),(48,9,'id','int','Код'),(49,10,'name_social_ua','text','Социальное положение (укр.яз.)'),(50,10,'name_social_ru','text','Социальное положение (рус.яз.)'),(51,10,'id','int','Код'),(52,12,'name_type_address','text','Вид адреса'),(53,12,'id','int','Код'),(54,13,'name_distr_ua','text','Название вида населенного пункта на укр.яз.'),(55,13,'name_distr_ru','text','Название вида населенного пункта на рус.яз.'),(56,13,'short_name_ua','text','Сокращенное название на укр.яз.'),(57,13,'short_name_ru','text','Сокращенное название на укр.яз.'),(58,13,'id','int','Код'),(59,14,'name_type_rel_ua','text','Степень родства (укр.яз.)'),(60,14,'name_type_rel_ru','text','Степень родства (рус.яз.)'),(61,14,'id','int','Код'),(62,15,'name_type_street_ua','text','Вид улицы (укр.яз.)'),(63,15,'name_type_street_ru','text','Вид улицы (рус.яз.)'),(64,15,'short_name_ua','text','Вид улицы сокращенно (укр.яз.)'),(65,15,'short_name_ru','text','Вид улицы сокращенно (рус.яз.)'),(66,15,'id','int','Код'),(67,16,'name','text','Образование'),(68,16,'id','int','Код'),(69,17,'name_det','text','Название детали'),(70,17,'type_value','text','Тип значения'),(71,17,'id','int','Код'),(72,1,'eurbymot','text','Еврей по матери'),(73,1,'eurbyfat','text','Еврей по отцу'),(74,1,'eurbygm','text','Еврей по бабушке(по метринской линии)'),(75,1,'eurbygf','text','Еврей по дедушке(по материнской линии)'),(76,1,'accepting','text','Подтверждение'),(77,1,'eurbyfgm','text','Еврей по бабушке(по отцовской линии)'),(78,1,'eurbyfgf','text','Еврей по дедушке(по отцовской линии)'),(79,1,'dt_input','datetime','Дата ввода записи '),(80,1,'daily_pray','text','Ежедневные молитвы'),(81,1,'invalid','text','Инвалид'),(82,1,'alone','text','Одинокий'),(83,1,'celebrates','text','Праздничные мероприятия'),(84,1,'celeb_pray','text','Праздничные молитвы'),(85,1,'sat_pray','text','Субботние молитвы'),(86,1,'work_place','text','Место работы'),(87,1,'ed_place','text','Место учебы'),(88,1,'no_letters','text','Не печатать письма');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_help` varchar(100) NOT NULL COMMENT 'Название вида  помощи',
  `description_help` varchar(1000) DEFAULT NULL COMMENT 'Описание вида помощи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Таблица видов партнерских программ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (6,'Медикаменты','Закупка и выдача медикаментов на основании диагноза и справки о доходах. Необходимые документы для участия в программе: - справка о доходах с места работы или службы занятости; - выписка из медицинской карты с указанием диагноза и необходимых медикаментов на месяц.'),(8,'Материальная помощь','Разовая и регулярная материальная помощь членам общины, на основании заявки на получение материальной помощи.'),(9,'Продуктовые наборы','Продуктовые наборы к праздникам'),(10,'STARS(обычный)','Программа STARS');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_prog`
--

DROP TABLE IF EXISTS `help_prog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_prog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_prog` varchar(100) NOT NULL COMMENT 'Название программы',
  `description_prog` varchar(255) NOT NULL COMMENT 'Описание программы',
  `id_help` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице help',
  PRIMARY KEY (`id`),
  KEY `id_help_idx` (`id_help`),
  CONSTRAINT `id_help` FOREIGN KEY (`id_help`) REFERENCES `help` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Таблица партнерских программ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_prog`
--

LOCK TABLES `help_prog` WRITE;
/*!40000 ALTER TABLE `help_prog` DISABLE KEYS */;
INSERT INTO `help_prog` VALUES (11,'Разовая помощь','Помощь предоставляется один раз при наличии предварительной заявки',8),(13,'Регулярная помощь','Регулярная выдача суммы денег по заявке',8),(16,'Медикаменты для лечения ГРВИ и сезонных простуд','Базовый набор медикаментов для лечения протуд и ГРВИ',6),(17,'Медикаменты для алергетиков ','Базовый набор для лечения сезонных и постоянных аллергий',6),(18,'Медикаменты терапевтического действия','Профилактические и имуноподдерживающие препараты',6),(19,'Маца и сок','шгшгш',9);
/*!40000 ALTER TABLE `help_prog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_prog_pos`
--

DROP TABLE IF EXISTS `help_prog_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_prog_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_help_prog` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице help_prog',
  `name_pos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_help_prog_idx` (`id_help_prog`),
  CONSTRAINT `id_help_prog` FOREIGN KEY (`id_help_prog`) REFERENCES `help_prog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=861 DEFAULT CHARSET=utf8 COMMENT='Позиции, которые включает в себя каждая партнерская программа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_prog_pos`
--

LOCK TABLES `help_prog_pos` WRITE;
/*!40000 ALTER TABLE `help_prog_pos` DISABLE KEYS */;
INSERT INTO `help_prog_pos` VALUES (829,11,'100 грн'),(830,11,'1000 грн'),(831,11,'500 грн'),(832,11,'1500 грн'),(833,13,'1300 грн'),(834,13,'1000 грн'),(835,11,'5000 грн'),(836,17,'Диазолин'),(837,17,'Едем'),(838,17,'Цетрин'),(848,16,'Афлубин'),(849,16,'Амизон'),(850,16,'Парацетамол'),(851,16,'Назол'),(854,18,'градусники'),(855,18,'пипетки'),(856,18,'танометры'),(857,18,'Амизон'),(858,18,'Анаферон'),(859,18,'Лавомакс'),(860,18,'Валидол');
/*!40000 ALTER TABLE `help_prog_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_analytic_oper`
--

DROP TABLE IF EXISTS `kt_analytic_oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_analytic_oper` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_oper` int(11) NOT NULL COMMENT 'Идентификатор операции',
  `id_analytic_pos` int(11) NOT NULL COMMENT 'Идентификатор позиции аналитики',
  `count` float NOT NULL COMMENT 'Колличество по аналитике',
  PRIMARY KEY (`id`),
  KEY `oper_idx` (`id_oper`),
  CONSTRAINT `oper` FOREIGN KEY (`id_oper`) REFERENCES `kt_stock_oper` (`id_stock_oper`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Аналитика оп операциям';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_analytic_oper`
--

LOCK TABLES `kt_analytic_oper` WRITE;
/*!40000 ALTER TABLE `kt_analytic_oper` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_analytic_oper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_calcs`
--

DROP TABLE IF EXISTS `kt_calcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_calcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `date_calc` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата калькуляции',
  `has_request` int(11) DEFAULT NULL COMMENT 'Признак наличия сформированного требования на продукты по данной калькуляции',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Калькуляции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_calcs`
--

LOCK TABLES `kt_calcs` WRITE;
/*!40000 ALTER TABLE `kt_calcs` DISABLE KEYS */;
INSERT INTO `kt_calcs` VALUES (10,'2018-05-31 21:00:00',13),(11,'2018-08-01 21:00:00',NULL);
/*!40000 ALTER TABLE `kt_calcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_calcs_orgs`
--

DROP TABLE IF EXISTS `kt_calcs_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_calcs_orgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_calc` int(11) NOT NULL COMMENT 'Идентификатор калькуляции',
  `id_org` int(11) NOT NULL COMMENT 'Идентификатор организации',
  `id_calc_rec` int(11) DEFAULT NULL COMMENT 'Идентификатор блюда',
  PRIMARY KEY (`id`),
  KEY `id_calc` (`id_calc`),
  KEY `id_calc_rec_idx` (`id_calc_rec`),
  CONSTRAINT `id_calc_rec` FOREIGN KEY (`id_calc_rec`) REFERENCES `kt_calcs_receipts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Организации для калькуляций';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_calcs_orgs`
--

LOCK TABLES `kt_calcs_orgs` WRITE;
/*!40000 ALTER TABLE `kt_calcs_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_calcs_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_calcs_rec_prods`
--

DROP TABLE IF EXISTS `kt_calcs_rec_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_calcs_rec_prods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_calc` int(11) NOT NULL COMMENT 'Идентификатор калькуляции',
  `id_calc_receipt` int(11) NOT NULL COMMENT 'Идентификатор рецепта по калькуляции',
  `id_prod` int(11) NOT NULL COMMENT 'Идентификатор продукта',
  `brutto_1` float DEFAULT NULL COMMENT 'Брутто 1',
  `netto_1` float DEFAULT NULL COMMENT 'Нетто 1',
  `brutto_2` float DEFAULT NULL COMMENT 'Брутто 2',
  `netto_2` float DEFAULT NULL COMMENT 'Нетто 2',
  PRIMARY KEY (`id`),
  KEY `id_calc_receipt` (`id_calc_receipt`),
  CONSTRAINT `kt_calcs_rec_prods_ibfk_1` FOREIGN KEY (`id_calc_receipt`) REFERENCES `kt_calcs_receipts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Продукты по калькуляции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_calcs_rec_prods`
--

LOCK TABLES `kt_calcs_rec_prods` WRITE;
/*!40000 ALTER TABLE `kt_calcs_rec_prods` DISABLE KEYS */;
INSERT INTO `kt_calcs_rec_prods` VALUES (12,10,5,94,0.005,0.005,0.005,0.005),(13,10,5,71,0.005,0.002,0.002,0.002),(14,10,5,49,0.052,0.056,0.05,0.045),(15,10,5,69,0.15,0.14,0.14,0.12);
/*!40000 ALTER TABLE `kt_calcs_rec_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_calcs_receipts`
--

DROP TABLE IF EXISTS `kt_calcs_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_calcs_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_calc` int(11) NOT NULL COMMENT 'Идентификатор калькуляции',
  `id_receipt` int(11) NOT NULL COMMENT 'Идентификатор рецепта',
  `count` float NOT NULL COMMENT 'Колличество порций',
  `output_weights` varchar(15) DEFAULT NULL COMMENT 'Выход',
  `id_basic` int(11) NOT NULL COMMENT 'Идентификатор основания',
  `id_org` int(11) NOT NULL,
  `output_1` int(11) DEFAULT NULL,
  `output_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_calc` (`id_calc`),
  CONSTRAINT `kt_calcs_receipts_ibfk_1` FOREIGN KEY (`id_calc`) REFERENCES `kt_calcs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Блюда по калькуляции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_calcs_receipts`
--

LOCK TABLES `kt_calcs_receipts` WRITE;
/*!40000 ALTER TABLE `kt_calcs_receipts` DISABLE KEYS */;
INSERT INTO `kt_calcs_receipts` VALUES (5,10,58,20,'197/172',1,3,197,172);
/*!40000 ALTER TABLE `kt_calcs_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_analytic`
--

DROP TABLE IF EXISTS `kt_dir_analytic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_analytic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_analytic` varchar(145) NOT NULL COMMENT 'Название блока операций',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Аналитика. Блоки бухгалтерских операций, сопровождающих операции по складам и кухне';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_analytic`
--

LOCK TABLES `kt_dir_analytic` WRITE;
/*!40000 ALTER TABLE `kt_dir_analytic` DISABLE KEYS */;
INSERT INTO `kt_dir_analytic` VALUES (4,'Приход на склад');
/*!40000 ALTER TABLE `kt_dir_analytic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_analytic_pos`
--

DROP TABLE IF EXISTS `kt_dir_analytic_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_analytic_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_analytic` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице kt_dir_analytic',
  `debit_score` int(11) NOT NULL COMMENT 'Дебетовый счет (идентификтаор записи из табицы kt_dir_score)',
  `credit_score` int(11) NOT NULL COMMENT 'Кредетовый счет (идентификтаор записи из табицы kt_dir_score)',
  `name_pos` varchar(45) NOT NULL COMMENT 'Название позиции',
  `type_analytic` int(11) NOT NULL COMMENT 'Тип исчисления, колличественное или денежное (идентификатор записи из таблицы kt_dir_type_analytic)',
  PRIMARY KEY (`id`),
  KEY `analytic_idx` (`id_analytic`),
  CONSTRAINT `analytic` FOREIGN KEY (`id_analytic`) REFERENCES `kt_dir_analytic` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Позиции аналитики';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_analytic_pos`
--

LOCK TABLES `kt_dir_analytic_pos` WRITE;
/*!40000 ALTER TABLE `kt_dir_analytic_pos` DISABLE KEYS */;
INSERT INTO `kt_dir_analytic_pos` VALUES (1,4,5,6,'списание со счета',2),(2,4,6,6,'',2);
/*!40000 ALTER TABLE `kt_dir_analytic_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_base`
--

DROP TABLE IF EXISTS `kt_dir_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_base` (
  `id_dir_base` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_base` varchar(145) NOT NULL COMMENT 'Название основания',
  PRIMARY KEY (`id_dir_base`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_base`
--

LOCK TABLES `kt_dir_base` WRITE;
/*!40000 ALTER TABLE `kt_dir_base` DISABLE KEYS */;
INSERT INTO `kt_dir_base` VALUES (1,'Завтрак'),(2,'Обед'),(3,'Ужин'),(4,'Праздничный обед');
/*!40000 ALTER TABLE `kt_dir_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_cat_prod`
--

DROP TABLE IF EXISTS `kt_dir_cat_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_cat_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_category` varchar(45) DEFAULT NULL COMMENT 'Наименование категории',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Справочник категорий продуктов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_cat_prod`
--

LOCK TABLES `kt_dir_cat_prod` WRITE;
/*!40000 ALTER TABLE `kt_dir_cat_prod` DISABLE KEYS */;
INSERT INTO `kt_dir_cat_prod` VALUES (1,'Овощи'),(2,'Фрукты'),(3,'Молочная продукция'),(4,'Мясо и мясные продукты'),(5,'Рыба'),(6,'Полуфабрикаты'),(7,'Крупы'),(9,'Вода'),(10,'Кофе, чай, соки'),(11,'Сахар, соль, специи'),(12,'Зелень');
/*!40000 ALTER TABLE `kt_dir_cat_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_cat_receipt`
--

DROP TABLE IF EXISTS `kt_dir_cat_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_cat_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_categ_receipt` varchar(45) DEFAULT NULL COMMENT 'Название категории технологических карт',
  `image_categ_receipt` varchar(45) DEFAULT NULL,
  `href_part` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Категории технологических карт';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_cat_receipt`
--

LOCK TABLES `kt_dir_cat_receipt` WRITE;
/*!40000 ALTER TABLE `kt_dir_cat_receipt` DISABLE KEYS */;
INSERT INTO `kt_dir_cat_receipt` VALUES (1,'Первые блюда','../images/receipts/soup.png','soup'),(2,'Гарниры','../images/receipts/garnir1.png','garnir'),(3,'Мясные блюда','../images/receipts/kolbasa.png','meat'),(4,'Рыба','../images/receipts/fish1.png','fish'),(5,'Салаты','../images/receipts/salad1.png','salad'),(6,'Напитки','../images/receipts/drinks1.png','drink'),(7,'Выпечка, десерты, хлеб','../images/receipts/desert1.png','desert'),(8,'Фрукты и ягоды','../images/receipts/frukty.png','fruits');
/*!40000 ALTER TABLE `kt_dir_cat_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_edizm`
--

DROP TABLE IF EXISTS `kt_dir_edizm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_edizm` (
  `id_edizm` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_edizm` varchar(15) NOT NULL COMMENT 'Название единицы измерения',
  `short_edizm` varchar(5) NOT NULL COMMENT 'Сокращенное название единицы измерения',
  PRIMARY KEY (`id_edizm`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_edizm`
--

LOCK TABLES `kt_dir_edizm` WRITE;
/*!40000 ALTER TABLE `kt_dir_edizm` DISABLE KEYS */;
INSERT INTO `kt_dir_edizm` VALUES (1,'килограмм','кг'),(2,'литр','л');
/*!40000 ALTER TABLE `kt_dir_edizm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_org`
--

DROP TABLE IF EXISTS `kt_dir_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_org` (
  `id_dir_org` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_org` varchar(145) NOT NULL COMMENT 'Название организации',
  PRIMARY KEY (`id_dir_org`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_org`
--

LOCK TABLES `kt_dir_org` WRITE;
/*!40000 ALTER TABLE `kt_dir_org` DISABLE KEYS */;
INSERT INTO `kt_dir_org` VALUES (1,'Школа'),(2,'Община'),(3,'Дет сад');
/*!40000 ALTER TABLE `kt_dir_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_prod`
--

DROP TABLE IF EXISTS `kt_dir_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_prod` (
  `iddir_prod` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код записи',
  `name_prod` varchar(150) NOT NULL COMMENT 'Наименование продукта',
  `view_prod` varchar(45) DEFAULT NULL COMMENT 'Изображение продукта',
  `id_edizm` int(11) DEFAULT NULL COMMENT 'Идентификатор записи в таблице kt_dir_edizm',
  `img_prod` varchar(255) DEFAULT NULL COMMENT 'Изображение для продукта',
  `id_category_prod` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_cat_prod',
  PRIMARY KEY (`iddir_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='Справочник наименований продуктов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_prod`
--

LOCK TABLES `kt_dir_prod` WRITE;
/*!40000 ALTER TABLE `kt_dir_prod` DISABLE KEYS */;
INSERT INTO `kt_dir_prod` VALUES (49,'Картошка','',1,'/images/products/49.png',1),(50,'Буряк','',1,'/images/products/50.png',1),(51,'Лук','',1,'/images/products/51.png',1),(53,'Свинина','',1,'/images/products/53.png',4),(54,'Гречневая крупа','',1,'',7),(56,'Рисовая крупа','',1,'',7),(57,'Пшеничная крупа','',1,'',7),(58,'Молоко','',2,'/images/products/58.png',3),(59,'Масло сливочное','',1,'',3),(60,'Морковка','',1,'/images/products/60.png',1),(61,'Капуста','',1,'/images/products/61.png',1),(62,'Кофе растворимый','',1,'',10),(63,'Кофе молотый','',1,'',10),(64,'Чай черный рассыпной','',1,'',10),(65,'Чай зеленый рассыпной','',1,'',10),(66,'Чай черный пакетированный','',1,'',10),(68,'Куриная грудка','',1,'',4),(69,'Питьевая вода','',2,'',9),(71,'Соль','',1,'/images/products/71.png',11),(74,'Сосиски детские','',1,'',4),(76,'Баклажаны','',1,'/images/products/76.png',1),(77,'Огурцы','',1,'/images/products/77.png',1),(91,'Сыр','',1,'/images/products/91.png',3),(92,'Болгарский перец','',1,'/images/products/92.png',1),(93,'Кабачки','',1,'/images/products/93.png',1),(94,'Зеленый лук','',1,'/images/products/94.png',12),(95,'Укроп','',1,'/images/products/95.png',12),(96,'Помидоры','',1,'/images/products/96.png',1),(97,'Сладкий сырок','',1,'',3),(98,'Яблоки','',1,'',2),(99,'Сахар','',1,'/images/products/99.png',11),(100,'Карп','',1,'',5),(101,'Стейк лосося','',3,'',5),(102,'Мороженое Лев','',1,'',3),(103,'Мороженое Ласунка','',1,'',3),(104,'Петрушка','',1,'',12),(149,'Пельмени','',1,'',6),(150,'Вареники','',1,'',6);
/*!40000 ALTER TABLE `kt_dir_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_prod_receipt`
--

DROP TABLE IF EXISTS `kt_dir_prod_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_prod_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_receipt` int(11) NOT NULL COMMENT 'Идентификатор рецепта (таблица kt_dir_receiots)',
  `id_prod` int(11) DEFAULT NULL COMMENT 'Идентификатор продукта из справочника продуктов (таблица kt_dir_prod)',
  `brutto_1` float DEFAULT NULL,
  `netto_1` float DEFAULT NULL,
  `brutto_2` float DEFAULT NULL,
  `netto_2` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_receipt_idx` (`id_receipt`),
  CONSTRAINT `id_receipt` FOREIGN KEY (`id_receipt`) REFERENCES `kt_dir_receipts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COMMENT='Список продуктов под каждый рецепт';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_prod_receipt`
--

LOCK TABLES `kt_dir_prod_receipt` WRITE;
/*!40000 ALTER TABLE `kt_dir_prod_receipt` DISABLE KEYS */;
INSERT INTO `kt_dir_prod_receipt` VALUES (237,43,59,0.005,0.005,0.005,0.005),(238,43,71,0.002,0.002,0.002,0.002),(239,43,49,0.11,0.1,0.1,0.09),(240,44,71,0.002,0.002,0.002,0.002),(241,44,49,0.15,0.14,0.14,0.13),(242,45,59,0.005,0.005,0.005,0.005),(243,45,71,0.002,0.002,0.002,0.002),(244,45,69,0.1,0.09,0.09,0.05),(245,45,54,0.1,0.12,0.12,0.12),(246,46,51,0.01,0.008,0.008,0.007),(247,46,71,0.002,0.002,0.002,0.002),(248,46,68,0.1,0.09,0.09,0.08),(249,47,51,0.01,0.008,0.008,0.005),(250,47,71,0.002,0.002,0.002,0.002),(251,47,53,0.1,0.09,0.09,0.08),(254,49,69,0.2,0.2,0.2,0.2),(255,49,72,0.005,0.005,0.005,0.005),(256,49,64,0.002,0.002,0.002,0.002),(257,50,97,0.08,0.08,0.08,0.08),(258,51,71,0.001,0.001,0.001,0.001),(259,51,61,0.062,0.06,0.055,0.05),(260,51,77,0.043,0.04,0.035,0.03),(261,51,95,0.008,0.008,0.007,0.005),(262,51,94,0.008,0.008,0.007,0.005),(263,52,71,0.002,0.002,0.002,0.002),(264,52,100,0.15,0.13,0.12,0.11),(273,56,102,0.11,0.11,0.11,0.11),(283,59,50,0.001,0.001,0.001,0.001),(284,59,49,0.001,0.001,0.001,0.001),(292,60,71,0.002,0.002,0.002,0.002),(293,60,59,0.005,0.005,0.005,0.005),(294,60,56,0.07,0.068,0.065,0.065),(295,60,58,0.11,0.1,0.1,0.1),(296,61,104,0.002,0.002,0.002,0.002),(297,61,95,0.003,0.003,0.003,0.003),(298,61,71,0.002,0.002,0.002,0.002),(299,61,69,0.11,0.11,0.1,0.1),(300,61,53,0.04,0.035,0.035,0.03),(301,61,51,0.005,0.005,0.005,0.005),(302,61,50,0.008,0.006,0.006,0.006),(303,61,49,0.01,0.008,0.008,0.007),(318,48,69,0.1,0.01,0.01,0.01),(319,48,64,0.1,0.11,0.11,0.11),(320,58,71,0.002,0.002,0.002,0.002),(321,58,49,0.052,0.05,0.05,0.045),(322,58,69,0.15,0.14,0.14,0.12);
/*!40000 ALTER TABLE `kt_dir_prod_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_receipts`
--

DROP TABLE IF EXISTS `kt_dir_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_receipt` varchar(45) DEFAULT NULL,
  `tech_prigotov` varchar(1000) DEFAULT NULL COMMENT 'Технология приготовления',
  `chem_sostav` varchar(1000) DEFAULT NULL COMMENT 'Химический состав',
  `image_receipt` varchar(45) DEFAULT NULL COMMENT 'Изображение блюда',
  `id_categ_receipt` int(11) DEFAULT NULL COMMENT 'Идентификатор записи из таблицы категорий рецептов (таблица kt_dir_cat_receipt)',
  `output_weight_1` varchar(15) DEFAULT NULL COMMENT 'Выход сырого блюда',
  `output_weight_2` varchar(10) DEFAULT NULL COMMENT 'Выход готового блюда',
  PRIMARY KEY (`id`),
  KEY `id_categ_receipt_idx` (`id_categ_receipt`),
  CONSTRAINT `id_categ_receipt` FOREIGN KEY (`id_categ_receipt`) REFERENCES `kt_dir_cat_receipt` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='Список рецетов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_receipts`
--

LOCK TABLES `kt_dir_receipts` WRITE;
/*!40000 ALTER TABLE `kt_dir_receipts` DISABLE KEYS */;
INSERT INTO `kt_dir_receipts` VALUES (43,'Картофельное пюре','Сварить и потолочь картофель','Состав','',2,'107','97'),(44,'Жареный картофель','Почистить картоху и сжарить','состав','',2,'142','132'),(45,'Каша гречневая','Закипятить воду, добавить крупу, варить 15 минут','состав','',2,'217','177'),(46,'Отбивная куриная','Сжарить мясо','состав','',3,'100','89'),(47,'Отбивная свинная','Сжарить мясо','состав','',3,'100','87'),(48,'Сосиски вареные','Сварить сосиски в воде','состав','',3,'120','120'),(49,'Чай','Залить кипятком чай','состав','',6,'207','207'),(50,'Сырок','-','-','',7,'80','80'),(51,'Овощной салат','Все порезать','состав','',5,'117','91'),(52,'Карп жаренный','иави','вапивапи','',4,'132','112'),(56,'Мороженое1','-','-','',7,'110','110'),(58,'Суп','мывам','ывамывам','',1,'192','167'),(59,'смузи','фуафцу','ацфуацу','',6,'2','2'),(60,'Молочный суп','ййййййй','цццццццц','',1,'175','172'),(61,'Борщ','у3уувц','кцуккцукцку','',1,'171','155');
/*!40000 ALTER TABLE `kt_dir_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_score`
--

DROP TABLE IF EXISTS `kt_dir_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_score` (
  `id_dir_score` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_score` varchar(145) NOT NULL COMMENT 'Название счета',
  `num_score` varchar(45) NOT NULL COMMENT 'Номер счета',
  PRIMARY KEY (`id_dir_score`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_score`
--

LOCK TABLES `kt_dir_score` WRITE;
/*!40000 ALTER TABLE `kt_dir_score` DISABLE KEYS */;
INSERT INTO `kt_dir_score` VALUES (5,'счет','322'),(6,'Товары на складе','281');
/*!40000 ALTER TABLE `kt_dir_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_stocks`
--

DROP TABLE IF EXISTS `kt_dir_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_stocks` (
  `id_dir_stock` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_stock` varchar(145) NOT NULL COMMENT 'Назване склада',
  PRIMARY KEY (`id_dir_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_stocks`
--

LOCK TABLES `kt_dir_stocks` WRITE;
/*!40000 ALTER TABLE `kt_dir_stocks` DISABLE KEYS */;
INSERT INTO `kt_dir_stocks` VALUES (1,'Основной склад'),(3,'Склад готовой продукции'),(4,'Склад полуфабрикатов');
/*!40000 ALTER TABLE `kt_dir_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_type_analytic`
--

DROP TABLE IF EXISTS `kt_dir_type_analytic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_type_analytic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_type` varchar(45) NOT NULL COMMENT 'Название типа аналитики',
  `name_edizm` varchar(45) NOT NULL COMMENT 'Название единиц измерения для аналитики',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Типы аналитики';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_type_analytic`
--

LOCK TABLES `kt_dir_type_analytic` WRITE;
/*!40000 ALTER TABLE `kt_dir_type_analytic` DISABLE KEYS */;
INSERT INTO `kt_dir_type_analytic` VALUES (1,'колличественный эквивалент','шт (кг)'),(2,'денежный эквивалент','грн');
/*!40000 ALTER TABLE `kt_dir_type_analytic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_dir_type_oper`
--

DROP TABLE IF EXISTS `kt_dir_type_oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_dir_type_oper` (
  `id_type_oper` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_type_oper` varchar(45) NOT NULL COMMENT 'Наименование типа операции',
  `type_oper` varchar(45) NOT NULL,
  PRIMARY KEY (`id_type_oper`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_dir_type_oper`
--

LOCK TABLES `kt_dir_type_oper` WRITE;
/*!40000 ALTER TABLE `kt_dir_type_oper` DISABLE KEYS */;
INSERT INTO `kt_dir_type_oper` VALUES (1,'Расход','rem'),(2,'Приход','add'),(3,'Возврат','ret'),(4,'Списание','out');
/*!40000 ALTER TABLE `kt_dir_type_oper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_inv`
--

DROP TABLE IF EXISTS `kt_inv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_inv` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `dt_inv` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата инвентаризации',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица инвентаризаций';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_inv`
--

LOCK TABLES `kt_inv` WRITE;
/*!40000 ALTER TABLE `kt_inv` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_inv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_inv_pos`
--

DROP TABLE IF EXISTS `kt_inv_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_inv_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_inv` int(11) DEFAULT NULL COMMENT 'Идентификатор записи заглавной части',
  `id_prod` int(11) DEFAULT NULL COMMENT 'Идентификатор продукта',
  `amount` float DEFAULT NULL COMMENT 'Колличество',
  `price` float DEFAULT NULL COMMENT 'Цена',
  `summa` float DEFAULT NULL COMMENT 'Сумма',
  `id_stock` int(11) DEFAULT NULL,
  `prim` varchar(145) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `inv_idx` (`id_inv`),
  CONSTRAINT `inv` FOREIGN KEY (`id_inv`) REFERENCES `kt_inv` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Позиционная часть инвентаризации';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_inv_pos`
--

LOCK TABLES `kt_inv_pos` WRITE;
/*!40000 ALTER TABLE `kt_inv_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_inv_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_list_directories`
--

DROP TABLE IF EXISTS `kt_list_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_list_directories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_table` varchar(45) NOT NULL COMMENT 'Наименование таблицы',
  `name_directory` varchar(45) NOT NULL COMMENT 'Наименование справочника',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Список простых справочников';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_list_directories`
--

LOCK TABLES `kt_list_directories` WRITE;
/*!40000 ALTER TABLE `kt_list_directories` DISABLE KEYS */;
INSERT INTO `kt_list_directories` VALUES (1,'Единицы измерения','kt_dir_edizm'),(2,'Основания','kt_dir_base'),(3,'Категории продуктов','kt_dir_cat_prod'),(5,'Организации','kt_dir_org'),(6,'Счета','kt_dir_score');
/*!40000 ALTER TABLE `kt_list_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_list_fields_directories`
--

DROP TABLE IF EXISTS `kt_list_fields_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_list_fields_directories` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификтаор записи',
  `id_directory` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице kt_list_directories',
  `name_field` varchar(45) NOT NULL COMMENT 'Название поля в таблице справочника',
  `description_field` varchar(45) NOT NULL COMMENT 'Название поля справочника',
  `visibility` tinyint(4) DEFAULT NULL COMMENT 'Видимость поля',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Список полей справочника';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_list_fields_directories`
--

LOCK TABLES `kt_list_fields_directories` WRITE;
/*!40000 ALTER TABLE `kt_list_fields_directories` DISABLE KEYS */;
INSERT INTO `kt_list_fields_directories` VALUES (1,1,'id_edizm','Код записи',0),(2,1,'name_edizm','Название единиц измерения',1),(3,1,'short_edizm','Сокращ. название',1),(4,2,'id_dir_base','Код записи',0),(5,2,'name_base','Наименование основания',1),(6,3,'id','Код записи',0),(7,3,'name_category','Наименование категории продуктов',1),(8,5,'id_dir_org','Код записи',0),(9,5,'name_org','Название организации',1),(10,6,'id_dir_score','Код записи',0),(11,6,'name_score','Название счета',1),(12,6,'num_score','Номер счета',1),(13,7,'id_dir_stock','Код записи',0),(14,7,'name_stock','Название склада',1),(15,8,'id_type_oper','Код записи',0),(16,8,'name_type_oper','Название типа операции',1);
/*!40000 ALTER TABLE `kt_list_fields_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_menus`
--

DROP TABLE IF EXISTS `kt_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `name_menu` varchar(100) NOT NULL COMMENT 'Название меню',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Таблица меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_menus`
--

LOCK TABLES `kt_menus` WRITE;
/*!40000 ALTER TABLE `kt_menus` DISABLE KEYS */;
INSERT INTO `kt_menus` VALUES (1,'Завтрак'),(2,'Обед');
/*!40000 ALTER TABLE `kt_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_menus_receipts`
--

DROP TABLE IF EXISTS `kt_menus_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_menus_receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_menu` int(11) NOT NULL COMMENT 'Код меню',
  `id_receipt` int(11) NOT NULL COMMENT 'Код блюда',
  PRIMARY KEY (`id`),
  KEY `id_menu` (`id_menu`,`id_receipt`),
  KEY `id_receipt` (`id_receipt`),
  CONSTRAINT `kt_menus_receipts_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `kt_menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kt_menus_receipts_ibfk_2` FOREIGN KEY (`id_receipt`) REFERENCES `kt_dir_receipts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Блюда в меню';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_menus_receipts`
--

LOCK TABLES `kt_menus_receipts` WRITE;
/*!40000 ALTER TABLE `kt_menus_receipts` DISABLE KEYS */;
INSERT INTO `kt_menus_receipts` VALUES (8,1,45),(7,1,48),(9,1,58),(10,1,59),(12,2,45),(11,2,48),(13,2,61);
/*!40000 ALTER TABLE `kt_menus_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_moves_prods`
--

DROP TABLE IF EXISTS `kt_moves_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_moves_prods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prod` int(11) NOT NULL,
  `id_prod_in_system` int(11) NOT NULL,
  `id_so_pos` int(11) NOT NULL,
  `amount_by_oper` float DEFAULT NULL,
  `remaining_amount` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_prod_idx` (`id_prod`),
  KEY `pos_idx` (`id_so_pos`),
  CONSTRAINT `id_prod` FOREIGN KEY (`id_prod`) REFERENCES `kt_dir_prod` (`iddir_prod`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pos` FOREIGN KEY (`id_so_pos`) REFERENCES `kt_stock_oper_pos` (`id_so_pos`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица движений продуктов в системе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_moves_prods`
--

LOCK TABLES `kt_moves_prods` WRITE;
/*!40000 ALTER TABLE `kt_moves_prods` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_moves_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_reasons`
--

DROP TABLE IF EXISTS `kt_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_so` int(11) NOT NULL COMMENT 'Идентификатор операции дополнительного списания по складу',
  `text_reason` varchar(1000) DEFAULT NULL COMMENT 'Текст причины',
  PRIMARY KEY (`id`),
  KEY `id_so_idx` (`id_so`),
  CONSTRAINT `id_stock_op` FOREIGN KEY (`id_so`) REFERENCES `kt_stock_oper` (`id_stock_oper`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица причин почему списываются дополнительно продукты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_reasons`
--

LOCK TABLES `kt_reasons` WRITE;
/*!40000 ALTER TABLE `kt_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `kt_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_reports`
--

DROP TABLE IF EXISTS `kt_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_report` varchar(45) DEFAULT NULL COMMENT 'Название раздела с отчетами (отчеты по кухне, складам, критериям)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Таблица для построения отчетов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_reports`
--

LOCK TABLES `kt_reports` WRITE;
/*!40000 ALTER TABLE `kt_reports` DISABLE KEYS */;
INSERT INTO `kt_reports` VALUES (1,'stock'),(2,'kitchen'),(3,'options');
/*!40000 ALTER TABLE `kt_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_reports_conditions`
--

DROP TABLE IF EXISTS `kt_reports_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_reports_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_report` int(11) NOT NULL COMMENT 'Идентификатор отчета',
  `text_condition` varchar(1000) NOT NULL COMMENT 'Текст условия для запроса',
  `description_condition` varchar(45) NOT NULL COMMENT 'Название условия для отображения пользователю',
  `type_condition` varchar(45) NOT NULL COMMENT 'Тип условия (множественный выбор из селекта, диапазон значений, единичный выбор и т.д.)',
  `table_condition` varchar(45) DEFAULT NULL COMMENT 'Таблица со справочными значениями для условия',
  PRIMARY KEY (`id`),
  KEY `id_report_idx` (`id_report`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Условия отчетов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_reports_conditions`
--

LOCK TABLES `kt_reports_conditions` WRITE;
/*!40000 ALTER TABLE `kt_reports_conditions` DISABLE KEYS */;
INSERT INTO `kt_reports_conditions` VALUES (1,1,'kdto.id_type_oper','Вид операции','select','kt_dir_type_oper'),(2,1,'kds.id_dir_stock','Склад','select','kt_dir_stocks'),(3,1,'kdp.iddir_prod','Продукт','select','kt_dir_prod'),(4,1,'kso.dt_oper','Дата операции','multidate','kt_stock_oper'),(5,1,'kdcp.id','Категория продуктов','select','kt_dir_cat_prod'),(6,2,'kdo.id_dir_org','Организация','select','kt_dir_org'),(7,2,'kdb.id_dir_base','Основание','select','kt_dir_base'),(8,2,'kdr.id','Блюда','select','kt_dir_receipts'),(9,2,'kc.date_calc','Дата операции','multidate','kt_calcs'),(10,3,'kdto.id_type_oper','Вид операции','select','kt_dir_type_oper'),(11,3,'kds.id_dir_stock','Склад','select','kt_dir_stocks'),(12,3,'kdp.iddir_prod','Продукт','select','kt_dir_prod'),(13,3,'kso.dt_oper','Дата операции по складу','multidate','kt_stock_oper'),(14,3,'kdcp.id','Категория продуктов','select','kt_dir_cat_prod'),(15,3,'kdo.id_dir_org','Организация','select','kt_dir_org'),(16,3,'kdb.id_dir_base','Основание','select','kt_dir_base'),(17,3,'kdr.id','Блюда','select','kt_dir_receipts'),(18,3,'kc.date_calc','Дата операции по кухне','multidate','kt_calcs');
/*!40000 ALTER TABLE `kt_reports_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_reports_fields`
--

DROP TABLE IF EXISTS `kt_reports_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_reports_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_report` int(11) NOT NULL COMMENT 'Идентификатор отчета',
  `name_field` varchar(45) NOT NULL COMMENT 'Название поля для запроса',
  `description_field` varchar(45) NOT NULL COMMENT 'Название поля для отображения пользователю',
  `order_num` int(11) NOT NULL COMMENT 'Порядковый номер',
  PRIMARY KEY (`id`),
  KEY `id_report_idx` (`id_report`),
  CONSTRAINT `id_report` FOREIGN KEY (`id_report`) REFERENCES `kt_reports` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='Поля отчетов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_reports_fields`
--

LOCK TABLES `kt_reports_fields` WRITE;
/*!40000 ALTER TABLE `kt_reports_fields` DISABLE KEYS */;
INSERT INTO `kt_reports_fields` VALUES (1,1,'kds.name_stock','Склад',1),(2,1,'kdto.name_type_oper','Вид операции',2),(3,1,'kso.dt_oper','Дата операции',4),(4,1,'kso.id_stock_oper','Номер накладной',3),(5,1,'kdp.name_prod','Продукт',5),(6,1,'replace(ksop.amount, \'.\', \',\')','Количество',7),(7,1,'replace(ksop.price, \'.\', \',\')','Цена',8),(8,1,'replace(ksop.summa, \'.\', \',\')','Сумма',9),(9,1,'kde.short_edizm','Ед.изм.',6),(10,1,'kdcp.name_category','Категория продуктов',4),(11,2,'kdr.name_receipt','Блюдо',4),(12,2,'kcr.count','Кол-во порций',5),(13,2,'kcr.output_weights','Выход',6),(14,2,'kdo.name_org','Организация',1),(15,2,'kdb.name_base','Основание',2),(16,2,'kc.date_calc','Дата операции',3),(17,3,'kso.id_stock_oper','Номер накладной',0),(18,3,'kdp.name_prod','Продукт',0),(19,3,'ksop.amount','Количество',0),(20,3,'ksop.price','Цена',0),(21,3,'ksop.summa','Сумма',0),(22,3,'kde.short_edizm','Ед.изм.',0),(23,3,'kdcp.name_category','Категория продуктов',0),(24,3,'kdr.name_receipt','Блюдо',0),(25,3,'kcr.count','Кол-во порций',0),(26,3,'kcr.output_weights','Выход',0),(27,3,'group_concat(kdo.name_org)','Организация',0),(28,3,'kdb.name_base','Основание',0),(29,3,'kc.date_calc','Дата операции по кухне',0),(30,3,'kdst.name_stock','Склад',0),(31,3,'kdto.name_type_oper','Вид операции по складу',0),(32,3,'kso.dt_oper','Дата операции по складу',0),(33,3,'kds.num_score','Номер счета',0),(34,1,'ktres.text_reason','Причина',10);
/*!40000 ALTER TABLE `kt_reports_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_requests`
--

DROP TABLE IF EXISTS `kt_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_calc` int(11) DEFAULT NULL COMMENT 'Идентификатор калькуляции',
  `date_request` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата требования',
  `confirm` tinyint(1) DEFAULT '0' COMMENT 'Выполнено/не выполнено',
  PRIMARY KEY (`id`),
  KEY `id_calc` (`id_calc`),
  KEY `id_calc_2` (`id_calc`),
  CONSTRAINT `kt_requests_ibfk_1` FOREIGN KEY (`id_calc`) REFERENCES `kt_calcs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Таблица требований на выдачу продуктов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_requests`
--

LOCK TABLES `kt_requests` WRITE;
/*!40000 ALTER TABLE `kt_requests` DISABLE KEYS */;
INSERT INTO `kt_requests` VALUES (13,10,'2018-06-01 05:21:40',2);
/*!40000 ALTER TABLE `kt_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_requests_prods`
--

DROP TABLE IF EXISTS `kt_requests_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_requests_prods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'идентификатор записи',
  `id_request` int(11) NOT NULL COMMENT 'Идентификатор требования',
  `id_prod` int(11) NOT NULL COMMENT 'Идентификатор продукта',
  `count` float DEFAULT NULL COMMENT 'Количество',
  `done` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_request` (`id_request`),
  KEY `id_request_2` (`id_request`),
  CONSTRAINT `kt_requests_prods_ibfk_1` FOREIGN KEY (`id_request`) REFERENCES `kt_requests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Продукты в требованиях';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_requests_prods`
--

LOCK TABLES `kt_requests_prods` WRITE;
/*!40000 ALTER TABLE `kt_requests_prods` DISABLE KEYS */;
INSERT INTO `kt_requests_prods` VALUES (9,13,49,1.04,-0),(10,13,69,3,0),(11,13,71,0.04,-0),(12,13,94,0.1,0);
/*!40000 ALTER TABLE `kt_requests_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_stock_oper`
--

DROP TABLE IF EXISTS `kt_stock_oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_stock_oper` (
  `id_stock_oper` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `dt_oper` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата операции',
  `id_type_oper` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_type_oper',
  `id_org` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_org',
  `id_stock` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_stocks',
  `id_base` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_base',
  `id_score` int(11) DEFAULT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_score',
  `id_request` int(11) DEFAULT '0' COMMENT 'Идентфикатор записи из таблицы kt_request',
  PRIMARY KEY (`id_stock_oper`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='Склад (заголовок)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_stock_oper`
--

LOCK TABLES `kt_stock_oper` WRITE;
/*!40000 ALTER TABLE `kt_stock_oper` DISABLE KEYS */;
INSERT INTO `kt_stock_oper` VALUES (13,'2018-05-23 17:02:35',2,0,1,0,6,0),(28,'2018-06-01 05:21:47',1,0,1,0,6,13),(29,'2018-06-01 05:21:47',1,0,1,0,6,13),(30,'2018-06-01 05:21:48',1,0,1,0,6,13),(31,'2018-06-01 02:21:58',3,0,1,0,0,13),(32,'2018-06-01 02:21:58',3,0,1,0,0,13),(33,'2018-06-01 02:21:58',3,0,1,0,0,13);
/*!40000 ALTER TABLE `kt_stock_oper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_stock_oper_pos`
--

DROP TABLE IF EXISTS `kt_stock_oper_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_stock_oper_pos` (
  `id_so_pos` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_so` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_stock_oper',
  `id_prod` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы kt_dir_prod',
  `amount` float NOT NULL COMMENT 'Количество',
  `price` float NOT NULL COMMENT 'Цена',
  `summa` float NOT NULL COMMENT 'Сумма',
  `id_ed_izm` int(11) NOT NULL COMMENT 'Идентификтаор записи из таблицы kt_dir_edizm',
  `num_part` varchar(1000) NOT NULL,
  `id_so_rel_pos` int(11) DEFAULT NULL COMMENT 'Номер связанной позиции',
  PRIMARY KEY (`id_so_pos`),
  KEY `id_so_idx` (`id_so`),
  KEY `id_so` (`id_so`),
  CONSTRAINT `id_so` FOREIGN KEY (`id_so`) REFERENCES `kt_stock_oper` (`id_stock_oper`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_stock_oper_pos`
--

LOCK TABLES `kt_stock_oper_pos` WRITE;
/*!40000 ALTER TABLE `kt_stock_oper_pos` DISABLE KEYS */;
INSERT INTO `kt_stock_oper_pos` VALUES (17,13,71,10,3,30,0,'p71-3',0),(18,13,69,100,1.2,120,0,'p69-1.2',0),(19,13,49,10,8,80,0,'p49-8',0),(23,28,49,-1.04,8,-8.32,0,'p49-8',19),(24,29,69,-3,1.2,-3.6,0,'p69-1.2',18),(25,30,71,-0.04,3,-0.12,0,'p71-3',17),(26,31,71,0.04,3,0.12,0,'p71-3',17),(27,32,69,3,1.2,3.6,0,'p69-1.2',18),(28,33,49,1.04,8,8.32,0,'p49-8',19);
/*!40000 ALTER TABLE `kt_stock_oper_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kt_users`
--

DROP TABLE IF EXISTS `kt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kt_users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kt_users`
--

LOCK TABLES `kt_users` WRITE;
/*!40000 ALTER TABLE `kt_users` DISABLE KEYS */;
INSERT INTO `kt_users` VALUES (0,'cook','cook','user'),(1,'ALENA','11111','user'),(2,'FIN','fin','fin');
/*!40000 ALTER TABLE `kt_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_texts`
--

DROP TABLE IF EXISTS `mail_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_pos_mail` int(11) NOT NULL COMMENT 'Идентификатор позиции рассылки',
  `text` varchar(1000) NOT NULL COMMENT 'Текст письма',
  `name_text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pos_idx` (`id_pos_mail`),
  CONSTRAINT `id_pos` FOREIGN KEY (`id_pos_mail`) REFERENCES `dir_pos_type_mail` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Тексты к рассылкам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_texts`
--

LOCK TABLES `mail_texts` WRITE;
/*!40000 ALTER TABLE `mail_texts` DISABLE KEYS */;
INSERT INTO `mail_texts` VALUES (10,6,'Текст 1','С новым годом!'),(11,6,'Текст 2','С самым новым годом!'),(12,6,'Текст 3','С самым самым новым годом!'),(13,6,'Текст 4','С супер-пупер новым годом!'),(14,7,'Текст 1','С Днем рождения'),(15,9,'утренняя молитва','напоминание');
/*!40000 ALTER TABLE `mail_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mappoint`
--

DROP TABLE IF EXISTS `mappoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mappoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `cx` varchar(10) NOT NULL,
  `cy` varchar(10) NOT NULL,
  `user` varchar(255) NOT NULL,
  `view` int(2) NOT NULL,
  `id_address` int(11) NOT NULL COMMENT 'Идентификатор записи в таблице address',
  PRIMARY KEY (`id`),
  KEY `id_address_idx` (`id_address`),
  CONSTRAINT `id_address` FOREIGN KEY (`id_address`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mappoint`
--

LOCK TABLES `mappoint` WRITE;
/*!40000 ALTER TABLE `mappoint` DISABLE KEYS */;
INSERT INTO `mappoint` VALUES (52,'fff','fffff','34.609237','48.519058','ALENA',1,1),(53,'qqq','qqq','34.611039','48.520997','ALENA',1,2),(54,'уу','ууу','34.608314','48.519258','ALENA',1,29),(55,'тут живет Иванов','Аношкина 1','34.627111','48.504374','ALENA',1,34),(56,'йййй','йййй','34.609001','48.520484','ALENA',1,35),(59,'yrtyrty','rtyrtyrty','34.612241','48.519115','ALENA',1,41),(60,'ввв','вввв','34.619901','48.516635','ALENA',1,33),(71,'Петренко Петр  Петрович','Украина, Днепропетровская область, город Каменское, Заводской, ул.Алтайская 1, кв. 12','34.611597','48.51692','ALENA',1,52),(73,'Петров Петр  Петрович','Украина, Днепропетровская область, город Каменское, Заводской, ул.Свободы 1, корп.1, кв. 1','34.613228','48.522451','ALENA',1,54),(74,'Дашко Алена  Геннадьевна','Украина, Днепропетровская область, город Каменское, Заводской, пр-т.Аношкина 73, кв. 15','34.622186','48.505507','ALENA',1,55),(77,'qqq qqq  qqq','Украина, Днепропетровская область, город Днипро, Южный, пр.Аношкина 1, корп.1, кв. 1','34.610503','48.520056','ALENA',1,56),(82,'Самокиша Дмитрий  Александрович','Украина, Днепропетровская область, город Каменское, Южный, ул.Матросова 17, кв. 84','34.611484','48.518882','ALENA',1,53),(83,'точка','точка','48.5165759','34.6079206','ALENA',1,53),(88,'Апанасюк Юлия  Николаевна','Израиль  ','34.6083927','48.5170023','ALENA',1,57),(89,'Иванов Иван  Иванович','Украина, Днепропетровская область, город Каменское, Заводской, ул.Алтайская 1, корп.1, кв. 1','34.6092959','48.5181969','ALENA',1,58);
/*!40000 ALTER TABLE `mappoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Идентификатор записи',
  `dt_oper` varchar(45) DEFAULT NULL COMMENT 'Дата операции',
  `type_oper` varchar(45) DEFAULT NULL COMMENT 'Тип операции',
  `id_prog` int(11) DEFAULT NULL COMMENT 'Идентификтаор программы таблица help_prog',
  `id_people` int(11) DEFAULT NULL COMMENT 'Идентификатор участника программы Поле id_people в таблице prog_participant',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Операции по программам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,'09.05.2017','Расход',19,30),(2,'09.05.2017','Расход',19,34),(4,'10.05.2017','Расход',17,30),(5,'09.07.2017','Расход',18,36);
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations_pos`
--

DROP TABLE IF EXISTS `operations_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_oper` int(11) NOT NULL COMMENT 'Идентификатор операции, таблица operations',
  `id_prog_pos` int(11) DEFAULT NULL COMMENT 'Идентификатор позииции программы, под которую происходит операция, таблица help_prog_pos',
  `giving_amount` varchar(45) DEFAULT NULL COMMENT 'Выданное количество',
  `price_giving` varchar(45) DEFAULT NULL COMMENT 'Цена единицы ',
  `summ_giving` varchar(45) DEFAULT NULL COMMENT 'Сумма позиции операции',
  PRIMARY KEY (`id`),
  KEY `id_oper_idx` (`id_oper`),
  CONSTRAINT `id_oper` FOREIGN KEY (`id_oper`) REFERENCES `operations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Позиции операций по программам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations_pos`
--

LOCK TABLES `operations_pos` WRITE;
/*!40000 ALTER TABLE `operations_pos` DISABLE KEYS */;
INSERT INTO `operations_pos` VALUES (41,1,0,'1','1','1'),(42,2,0,'1','1','1'),(44,4,836,'1','15','15'),(45,5,857,'1','1','1');
/*!40000 ALTER TABLE `operations_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_table` int(11) NOT NULL COMMENT 'Идентификатор таблицы',
  `description` varchar(45) NOT NULL COMMENT 'Наименование вкладки',
  `id_page` varchar(45) NOT NULL COMMENT 'Идентификатор вкладки для настройки визуального отображения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Таблица с перечнем вкладок для визуального отображения ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Основная информация','1-1-osnov'),(2,1,'Образование','2-1-educ'),(3,1,'Место работы','3-1-work'),(4,1,'Состав семьи','4-1-family'),(5,1,'Докуемнты','5-1-docs'),(6,1,'Прочие детали','6-1-det');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prints`
--

DROP TABLE IF EXISTS `prints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prints` (
  `id_print_form` int(11) NOT NULL AUTO_INCREMENT,
  `name_print_form` varchar(45) NOT NULL,
  `name_file_form` varchar(45) NOT NULL,
  PRIMARY KEY (`id_print_form`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Печатные формы ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prints`
--

LOCK TABLES `prints` WRITE;
/*!40000 ALTER TABLE `prints` DISABLE KEYS */;
INSERT INTO `prints` VALUES (1,'Анкета','anketa');
/*!40000 ALTER TABLE `prints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prog_participant`
--

DROP TABLE IF EXISTS `prog_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prog_participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_prog` int(11) NOT NULL COMMENT 'Идентификатор программы таблица help_prog',
  `id_people` int(11) NOT NULL COMMENT 'Идентификатор человека таблица dir_people',
  `description` varchar(255) DEFAULT NULL COMMENT 'Описание почему является участником',
  `id_help` int(11) NOT NULL COMMENT 'Идентификатор записи из таблицы help',
  PRIMARY KEY (`id`),
  KEY `id_people_idx` (`id_people`),
  CONSTRAINT `id_peopl` FOREIGN KEY (`id_people`) REFERENCES `dir_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='таблица участников программ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prog_participant`
--

LOCK TABLES `prog_participant` WRITE;
/*!40000 ALTER TABLE `prog_participant` DISABLE KEYS */;
INSERT INTO `prog_participant` VALUES (27,19,30,'',0),(29,17,35,'',0),(30,18,36,'',0),(31,18,38,'',0),(32,17,30,'',0),(51,0,40,'',10),(103,19,41,'',9);
/*!40000 ALTER TABLE `prog_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prog_participant_needing`
--

DROP TABLE IF EXISTS `prog_participant_needing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prog_participant_needing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_prog_participant` int(11) NOT NULL COMMENT 'Идентификатор участника программы',
  `id_help_prog_pos` int(11) NOT NULL COMMENT 'Идентификатор позиции программы',
  `amount` varchar(45) NOT NULL COMMENT 'Количество потребности под программу',
  `amount_month` varchar(45) DEFAULT NULL COMMENT 'Количество месяцев на которое нужна данная потребность',
  `per_month` varchar(45) DEFAULT NULL COMMENT 'Количество в перерасчете на месяц',
  `name_needing` varchar(255) DEFAULT NULL COMMENT 'Наименование потребности если ее нет среди позиций программы',
  PRIMARY KEY (`id`),
  KEY `id_prog_participant_idx` (`id_prog_participant`),
  CONSTRAINT `id_prog_participant` FOREIGN KEY (`id_prog_participant`) REFERENCES `prog_participant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Потребности под программы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prog_participant_needing`
--

LOCK TABLES `prog_participant_needing` WRITE;
/*!40000 ALTER TABLE `prog_participant_needing` DISABLE KEYS */;
INSERT INTO `prog_participant_needing` VALUES (1,32,836,'2','1','2','');
/*!40000 ALTER TABLE `prog_participant_needing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatives`
--

DROP TABLE IF EXISTS `relatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relatives` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_type_rel` int(11) DEFAULT NULL COMMENT 'Идентификатор записи в таблице степеней родства (dir_type_relative)',
  `id_people` int(11) DEFAULT NULL COMMENT 'Идентификатор записи в таблице членов общины (dir_people)',
  `id_people_rel` int(11) DEFAULT NULL COMMENT 'Идентификатор записи в таблице членов общины родственника, если родственник тоже член общины. Если нет, то заполняются следующие поля.',
  `surname` varchar(100) DEFAULT NULL COMMENT 'Фамилия родственника',
  `name` varchar(100) DEFAULT NULL COMMENT 'Имя родственника',
  `lastname` varchar(100) DEFAULT NULL COMMENT 'Отчество родственника',
  `datebirth` varchar(45) DEFAULT NULL COMMENT 'Дата рождения родственника',
  `datedeath` varchar(45) DEFAULT NULL COMMENT 'Дата смерти',
  `eurdatebirth` varchar(45) DEFAULT NULL,
  `eurdatedeath` varchar(45) DEFAULT NULL,
  `mobtelephone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4871 DEFAULT CHARSET=utf8 COMMENT='таблица с перечнем родственников каждого члена общины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatives`
--

LOCK TABLES `relatives` WRITE;
/*!40000 ALTER TABLE `relatives` DISABLE KEYS */;
INSERT INTO `relatives` VALUES (4591,2,72,0,'Барнгольц','Алефтина ','Геннадиевна','','','23 Адара 5735','',''),(4592,5,71,0,'Барнгольц','Алефтина ','Геннадиевна','','','23 Адара 5735','',''),(4593,5,223,0,'Буртман ','Валентина','Васильевна','','','11 Адар-1 5714','',''),(4594,5,222,0,'Буртман ','Валентина ','Васильевна','','','11 Адар-1 5714','',''),(4595,6,119,0,'Чаюн ','Владимир','Владимирович','','','7 Швата 5718','',''),(4596,22,206,0,'Щербина ','Демьян ','Павлович','','','14 Хешвана 5733','',''),(4597,19,236,0,'Бучацкая ','Валентина ','Сергеевна','','','15 Швата 5709','',''),(4598,13,238,0,'Бучацкая ','Валентина ','Сергеевна','','','13 Тевета 5709','',''),(4599,12,74,0,'Барнгольц','Алевтина ','Геннадиевна','','','18 Тевета 5735','',''),(4600,2,74,0,'Барнгольц','Галина ','Ушеровна','','','2 Тевета 5701','',''),(4601,5,295,0,'Дунаевска','Валентина ','Ивановна','','','15 Хешвана 5695','',''),(4602,6,295,0,'Дунаевский','Давид ','Наумович','','','13 Швата 5691','',''),(4603,22,918,0,'Дунаевский','Давид ','Наумович','','','13 Швата 5691','',''),(4604,22,918,0,'Дунаевская','Валентина ','Ивановна','','','15 Хешвана 5695','',''),(4605,6,918,0,'Власенко ','Сергей ','Петрович','','','21 Адара 5718','',''),(4606,5,289,0,'Витлина ','Альбина','Борисовна','','','17 Хешвана 5701','',''),(4607,18,290,0,'Витлина ','Альбина','Борисовна','','','17 Хешвана 5701','',''),(4608,13,288,0,'Витлина ','Альбина','Борисовна','','','17 Хешвана 5701','',''),(4609,5,302,0,'Водовозов','Циля ','Наумовна','','','8 Тамуза 5701','',''),(4610,5,279,0,'Винокуров','Софья ','Ароновна','','','8 Тевета 5688','',''),(4611,6,244,0,'Узлов','Александр ','Яковлевич','','','28 Сивана 5717','',''),(4612,6,243,0,'Узлов','Александр ','Яковлевич','','','28 Сивана 5717','',''),(4613,13,1673,0,'Узлов','Александр ','Яковлевич','','','28 Сивана 5717','',''),(4614,6,241,0,'Вайнтрауб','Марк ','Семенович','','','21 Нисана 5688','',''),(4615,6,240,0,'Вайнтрауб','Марк ','Семенович','','','21 Нисана 5688','',''),(4616,12,240,0,'Недавний ','Дмитрий','Евгеньевич','','','5 Ияра 5761','',''),(4617,6,280,0,'Вирник ','Вольф ','Фишелевич','','','27 Адар-1 5673','',''),(4618,6,272,0,'Верховец ','Николай','Иванович','','','2 Элула 5721','',''),(4619,5,1891,0,'Юрковская','Людмила ','Ивановна','','','','',''),(4620,5,402,0,'Горелова ','Валерия ','Валериевна','','','2 Тевета 5739','',''),(4621,5,408,0,'Горкина ','Светлана ','Георгиевна','','','23 Ава 5724','',''),(4622,2,581,0,'Ефременко','Валентин','','','','26 Тевета 5744','',''),(4623,2,581,0,'Ефременко','Наталья','','','','8 Тевета 5745','',''),(4624,2,581,0,'Ефременко','Сергей','','','','25 Тевета 5741','',''),(4625,5,595,0,'Журавская','Лидия ','Дмитриевна','','','17 Кислева 5695','',''),(4626,18,596,0,'Журавская','Лидия','Дмитриевна','','','17 Кислева 5695','',''),(4627,22,844,0,'Бизилева ','Анна ','Алексеевна','','','4 Швата 5739','',''),(4628,22,844,0,'Головко ','Ольга ','Алексеевна','','','3 Ияра 5744','',''),(4629,5,1008,0,'Ляпустина','Лариса ','Григорьевна','','','4 Тевета 5712','',''),(4630,13,1007,0,'Ляпустина','Лариса ','Григорьевна','','','4 Тевета 5712','',''),(4631,6,994,0,'Лыков','Валерий ','Николаевич','','','4 Ияра 5722','',''),(4632,18,993,0,'Сморода ','Людмила','Ивановна','','','10 Ияра 5700','',''),(4633,6,993,0,'Лыков','Валерий ','Николаевич','','','4 Ияра 5722','',''),(4634,13,1503,0,'Сморода ','Людмила ','Ивановна','','','10 Ияра 5700','',''),(4635,2,1071,0,'Блудова ','София ','Александровна','','','1 Адара 5712','',''),(4636,5,1160,0,'Некрасова','Мирослава','Викторовна','','','1 Нисана 5725','',''),(4637,13,1158,0,'Некрасова','Мирослава ','Викторовна','','','1 Нисана 5725','',''),(4638,6,1144,0,'Наконечный','Виктор ','Николаевич','','','3 Элула 5721','',''),(4639,13,1304,0,'Наконечный','Виктор ','Николаевич','','','3 Элула 5721','',''),(4640,5,1159,0,'Некрасова','Мирослава ','Викторовна','','','1 Нисана 5725','',''),(4641,22,1202,0,'Ольман ','Наталья ','Григорьевна','','','12 Адара 5728','',''),(4642,2,1390,0,'Рожков ','Владимир','Александрович','','','18 Ава 5713','',''),(4643,13,1517,0,'Соловьев ','Владимир ','Юрьевич','','','15 Кислева 5723','',''),(4644,22,1514,0,'Соловьев ','Владимир','Юрьевич','','','15 Кислева 5723','',''),(4645,19,1554,0,'Данильченко','Сергей ','Н.','','','5 Тевета 3760','',''),(4646,13,486,0,'Данильченко','Сергей ','Н.','','','5 Тевета 3760','',''),(4647,13,1486,0,'Сичевой ','Андрей','Викторович','','','27 Швата 5727','',''),(4648,6,1485,0,'Сичевой ','Андрей ','Викторович','','','27 Швата 5727','',''),(4649,13,1594,0,'Теплицкая','Валентина ','Васильевна','','','29 Тамуза 5717','',''),(4650,5,1590,0,'Теплицкая','Валентина','Васильевна','','','29 Тамуза 5717','',''),(4651,5,592,0,'Теплицкая','Валентина','Васильевна','','','29 Тамуза 5717','',''),(4652,5,1662,0,'Тукаева ','Ольга ','Петровна','','','10 Элула 5740','',''),(4653,13,1597,0,'Терещенко','Владимир ','Данилович','','','28 Ияра 5713','',''),(4654,5,1653,0,'Свирщ ','Наталья ','Анатольевна','','','14 Тевета 5732','',''),(4655,6,1653,0,'Трефилов ','Валентин ','Викторович','','','4 Тевета 5731','',''),(4656,13,1680,0,'Учень ','Светлана ','Геннадиевна','','','27 Швата 5725','',''),(4657,5,1682,0,'Учень ','Светлана ','Геннадиевна','','','27 Швата 5725','',''),(4658,5,1681,0,'Учень ','Светлана','Геннадиевна','','','27 Швата 5725','',''),(4659,22,1737,0,'Фролова','Виктория ','Андреевна','','','5 Тевета 5723','',''),(4660,5,1738,0,'Фролова ','Виктория ','Андреевна','','','5 Тевета 5723','',''),(4661,2,1703,0,'Тяжлова ','Лариса','Юрьевна','','','9 Элула 5696','',''),(4662,22,1740,0,'Фролов ','Андрей ','Евгейньевич','','','25 Тамуза 5729','',''),(4663,22,708,0,'Капелюшник','Клавдия','Ивановна','','','9 Элула 5687','',''),(4664,5,1119,0,'Морозова ','Наталья ','Петровна','','','10 Кислева 5721','',''),(4665,5,1117,0,'Морозова ','Наталья ','Петровна','','','7 Кислева 5721','',''),(4666,13,1118,0,'Морозова ','Наталья ','Петровна','','','7 Кислева 5721','',''),(4667,6,1656,0,'Трофименко','Игорь','Владимирович','','','6 Адара 5729','',''),(4668,5,293,0,'Владимирова','Ирина ','Анатольевна','','','23 Тамуза 5729','',''),(4669,5,292,0,'Владимирова','Ирина ','Анатольевна','','','23 Тамуза 5729','',''),(4670,22,291,0,'Владимирова','Ирина ','Анатольевна','','','23 Тамуза 5729','',''),(4671,6,931,0,'Лейба ','Евгений  ',' Юрьевич','','','24 Адар-1 5714','',''),(4672,6,933,0,'Лейба ','Евгений  ','Юрьевич','','','24 Адар-1 5714','',''),(4673,2,264,0,'Веденнеева','Елизавета ','Вячеславовна','','','5 Адар-2 5763','',''),(4674,22,774,0,'Веденеева ','Елизавета','Вячеславовна','','','5 Адар-2 5763','',''),(4675,6,493,0,'Лещинский','Роальд ','Петрович','','','7 Хешвана 5700','',''),(4676,5,493,0,'Лещинская','Любовь ','Роальдовна','','','29 Элула 5700','',''),(4677,22,830,0,'Лещинская','Любовь Алексеевна','Алексеевна','','','29 Элула 5700','',''),(4678,22,830,0,'Лещинский','Роальд ','Петрович','','','7 Хешвана 5700','',''),(4679,22,1799,0,'Богуцная ','Инеса ','Арнольдовна','','','10 Адара 5726','',''),(4680,5,1800,0,'Богуцная ','Инеса ','Арнольдовна','','','10 Адара 5726','',''),(4681,6,1726,0,'Фрадкин ','Абрам ','Самойлович','','','','',''),(4682,5,1023,0,'Галушка ','Элла ','Васильевна','','','15 Сивана 5727','',''),(4683,13,1450,0,'Свиридова','Галина ','Герадьевна','','','16 Ияра 5722','',''),(4684,5,1451,0,'Свиридова','Галина','Герадьевна','','','16 Ияра 5722','',''),(4685,13,800,0,'Коломеец ','Елена','Владимировна','','','14 Тишрея 5735','',''),(4686,5,799,0,'Коломеец ','Елена ','Владимировна','','','14 Тишрея 5735','',''),(4687,5,409,0,'Гороход ','Валентина ','Сергеевна','','','14 Тишрея 5710','',''),(4688,13,413,0,'Гороход ','Валентина ','Сергеевна','','','14 Тишрея 5710','',''),(4689,13,410,0,'Гороход ','Елена ','Анатольевна','','','7 Элула 5734','',''),(4690,5,1574,0,'Таранец ','Ирина ','Николаевна','','','15 Тамуза 5718','',''),(4691,5,1573,0,'Таранец ','Ирина ','Николаевна','','','15 Тамуза 5718','',''),(4692,3,1773,0,'Черноморец','Руслан ','Алексеевич','','','12 Тевета 5740','',''),(4693,6,1773,0,'Черноморец','Алексей ','Александрович','','','28 Тевета 5717','',''),(4694,22,1774,0,'Черноморец','Алексей ','Александрович','','','28 Тевета 5717','',''),(4695,2,1774,0,'Черноморец','Руслан ','Алексеевич','','','12 Тевета 5740','',''),(4696,6,893,0,'Больба ','Леонид ','Васильевич','','','29 Тишрея 5726','',''),(4697,3,893,0,'Больба ','Дмитрий','Леонидович','','','18 Ава 5758','',''),(4698,13,892,0,'Больба ','Леонид ','Васильевич','','','29 Тишрея 5726','',''),(4699,6,891,0,'Больба ','Леонид','Васильевич','','','29 Тишрея 5726','',''),(4700,6,580,0,'Ефременко','Валерий ','Владимирович','','','30 Кислева 5709','',''),(4701,18,451,0,'Ефременко','Валерий','Владимирович','','','30 Кислева 5709','',''),(4702,22,794,0,'Козик ','Татьяна ','Александровна','','','24 Нисана 5721','',''),(4703,5,795,0,'Козик ','Татьяна ','Александровна','','','24 Нисана 5721','',''),(4704,5,609,0,'Кузина','Лариса ','Владимировна','','','26 Тевета 5714','',''),(4705,6,1469,0,'Сергиенко','Владмимир ','Михайлович','','','8 Тевета 5724','',''),(4706,13,1470,0,'Сергиенко','Владимир ','Михайлович','','','8 Тевета 5724','',''),(4707,6,1543,0,'Степовой ','Леонид ','Дмитриевич','','','8 Швата 5724','',''),(4708,2,716,0,'Карп ','Дмитрий ','Аркадьевич','','','6 Тишрея 5742','',''),(4709,2,1423,0,'Савинская','Инесса ','Александровна','','','29 Ава 5712','',''),(4710,22,809,0,'Фельде ','Виктор ','Николаевич','','','12 Хешвана 5740','',''),(4711,22,809,0,'Фельде ','Николай ','Николаевич','','','19 Тишрея 5739','',''),(4712,2,810,0,'Фельде ','Николай','','','','19 Тишрея 5739','',''),(4713,2,810,0,'Фельде ','Виктор','','','','12 Хешвана 5740','',''),(4714,2,3,0,'Уварова','Ирина ','Владимировна','','','17 Хешвана 5719','',''),(4715,2,546,0,'Дубинская','Алена ','Станиславовна','','','4 Ияра 5743','',''),(4716,22,1874,0,'Сельская ','Светлана ','Николаевна','','','2 Швата 5700','',''),(4717,22,1876,0,'Сельская ','Светлана ','Николаевна','','','2 Швата 5700','',''),(4718,2,975,0,'Черненко ','Марина ','Александровна','','','2 Тишрея 5732','',''),(4719,2,973,0,'Черненко ','Мария ','Александровна','','','2 Тишрея 5732','',''),(4720,3,562,0,'Черненко ','Мария ','Александровна','','','2 Тишрея 5732','',''),(4721,5,237,0,'Бучацкая ','Валентина ','Сергеевна','','','15 Швата 5709','',''),(4722,5,235,0,'Бучацкая ','Валентина ','Сергеевна','','','15 Швата 5709','',''),(4723,13,1536,0,'Стах ','Александр ','Илларионович','','','','',''),(4724,2,665,0,'Морской ','Эдуард ','Константинович ','','','26 Хешвана 5735','',''),(4725,22,1477,0,'Сидоров ','Алексаей ','Владимирович','','','21 Тишрея 5722','',''),(4726,22,1275,0,'Сидоров ','Алексей ','Владимирович','','','21 Тишрея 5722','',''),(4727,13,1396,0,'Ротарь ','Татьяна ','Ивановна','','','1 Элула 5733','',''),(4728,5,1397,0,'Ротарь ','Татьяна ','Ивановна','','','3 Тишрея 5734','',''),(4729,5,1395,0,'Ротарь ','Татьяна','Ивановна','','','1 Элула 5733','',''),(4730,13,1546,0,'Студенцов','Игорь ','Георгиевич','','','3 Нисана 5731','',''),(4731,19,1663,0,'Студенцов','Игорь ','Георгиевич','','','3 Нисана 5731','',''),(4732,6,258,0,'Шмуклер ','Александр ','Семенович','','','4 Кислева 5769','',''),(4733,5,1358,0,'Радо ','Елена ','Соломоновна','','','11 Швата 5695','',''),(4734,18,1364,0,'Гичун','Наталья ','Васильевна','','','24 Кислева 5714','',''),(4735,13,268,0,'Величко ','Наталья','Александровна','','','4 Нисана 5735','',''),(4736,5,271,0,'Величко ','Наталья','Александровна','','','4 Нисана 5735','',''),(4737,22,1442,0,'Сапко','Алла ','Николаевна','','','19 Швата 5719','',''),(4738,5,1440,0,'Сапко','Алла ','Николаевна','','','19 Швата 5719','',''),(4739,5,1441,0,'Сапко','Алла ','Николаевна','','','19 Швата 5719','',''),(4740,19,1038,0,'Маленкова','Нталья ','Владимировна','','','26 Тевета 5720','',''),(4741,19,1038,0,'Маленкова','Инна ','Николаевна','','','','',''),(4742,6,1034,0,'Маленков ','Генрих ','Федорович','','','22 Швата 5687','',''),(4743,22,1034,0,'Маленкова','Инна ','Николаевна','','','','',''),(4744,18,1037,0,'Маленков ','Генрих ','Федорович','','','22 Швата 5687','',''),(4745,5,1037,0,'Маленкова','Инна ','Николаевна','','','','',''),(4746,22,1035,0,'Маленкова','Наталья ','Владимировна','','','26 Тевета 5720','',''),(4747,22,1035,0,'Маленкова','Инна ','Николаевна','','','','',''),(4748,21,1036,0,'Маленкова','Инна ','Николаевна','','','','',''),(4749,18,1036,0,'Маленков ','Генрих','Федорович','','','22 Швата 5687','',''),(4750,5,1036,0,'Маленкова','Наталья ','Владимировна','','','26 Тевета 5720','',''),(4751,13,675,0,'Иоффе','Галина ','Владимировна','','','19 Тишрея 5739','',''),(4752,6,366,0,'Гололобов','Александр ','Павлович','','','9 Тамуза 5694','',''),(4753,18,367,0,'Гололобов','Александр ','Павлович','','','9 Тамуза 5694','',''),(4754,22,796,0,'Якубовский','Александр ','Иванович','','','26 Тевета 5714','',''),(4755,3,1283,0,'Анпилогова ','Инна ','Григорьевна','','','16 Тевета 5729','',''),(4756,22,1283,0,'Анпилогова ','Диана ','Олеговна','','','11 Тевета 5766','',''),(4757,22,1283,0,'Анпилогов','Станислав ','Олегович','','','2 Элула 5751','',''),(4758,22,1283,0,'Анпилогов','Олег ','Леонидович','','','11 Ава 5725','',''),(4759,5,358,0,'Гичун','Наталья ','Васильевна','','','24 Кислева 5714','',''),(4760,22,1365,0,'Гичун','Наталья ','Васильевна','','','24 Кислева 5714','',''),(4761,6,498,0,'Демидов ','Евгений ','Анатольевич','','','1 Ава 5728','',''),(4762,22,499,0,'Демидов ','Евгений ','Анатольевич','','','1 Ава 5728','',''),(4763,5,1401,0,'Рубинская','Лариса ','Валерьевна','','','','',''),(4764,6,1401,0,'Рубинский','Дмитрий ','Михайлович','','','','',''),(4765,5,1807,0,'Шафран ','Татьяна ','Азаровна','','','','',''),(4766,6,1807,0,'Шафран ','Евгений ','Львович','','','','',''),(4767,6,34,0,'Аржавичев','Владимир ','Александрович','','','','',''),(4768,6,1326,0,'Анпилогов','Олег ','Леонидович','','','11 Ава 5725','',''),(4769,3,1326,0,'Анпилогов',' Станислав ','Олегович','','','2 Элула 5751','',''),(4770,3,1326,0,'Анпилогова ','Диана ','Олеговна','','','11 Тевета 5766','',''),(4771,5,1326,0,'Анпилогова ','Инна ','Григорьевна','','','16 Тевета 5729','',''),(4772,6,158,0,'Раскин ','Леонид ','Ильич','','','1 Ияра 5686','',''),(4773,6,95,0,'Белобородов','Аркадий ','Иосифович','','','','',''),(4774,5,95,0,'Белобородова','Майя','Васильевна','','','','',''),(4775,2,343,0,'Гаренко ','Николай ','Николаевич','','','','',''),(4776,5,690,0,'Каганович','Валентина','Ивановна','','','','',''),(4777,2,757,0,'Кислова ','Дарья Григорьевна','Григорьевна','','','','',''),(4778,2,824,0,'Шистя','Людмила','','','','','',''),(4779,2,955,0,'Трофимови','Виктория Станиславоввна','Станиславоввна','','','','',''),(4780,2,964,0,'Литвиненко','Евгений Эдудардович','Эдудардович','','','27 Сивана 5736','',''),(4781,2,1130,0,'Елисинкова','Татьяна Владимировна','Владимировна','','','','',''),(4782,2,1130,0,'Музыка','Дмитрий Валериевич','Валериевич','','','','',''),(4783,5,1164,0,'Петля','Людмила Петровна','Петровна','','','','',''),(4784,2,1164,0,'Нескреба ','Петр Владимирович','Владимирович','','','','',''),(4785,5,1259,0,'Петля','Людмила Петровна','Петровна','','','','',''),(4786,5,1258,0,'Петля','Людмила Петровна','Петровна','','','','',''),(4787,6,1260,0,'Петля','Юрий Фомич','Фомич','','','','',''),(4788,5,1260,0,'Петля','Людмила Петровна','Петровна','','','','',''),(4789,5,1378,0,'Репхина-Жукова','Элла Ромовна','Ромовна','','','','',''),(4790,5,1776,0,'Мозговая ','Любовь В','Вольфовна','','','','',''),(4791,22,1776,0,'Чесноков ','Сергей Викторович','Викторович','','','','',''),(4792,6,1775,0,'Чесноков ','Сергей Викторович','Викторович','','','','',''),(4793,5,1706,0,'Мозговая ','Любовь Вольфовна','Вольфовна','','','','',''),(4794,22,1706,0,'Филиппов ','Игорь Иванович','Иванович','','','','',''),(4795,6,1704,0,'Филиппов ','Игорь Иванович','Иванович','','','','',''),(4796,6,1705,0,'Филиппов ','Игорь Иванович','Иванович','','','','',''),(4797,6,296,0,'Власов ','Анатолий Николаевич','Николаевич','','','','',''),(4798,6,1293,0,'Подгур ','Анатолий Израилович','Израилович','','','','',''),(4799,5,1293,0,'Подгур ','Эсфирь Ионовна','Ионовна','','','','',''),(4800,18,1241,0,'Парфенов ','Анатолий ','Николаевич','','','','',''),(4801,19,10,0,'Акерман','Наталья','Ивановна','','','5 Тевета 3760','',''),(4802,13,53,0,'Рыжова ','Ольга ','Ивановна','','','5 Тевета 3760','',''),(4803,2,333,0,'Морской','Эдуард ','Константинович','','','в Израиле','',''),(4804,6,1735,0,'Фризен ','Роман ','Станиславович','','','17 Тишрея 5738','',''),(4805,12,909,0,'Лайкунас ','Евгений Сергеевич','Сергеевич','','','','',''),(4806,12,909,0,'Лайкунас ','София ','Евгеньевна','','','','',''),(4807,13,1305,0,'Полнарёва','Антонина ','Степановна','','','19 Тевета 5709','',''),(4808,6,943,0,'Лернер ','Евгений','Абрамович','','','8 Тишрея 5717','',''),(4809,5,1022,0,'Макиевская','Надежда ','Борисовна','','','13 Хешвана 5716','',''),(4810,12,1145,0,'Трухин ','Александр','','','','','',''),(4811,2,1145,0,'Трухина','Наталья ','Владимировна','','','','',''),(4812,2,1146,0,'Трухина','Наталья ','Владимировна','','','','',''),(4813,2,1196,0,'Окунь ','Михаил ','Исаевич','','','','',''),(4814,12,1196,0,'Окунь ','Ирина ','Михайловна','','','','',''),(4815,12,1232,0,'Паржецкий','Алексей ','Андреевич','','','','',''),(4816,12,1232,0,'Паржецкий','Никита ','Андреевич','','','','',''),(4817,2,1232,0,'Паржецкий','Андрей ','Аркадьевич','','','','',''),(4818,6,1238,0,'Парфенов ','Анатолий ','Николаевич','','','','',''),(4819,13,1242,0,'Парфенов ','Анатолий','Николаевич','','','5 Тевета 3760','',''),(4820,2,1242,0,'Парфенов ','Юрий ','Анатольевич','','','','',''),(4821,2,1321,0,'Ткачева','Ирина ','Игоревна','','','','',''),(4822,12,1321,0,'Ткачев ','Евгений ','Олегович','','','','',''),(4823,2,1321,0,'Прагин ','Юрий ','Игоревич','','','','',''),(4824,13,1367,0,'Раскин ','Леонид ','Ильич','','','1 Ияра 5686','',''),(4825,12,1368,0,'Баданов','Сергей ','Валерьевич','','','','',''),(4826,2,1368,0,'Баданова ','Мария','','','','','',''),(4827,18,1455,0,'Кузьменко','Елена ','Ильинична','','','','',''),(4828,5,1454,0,'Кузьменко','Елена ','Ильинична','','','','',''),(4829,3,1516,0,'Соловьев ','Валерий ','Валериевич','','','12 Тевета 5746','',''),(4830,5,1842,0,'Шкварцова','Геся ','Моисеевна','','','','',''),(4831,12,819,0,'Кондратенко','В.','В.','','','','',''),(4832,13,1736,0,'Фризен ','Роман','Станиславович','','','17 Тишрея 5738','',''),(4833,12,1352,0,'Губенко','Алиса','Вадимовна','','','','',''),(4834,2,1352,0,'Губенко','Инна','Абрамовна','','','26 Адара 5729','',''),(4835,20,873,0,'Саенко ','Сергей','','','','','',''),(4836,6,365,0,'Гойхман','Михаил ','Исаакович','','','4 Швата 5733','',''),(4837,5,365,0,'Куценко','Майа ','Анатольевна','','','15 Ияра 5733','',''),(4838,5,1853,0,'Шнайдерман','Анжела','','','','5 Тевета 3760','',''),(4839,13,1850,0,'Шнайдерман','Анжела','','','','5 Тевета 3760','',''),(4840,2,963,0,'Литвиненко','Евгений ','Эдуардович','','','27 Сивана 5736','',''),(4841,2,1882,0,'Щербакова ','Диана ','Александровна','','','25 Хешвана 5741','',''),(4842,12,974,0,'Черненко ','Мария ','Александровна','','','2 Тишрея 5732','',''),(4843,5,853,0,'Круглова ','Алла ','Юрьевна','','','','',''),(4844,6,400,0,'Гордиенко','Станислав ','Сергеевич','','','27 Ияра 5742','',''),(4845,2,548,0,'Дубровский','Илья','Иванович','','','19 Тевета 5708','',''),(4846,13,1699,0,'Филимонов','Марина','Юриевна','','','5 Тевета 3760','',''),(4847,5,1700,0,'Филимонова','Марина','Юриевна','','','5 Тевета 3760','',''),(4848,13,970,0,'Ломаковский','Дмитрий ','Александрович','','','25 Хешвана 5745','',''),(4849,5,1878,0,'Шульман','Елена ','Дмитриевна','','','23 Хешвана 5720','',''),(4850,6,1878,0,'Шульман','Игорь','Наумович','','','10 Тевета 5719','',''),(4851,6,1366,0,'Раскин ','Леонид ','Ильич','','','1 Ияра 5686','',''),(4852,2,1752,0,'Соловьев ','Валерий ','Валериевич','','','12 Тевета 5746','',''),(4853,13,831,0,'Котельников','Лилия','','','','','',''),(4854,6,764,0,'Клейнер ','Юрий ','Маркусович','','','','',''),(4855,6,971,0,'Ломаковский','Дмитрий','Александрович','','','25 Хешвана 5745','',''),(4856,5,1334,0,'Прошутя ','Ольга','Васильевна','','','24 Адара 5724','',''),(4857,19,1701,0,'Филимонов','Марина','Юриевна','','','5 Тевета 3760','',''),(4858,5,439,0,'Гречин ','Зоя','Самуиловна','','','2 Тишрея 5707','',''),(4859,13,20,0,'Альбермах','Владимир ','Евгеньевич','','','25 Нисана 5720','',''),(4860,2,1808,0,'Швец ','Павел','Викторович','','','8 Хешвана 5738','',''),(4861,2,653,0,'Золотаревский','Михаил ','сергеевич','','','29 Элула 5742','',''),(4862,5,406,0,'Аксоментова','Евгения ','Григорьевна','','','3 Кислева 5694','',''),(4863,18,406,0,'Переплётчикова','Дина ','Марковна','','','6 Швата 5659','',''),(4864,5,1113,0,'Аксоментова ','Евгения','Григорьевна','','','3 Кислева 5694','',''),(4865,6,758,0,'Семений ','Сергей ','Александрович','','','22 Нисана 5715','',''),(4866,5,758,0,'Семений ','Ольга ','Юрьевна','','','5 Ава 5718','',''),(4867,3,758,0,'Семений ','Александр','Сергеевич','','','','',''),(4868,3,575,0,'Ложкина ','Майя ','Игоревна','','','5 Ияра 5739','',''),(4869,2,1787,0,'Чужой','Александр ','Борисович','','','','',''),(4870,6,18,0,'Авдеенко ','Константин ','Константинович','','','19 Нисана 5687','','');
/*!40000 ALTER TABLE `relatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_parts`
--

DROP TABLE IF EXISTS `reports_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_part` varchar(45) NOT NULL COMMENT 'Название части рабочего каталога',
  `description_part` varchar(45) NOT NULL COMMENT 'Описание рабочего каталога',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Части рабочего каталога';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_parts`
--

LOCK TABLES `reports_parts` WRITE;
/*!40000 ALTER TABLE `reports_parts` DISABLE KEYS */;
INSERT INTO `reports_parts` VALUES (1,'ListSelects','Выборки и отчеты'),(5,'ShareReport','Развернутый отчет по операциям'),(6,'Needings','Развернутый отчет по потребностям'),(7,'Changes','Редактирование информации(!!!!!)');
/*!40000 ALTER TABLE `reports_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selects`
--

DROP TABLE IF EXISTS `selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selects` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_select` varchar(45) NOT NULL COMMENT 'Название запроса',
  `description` varchar(45) NOT NULL COMMENT 'Описание запроса',
  `text_select` varchar(1200) NOT NULL COMMENT 'Текст запроса',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='Таблица с запросами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selects`
--

LOCK TABLES `selects` WRITE;
/*!40000 ALTER TABLE `selects` DISABLE KEYS */;
INSERT INTO `selects` VALUES (1,'allpeople','Все члены общины','WHERE dp.id > 0 '),(2,'allmen','Все мужчины','WHERE dp.sex=\"мужской\"'),(3,'allwimen','Все женщины','WHERE dp.sex=\"женский\"'),(4,'allinvalid','Все инвалиды','WHERE dp.invalid=\"on\"'),(5,'allpension','Все пенсионеры','WHERE dp.isretirement=\"on\"'),(6,'allpensionbyage','Все пенсионеры по возрасту','WHERE dp.isretirementbyage=\"on\"'),(7,'allwarparticipants','Все участники ВОВ','WHERE dp.id IN (SELECT dbp.id_people from details_by_people dbp where (id_detail=2 or id_detail=12) and dbp.id_people=dp.id)'),(8,'alleurbym','Все евреи по матери','WHERE dp.eurbymot=\"on\"'),(9,'alleurbymf','Все евреи по матери и отцу','WHERE dp.eurbyfat=\"on\" AND dp.eurbymot=\"on\"'),(10,'allvip','Все VIP','WHERE dp.isvip=\"on\"'),(11,'allhavechild','Все, у кого есть дети','WHERE dp.id IN (SELECT r.id_people from relatives r WHERE r.id_people = dp.id AND (r.id_type_rel = 1) OR (r.id_type_rel = 2))'),(13,'allalone','Все одинокие','WHERE dp.alone=\"on\"'),(14,'allprayer','Все, кто читает ежедневно молитвы','WHERE dp.daily_pray=\"on\"'),(16,'allfree','Все незамужние/неженатые','WHERE ((SELECT GROUP_CONCAT(r.id_type_rel) FROM relatives r WHERE r.id_people=dp.id GROUP BY dp.id) NOT LIKE \"%13%\") AND \n((SELECT GROUP_CONCAT(r.id_type_rel) FROM relatives r WHERE r.id_people=dp.id GROUP BY dp.id) NOT LIKE \"%14%\")'),(17,'allemigr','Все, кто выехал на ПМЖ за границу','WHERE dp.id IN (SELECT a.id_people FROM address a WHERE a.id_people = dp.id AND a.id_type_address=2 AND a.id_country <> 1)'),(21,'datebirthmore','','AND STR_TO_DATE(dp.datebirth, \'%d.%m.%Y\')>STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(22,'datebirthless','','AND STR_TO_DATE(dp.datebirth, \'%d.%m.%Y\')<STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(23,'datebirthident','','AND STR_TO_DATE(dp.datebirth, \'%d.%m.%Y\')=STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(25,'datebirthbetween','','AND (STR_TO_DATE(dp.datebirth, \'%d.%m.%Y\') BETWEEN STR_TO_DATE(\"param0\", \'%d.%m.%Y\') AND STR_TO_DATE(\"param1\", \'%d.%m.%Y\'))'),(26,'detailsin','','AND ((SELECT GROUP_CONCAT(CONCAT(dbp.id_detail,\"=\",dbp.value)) FROM details_by_people dbp WHERE dbp.id_people=dp.id) LIKE \"%param0%\") '),(27,'agemore','','AND (DATE_FORMAT(FROM_DAYS(TO_DAYS(now()) - TO_DAYS(STR_TO_DATE(dp.datebirth,  \'%d.%m.%Y\'))), \'%Y\') + 0)  > param0'),(28,'ageless','','AND (DATE_FORMAT(FROM_DAYS(TO_DAYS(now()) - TO_DAYS(STR_TO_DATE(dp.datebirth,  \'%d.%m.%Y\'))), \'%Y\') + 0)  < param0'),(29,'ageident','','AND (DATE_FORMAT(FROM_DAYS(TO_DAYS(now()) - TO_DAYS(STR_TO_DATE(dp.datebirth,  \'%d.%m.%Y\'))), \'%Y\') + 0)  = param0'),(30,'agebetween','','AND (YEAR(NOW()) - YEAR(STR_TO_DATE(dp.datebirth,  \'%d.%m.%Y\'))) BETWEEN param0 AND param1'),(31,'progsin','','AND dp.id IN \n(SELECT pp.id_people FROM prog_participant pp \nWHERE pp.id_help IN (param0) or pp.id_prog in (select id from help_prog where id_help = param0) \nGROUP BY pp.id_people)'),(32,'sexident','','AND dp.sex=\"param0\"'),(33,'alldeath','Все умершие','WHERE dp.datedeath <> \"\"'),(34,'datedeathbetween','','AND (STR_TO_DATE(dp.datedeath, \'%d.%m.%Y\') BETWEEN STR_TO_DATE(\"param0\", \'%d.%m.%Y\') AND STR_TO_DATE(\"param1\", \'%d.%m.%Y\'))'),(35,'datedeathmore','','AND STR_TO_DATE(dp.datedeath, \'%d.%m.%Y\')>STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(36,'datedeathless','','AND STR_TO_DATE(dp.datedeath, \'%d.%m.%Y\')<STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(37,'datedeathident','','AND STR_TO_DATE(dp.datedeath, \'%d.%m.%Y\')=STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(38,'datememberbetween','','AND (STR_TO_DATE(dp.member_from, \'%d.%m.%Y\') BETWEEN STR_TO_DATE(\"param0\", \'%d.%m.%Y\') AND STR_TO_DATE(\"param1\", \'%d.%m.%Y\'))'),(39,'datemembermore','','AND STR_TO_DATE(dp.member_from, \'%d.%m.%Y\')>STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(40,'datememberless','','AND STR_TO_DATE(dp.member_from, \'%d.%m.%Y\')<STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(41,'datememberident','','AND STR_TO_DATE(dp.member_from, \'%d.%m.%Y\')=STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(42,'datelastupdbetween','','AND (STR_TO_DATE(dp.dt_update, \'%d.%m.%Y\') BETWEEN STR_TO_DATE(\"param0\", \'%d.%m.%Y\') AND STR_TO_DATE(\"param1\", \'%d.%m.%Y\'))'),(43,'datelastupdmore','','AND STR_TO_DATE(dp.dt_update, \'%d.%m.%Y\')>STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(44,'datelastupdless','','AND STR_TO_DATE(dp.dt_update, \'%d.%m.%Y\')<STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(45,'datelastupdident','','AND STR_TO_DATE(dp.dt_update, \'%d.%m.%Y\')=STR_TO_DATE(\"param0\", \'%d.%m.%Y\')'),(46,'monthdeathbetween','','AND MONTH(STR_TO_DATE(dp.datedeath,\'%d.%m.%Y\')) BETWEEN param0 AND param1'),(47,'monthdeathmore','','AND MONTH(STR_TO_DATE(dp.datedeath,\'%d.%m.%Y\')) > param0'),(48,'monthdeathless','','AND MONTH(STR_TO_DATE(dp.datedeath,\'%d.%m.%Y\')) < param0'),(49,'monthdeathident','','AND MONTH(STR_TO_DATE(dp.datedeath,\'%d.%m.%Y\')) = param0'),(50,'monthbirthbetween','','AND MONTH(STR_TO_DATE(dp.datebirth,\'%d.%m.%Y\')) BETWEEN param0 AND param1'),(51,'monthbirthmore','','AND MONTH(STR_TO_DATE(dp.datebirth,\'%d.%m.%Y\')) > param0'),(52,'monthbirthless','','AND MONTH(STR_TO_DATE(dp.datebirth,\'%d.%m.%Y\')) < param0'),(53,'monthbirthident','','AND MONTH(STR_TO_DATE(dp.datebirth,\'%d.%m.%Y\')) = param0 ');
/*!40000 ALTER TABLE `selects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showing`
--

DROP TABLE IF EXISTS `showing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `idtypeelement` int(11) NOT NULL COMMENT 'Тип элемена (поле таблицы БД, поле визуальное, вкладка, поле таблицы) поле ID в таблице typeelement',
  `idelement` int(11) NOT NULL COMMENT 'Идентификатор элемента (код элемента в его окружении)',
  `idcondition` int(11) NOT NULL COMMENT 'Идентификтар условий видимости (id в таблице condshowing)',
  `showing` int(1) NOT NULL COMMENT 'Значение видимости (0 - невидимый, 1 - видимый)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='Таблица видимости полей и элементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showing`
--

LOCK TABLES `showing` WRITE;
/*!40000 ALTER TABLE `showing` DISABLE KEYS */;
INSERT INTO `showing` VALUES (1,1,1,1,1),(2,1,2,1,1),(3,1,3,1,1),(4,1,9,1,1),(7,2,1,2,1),(8,2,2,2,1),(9,2,3,2,1),(10,2,4,2,1),(11,2,5,2,1),(12,2,6,2,1),(13,2,7,2,1),(14,2,8,2,1),(15,2,9,2,1),(16,2,10,2,1),(17,2,11,2,1),(18,3,1,3,1),(19,3,2,3,1),(20,3,3,3,1),(21,3,4,3,1),(22,3,5,3,1),(23,3,6,3,1),(24,3,7,3,1),(25,3,8,3,1),(26,3,9,3,1),(27,3,10,3,1),(28,3,11,3,1),(29,2,17,2,1),(30,2,19,2,1),(31,1,22,1,0),(32,3,17,3,1),(33,3,19,3,1),(34,1,23,1,0),(35,2,24,2,1),(36,2,25,2,1),(37,1,27,1,1),(38,1,28,1,1),(39,2,27,2,1),(40,2,28,2,1),(41,1,29,1,0),(42,1,20,1,1),(43,1,21,1,1),(45,2,20,2,1),(46,2,21,2,1),(47,1,30,1,1),(48,1,31,1,1),(49,1,32,1,0),(50,2,30,2,1),(51,2,31,2,1),(52,1,33,1,1),(53,1,34,1,1),(54,1,35,1,1),(55,1,36,1,1),(56,1,37,1,0),(57,2,33,2,1),(58,2,34,2,1),(59,2,35,2,1),(60,2,36,2,1),(61,1,38,1,1),(62,1,39,1,1),(63,1,40,1,1),(64,1,41,1,1),(65,1,42,1,0),(66,2,38,2,1),(67,2,39,2,1),(68,2,40,2,1),(69,2,41,2,1),(70,1,43,1,1),(71,1,44,1,1),(72,1,45,1,0),(73,2,43,2,1),(74,2,44,2,1),(75,1,46,1,1),(76,1,47,1,1),(77,1,48,1,0),(78,2,46,2,1),(79,2,47,2,1),(80,1,49,1,1),(81,1,50,1,1),(82,1,51,1,0),(83,2,49,2,1),(84,2,50,2,1),(85,1,52,1,1),(86,1,53,1,0),(87,2,52,2,1),(88,1,54,1,1),(89,1,55,1,1),(90,1,56,1,1),(91,1,57,1,1),(92,1,58,1,0),(93,2,54,2,1),(94,2,55,2,1),(95,2,56,2,1),(96,2,57,2,1),(97,1,59,1,1),(98,1,60,1,1),(99,1,61,1,0),(100,2,59,2,1),(101,2,60,2,1),(102,1,62,1,1),(103,1,63,1,1),(104,1,64,1,1),(105,1,65,1,1),(106,1,66,1,0),(107,2,62,2,1),(108,2,63,2,1),(109,2,64,2,1),(110,2,65,2,1),(111,1,67,1,1),(112,1,68,1,0),(113,2,67,2,1),(114,1,69,1,1),(115,1,70,1,1),(116,1,71,1,0),(117,2,69,2,1),(118,2,70,2,1);
/*!40000 ALTER TABLE `showing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sklad`
--

DROP TABLE IF EXISTS `sklad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sklad` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_prog_pos` int(11) NOT NULL COMMENT 'Идентификатор позиции партнерской программы, таблица help_prog_pos',
  `amount` varchar(45) DEFAULT NULL COMMENT 'Количество единиц',
  `price` varchar(45) DEFAULT NULL COMMENT 'Цена единицы',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица остатков материальных благ по каждому пункту партнерской программы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sklad`
--

LOCK TABLES `sklad` WRITE;
/*!40000 ALTER TABLE `sklad` DISABLE KEYS */;
/*!40000 ALTER TABLE `sklad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор таблицы',
  `name` varchar(45) NOT NULL DEFAULT 'Table' COMMENT 'Имя таблицы',
  `description` varchar(100) NOT NULL COMMENT 'Описание таблицы',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Перечень таблиц системы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,'dir_people','Члены общины'),(2,'dir_country','Страны'),(3,'dir_obl','Области'),(4,'pages','Номера вкладок-поля, на которых вкладки расположены'),(5,'dir_city','Населенные пункты'),(6,'dir_street','Улицы'),(7,'dir_educationplace','Учебные заведения'),(8,'dir_grade','Ученые степени'),(9,'dir_rayon','Районы'),(10,'dir_social','Социальные положения'),(12,'dir_type_address','Вид адреса'),(13,'dir_type_district','Виды населенных пунктов'),(14,'dir_type_relative','Степени родства'),(15,'dir_type_street','Виды улиц'),(16,'dir_typeeducation','Виды образования'),(17,'dir_details','Детали');
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_mappoint`
--

DROP TABLE IF EXISTS `type_mappoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_mappoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `name_type_mappoint` varchar(45) NOT NULL COMMENT 'Название типа точки (дом.адрес, место работы и т.д.)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Перечень типов отметок на карте';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_mappoint`
--

LOCK TABLES `type_mappoint` WRITE;
/*!40000 ALTER TABLE `type_mappoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_mappoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeelement`
--

DROP TABLE IF EXISTS `typeelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeelement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `description` varchar(100) NOT NULL COMMENT 'Описание элемента ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Таблица типов елементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeelement`
--

LOCK TABLES `typeelement` WRITE;
/*!40000 ALTER TABLE `typeelement` DISABLE KEYS */;
INSERT INTO `typeelement` VALUES (1,'Колонка в табличном представлении справочника'),(2,'Поле в форме добавл/редакт'),(3,'Поле БД'),(4,'Вкладка');
/*!40000 ALTER TABLE `typeelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `user_name` varchar(45) NOT NULL COMMENT 'Имя пользователя',
  `user_password` varchar(45) NOT NULL COMMENT 'Пароль пользователя',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Таблица пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ALENA','15051991');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `value` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор записи',
  `id_table` int(11) NOT NULL COMMENT 'Идентификатор таблицы',
  `id_field` int(11) NOT NULL COMMENT 'Идентификатор поля',
  `value` text NOT NULL COMMENT 'Значение поля',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Значения в таблице';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (1,1,1,'Иванов'),(2,1,2,'Иван'),(3,1,3,'Иванович'),(4,1,4,' '),(5,1,5,'01.01.1990'),(6,4,14,'1'),(7,4,15,'1'),(8,4,16,'1'),(9,4,14,'1'),(10,4,15,'2'),(11,4,16,'1'),(12,4,14,'1'),(13,4,15,'3'),(14,4,16,'1'),(15,4,14,'1'),(16,4,15,'4'),(17,4,16,'2');
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-17 11:54:45

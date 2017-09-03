-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ict_calas
-- ------------------------------------------------------
-- Server version	10.1.25-MariaDB-

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calas`
--

DROP TABLE IF EXISTS `calas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calas` (
  `nim` char(10) NOT NULL,
  `nama_depan` varchar(35) NOT NULL,
  `nama_belakang` varchar(35) NOT NULL,
  `kode_fakultas` varchar(5) NOT NULL,
  `id_prodi` tinyint(2) unsigned NOT NULL,
  `telephone` varchar(17) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `angkatan` year(4) NOT NULL DEFAULT '2016',
  `gelombang` tinyint(1) NOT NULL DEFAULT '1',
  `waktu_pendaftaran` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nim`,`kode_fakultas`,`id_prodi`),
  UNIQUE KEY `nim` (`nim`),
  KEY `FK_FAKULTAS_2` (`kode_fakultas`),
  KEY `FK_PRODI_1` (`id_prodi`),
  CONSTRAINT `FK_FAKULTAS_2` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODI_1` FOREIGN KEY (`id_prodi`) REFERENCES `program_studi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calas`
--

LOCK TABLES `calas` WRITE;
/*!40000 ALTER TABLE `calas` DISABLE KEYS */;
INSERT INTO `calas` VALUES ('1512502608','asf','fas','ASTRI',1,'123123','sdasdas@fasfsfasfas.com',2017,3,'2017-04-27 12:46:14'),('1513868767','rteterat','fdgfdg','FTI',15,'0','ewrwe@rerr.com',2017,3,'2017-09-03 11:36:20'),('1611500016','sahivudin','udin','FTI',13,'08971817734','sahivudin.udin35@gmail.com',2016,1,'2016-08-29 16:12:21'),('1611500032','Alvin','Ramadhan','FTI',13,'08989860937','ramadhan.alvin43@gmail.com',2016,1,'2016-08-29 15:10:25'),('1611500040','randy','farhan','FTI',13,'6','randyfp2@gmail.com',2016,1,'2016-08-29 15:04:56'),('1611500057','fransiscus','galang','FTI',13,'081295288603','yogapratama427@gmail.com',2016,1,'2016-08-29 15:26:23'),('1611500370','handika','prasetyo','FTI',13,'082114078145','handikaprasetyo60@gmail.com',2016,1,'2016-08-29 15:27:41'),('1611500421','Hadi','Fauzi','FTI',13,'081288872144','hadirivaldi26@gmail.com',2016,1,'2016-08-29 15:28:45'),('1611500438','riski ','amalia','FTI',13,'089661760179','aamalia90@gmail.com',2016,1,'2016-08-29 15:43:17'),('1611500503','Gunawan Danar J','Danar','FTI',13,'082213249515','dhanarrgunawan@gmail.com',2016,1,'2016-08-29 16:00:52'),('1611500636','budi','setiyawan','FTI',13,'085921048280','budisetiyawan134@yahoo.com',2016,1,'2016-08-29 15:38:03'),('1611500693','rion ','aztin','FTI',13,'089521115011','zexalbeast@gmail.com',2016,1,'2016-08-29 15:19:28'),('1611500719','Kukuh Yoga Rizki','Ananda','FTI',13,'089601087491','darknesschange123@gmail.com',2016,1,'2016-08-29 15:50:49'),('1611500750','Gilang Aulia','Akbar','FTI',13,'081294172202','gilangaa11@yahoo.com',2016,1,'2016-08-29 16:12:27'),('1611500792','Priambodo','Kuntorojati','FTI',13,'085771982841','priambodo917@gmail.com',2016,1,'2016-08-29 15:31:07'),('1611500867','ihsan','kamil','FTI',13,'085777099693','kmltjs@gmail.com',2016,1,'2016-08-29 15:30:04'),('1611500891','Zasda','Yusuf Mikail','FTI',13,'083898020667','zasdaym@gmail.com',2016,1,'2016-08-29 15:32:59'),('1611500917','Muhanmad','Yunan','FTI',13,'085213376641','yunanadjie@yahoo.co.id',2016,1,'2016-09-07 11:52:24'),('1611500990','sahril','sabirin','FTI',13,'08284652518','sahrilsabirin131@gmail.com',2016,1,'2016-08-29 15:38:36'),('1611501006','Muhammad','Fachrizal','FTI',13,'087888708279','mfachrizal17@gmail.com',2016,1,'2016-08-29 15:41:42'),('1611501055','ari','zakaria','FTI',13,'082240100136','arizakariaa@gmail.com',2016,1,'2016-08-29 15:48:47'),('1611501063','Nico','Gustav','FTI',13,'083873397901','nicogustav@gmail.com',2016,1,'2016-08-29 15:39:53'),('1611501105','aditya','alfarizky','FTI',13,'085691985071','aditya.alfarizky1620@gmail.com',2016,1,'2016-08-29 15:27:56'),('1611501196','putra','wibisono','FTI',13,'085939566986','putrarenesme@gmail.com',2016,1,'2016-08-29 15:41:18'),('1611501220','Rafi','Ramadhan','FTI',13,'082210225198','rfrmdhn17@gmail.com',2016,1,'2016-08-29 15:48:53'),('1611501246','Kurnia','Ramadhan','FTI',13,'089513812648','jhonwesker100@gmail.com',2016,1,'2016-08-29 16:05:38'),('1611501329','lega','debrion','FTI',13,'087808328970','legaroki@gmail.com',2016,1,'2016-08-29 15:10:49'),('1611501444','muhammad','Rinaldy','FTI',13,'081282891322','aldy10th@gmail.com',2016,1,'2016-08-29 15:39:44'),('1611501451','sindu ','argo','FTI',13,'085789630761','sindu.argo225@gmail.com',2016,1,'2016-09-07 11:56:42'),('1611501477','muhammad galih','satria','FTI',13,'087808505741','muhammadgalihsatria@gmail.com',2016,1,'2016-08-29 15:49:57'),('1611501535','ferdy muhammad ','iqbal','FTI',13,'083813257580','ferdyzonesnow@gmail.com',2016,1,'2016-08-29 16:04:44'),('1611501618','ramdan','darmawan','FTI',13,'082210001698','ramdandarmawan44@gmail.com',2016,1,'2016-09-08 11:32:20'),('1611501626','Don aria','Sabda','FTI',13,'08979141257','donpaskapor@yahoo.com',2016,1,'2016-08-29 16:00:40'),('1611501667','supriadinata','antonius manulangfa','FTI',13,'082165758118','adisupri43@ymail.com',2016,1,'2016-08-29 15:20:47'),('1611501733','addham pasha','Baihaqqi','FTI',13,'089621418130','pashabaihaqqi72@gmail.com',2016,1,'2016-08-29 15:17:00'),('1611501741','Jordy','Reawaruw','FTI',13,'085354046487','jordyrea.jr@gmail.com',2016,1,'2016-08-29 15:40:17'),('1611501766','riko','khoirul','FTI',13,'087889557473','rikokhoirul@gmail.com',2016,1,'2016-08-29 15:37:18'),('1611501865','wahyu','putra anggara','FTI',13,'085883426283','wahyup1275@gmail.com',2016,1,'2016-08-29 15:16:21'),('1611501873','Julio','Permana','FTI',13,'08988872424','kloursblack@gmail.com',2016,1,'2016-08-29 15:25:15'),('1611501899','Muhamad','Nauvaldy','FTI',13,'08977183725','muhamadnauvaldy@yahoo.com',2016,1,'2016-08-29 15:23:50'),('1611501915','muhamad nur ','iman fauzi','FTI',13,'081296644360','muhamadnurimanfauzi@yahoo.com',2016,1,'2016-08-29 15:17:54'),('1611501931','Hibat','ullah','FTI',13,'087777251473','hibataja71@gmail.com',2016,1,'2016-08-29 15:30:47'),('1611501972','Mochammad Rizky','Royani','FTI',13,'081284092462','rizkyroyani5913@gmail.com',2016,1,'2016-08-29 15:16:46'),('1611502038','kiannur','niarlis','FTI',13,'082113949948','kiann376@gmail.com',2016,1,'2016-08-29 15:36:09'),('1611502137','Muhamad','Ilham Ramadhan','FTI',13,'089678478275','ilhamramadhan928@gmail.com',2016,1,'2016-08-29 15:36:37'),('1611502269','nurcholis','rachman','FTI',13,'089630260118','rachmannurcholis@gmail.com',2016,1,'2016-08-29 15:38:47'),('1611502293','rangga','aditya','FTI',13,'082220831939','rangga.adt69@gmail.com',2016,1,'2016-08-29 15:00:16'),('1611502319','septian tri','widodo','FTI',13,'089648554825','dodopes.sd@gmail.com',2016,1,'2016-08-29 15:39:25'),('1611502343','Achmad','Abdul Aziz','FTI',13,'08567399320','aaaziz1998@gmail.com',2016,1,'2016-08-29 15:47:00'),('1611502350','giri','sarah','FTI',13,'08111888206','giri.sarah200798@yahoo.com',2016,1,'2016-08-29 15:45:41'),('1611502376','Ibrahim','Ahmad','FTI',13,'087809974805','ibrahim.ahmad58@gmail.com',2016,1,'2016-08-29 15:50:36'),('1611502418','muhammad','gusti ramadhan','FTI',13,'087809300705','gustiramadhan57@gmail.com',2016,1,'2016-08-29 15:20:06'),('1611502483','Mekar Bunga Allamanda','Rosul','FTI',13,'08995812918','mekar.bunga.a.r@gmail.com',2016,1,'2016-08-29 15:32:52'),('1611502533','djaelani','djauhari','FTI',13,'089671005187','jakakamal305@yahoo.co.id',2016,1,'2016-08-29 16:12:20'),('1611502558','Muhammad Reza','Alifanza','FTI',13,'089654660775','robbyacon@gmail.com',2016,1,'2016-08-29 15:44:01'),('1611502566','resi','hammer rabanni','FTI',13,'085831573566','resihammer202@gmail.com',2016,1,'2016-08-29 15:59:56'),('1611502574','teuku','johansyah','FTI',13,'082311108430','teuku.johansyah@yahoo.com',2016,1,'2016-08-29 15:42:27'),('1611502582','hilal','falah','FTI',13,'081311001373','hilalfalah@gmail.com',2016,1,'2016-08-29 15:44:07'),('1611502608','Valdy','Febrianto Pratama','FTI',13,'081513769582','valdyfebriantopratama@gmail.com',2016,1,'2016-08-29 15:24:36'),('1611502632','hira','wirawan','FTI',13,'081287400301','hirawan1997@gmail.com',2016,1,'2016-08-29 15:54:20'),('1611502657','novia rana','fadhils','FTI',13,'089696181187','novi.rana1@gmail.com',2016,1,'2016-08-29 15:15:25'),('1611502699','Hardi','setiawan','FTI',13,'089622888082','hardysetiawan31@gmail.com',2016,1,'2016-08-29 15:21:09'),('1611502756','dea','rosidi','FTI',13,'081212443089','dearasidi@ymail.com',2016,1,'2016-08-29 15:48:39'),('1611502889','Reno','kristianto','FTI',13,'089661925549','renokristianto63@yahoo.com',2016,1,'2016-08-29 15:28:13'),('1611502897','Sri','Wulandari','FTI',13,'081223028558','sriw25515@gmail..com',2016,1,'2016-08-29 15:49:58'),('1611503036','Sigit Suryo','Utomo','FTI',13,'082297118945','sigitsuryo@yahoo.co.id',2016,1,'2016-08-31 12:26:43'),('1611503127','aldy','suryanto','FTI',13,'085777609992','aldysuryanto009@gmail.com',2016,1,'2016-08-29 15:24:22'),('1612500049','Bonario','Simanjuntak','FTI',14,'0','riosmnjtk@gmail.com',2016,1,'2016-08-29 15:10:40'),('1612500254','egalia','noviyanti','FTI',14,'082112309553','egalianoviyanti@gmail.com',2016,1,'2016-08-29 16:09:01'),('1612500270','virgiawan','mikola','FTI',14,'082260144769','virgiawanmikola@yahoo.com',2016,1,'2016-08-31 12:54:25'),('1612500361','medy','muharram','FTI',13,'082211116769','muharrammedy@gmail.com',2016,1,'2016-08-29 15:26:49'),('1612500387','Dandy','Rizki','FTI',14,'085776101664','dandyrizki66@gmail.com',2016,1,'2016-08-29 15:30:58'),('1612500569','harpin','muhammad yunus','FTI',14,'089508143584','harfinmuhamad@gmail.com',2016,1,'2016-08-29 16:13:51'),('1612500577','arya ismi','putra','FTI',14,'081297880647','aryaismiputra98@gmail.com',2016,1,'2016-08-31 12:23:43'),('1612500635','Muhammad','luthfan','FTI',13,'087889355180','lutfan.fadillah@gmail.com',2016,1,'2016-08-29 15:24:43'),('1612500734','alvina','mirdania','FTI',14,'081289070384','alvinamirdania90@gmail.com',2016,1,'2016-08-29 15:48:45'),('1612500858','suhardiyanto',' ','FTI',14,'081283873806','suhardiantoy@gmail.com',2016,1,'2016-08-29 15:23:14'),('1612500866','alfath','gilang','FTI',13,'0','alfathgilang44@gmail.com',2016,1,'2016-08-29 15:16:26'),('1612501211','adi','maulana','FTI',14,'089525314009','adiskytone07@gmail.com',2016,1,'2016-08-31 12:23:26'),('1612501286','Septiya','Hiryani','FTI',13,'085691800935','septiyahiryani8@gmail.com',2016,1,'2016-08-29 15:44:07'),('1612501393','djoelyo','andreas','FTI',13,'085945141677','julioandreas17@gmail.com',2016,1,'2016-08-29 15:18:25'),('1612501468','M Febriyan','Dwiki P','FTI',13,'085921504142','smkn3riyan@gmail.com',2016,1,'2016-08-29 16:04:50'),('1612501518','giatna','ganda','FTI',14,'0','ganda_giatna@yahoo.co.id',2016,1,'2016-08-29 15:36:42'),('1612501591','Anfelias','Kassa','FTI',13,'0','anfelsss92@gmail.com',2016,1,'2016-08-29 15:48:12'),('1612501682','galih','adityawarman','FTI',14,'085697902058','galihaditya2006@gmail.com',2016,1,'2016-08-29 15:19:32'),('1612501690','muhammad','satryandi ogansyah','FTI',14,'087776672835','yandibraja52@gmail.com',2016,1,'2016-08-29 16:14:22'),('1612501773','muhamad ridzky','alfiansyah','FTI',14,'085892556374','ridzkyalfin@gmail.com',2016,1,'2016-08-29 15:25:53'),('1612501823','Bimasena','Eka Putra','FTI',14,'08158824390','bimadawson@gmail.com',2016,1,'2016-08-31 12:27:41'),('1612501864','Dandi','Rukmana','FTI',14,'087888719087','dandirukmana9@gmail.com',2016,1,'2016-09-07 11:58:12'),('1612501989','uum','umanah','FTI',14,'08568557107','uumumanah98@gmail.com',2016,1,'2016-09-07 11:39:25'),('1612502011','muhammad','kamaludin','FTI',14,'085777675988','mkamaluddin27@yahoo.com',2016,1,'2016-08-31 12:39:42'),('1612502292','nur','firmansyah','FTI',14,'081215318989','nur.firmansyah26@gmail.com',2016,1,'2016-09-07 11:54:20'),('1612502417','Pandu','Perkasa','FTI',14,'081280769432','panduprakoso7@gmail.com',2016,1,'2016-08-31 12:28:01'),('1612502458','nadio','feruzy','FTI',14,'081585068201','nadioferuzy@gmail.com',2016,1,'2016-08-31 12:29:17'),('1612502466','muhammad yusril','alfarizi','FTI',13,'089628899152','yusrilalfarizi@gmail.com',2016,1,'2016-08-29 15:43:07'),('1612502516','arrizky octa ferdiansyah','arrizky','FTI',13,'0858138885559','arizkyferdiansyah280@gmail.com',2016,1,'2016-08-29 15:29:51'),('1613500170','muhammad','fadhil','FTI',13,'082311944311','fadhilmuhammad101@gmail.com',2016,1,'2016-08-29 15:23:19'),('162000972','Ignasius Jeffry','Hanu','FTI',16,'08984805820','hanucup@gmail.com',2016,1,'2016-08-29 15:22:22'),('1631501135','faisal','apriliansyah','FE',2,'081212613381','faisalaprill@gmail.com',2016,1,'2016-08-31 15:43:59'),('1631501341','mega','pratiwi','FE',3,'085779053878','meghapratiwi1@gmail.com',2016,1,'2016-08-31 12:32:19'),('1631501739','habibun ','nazar','FE',2,'085772992336','habibunnazar98@gmail.com',2016,1,'2016-08-31 15:41:48'),('1632501001','wella ','arum wijayanti','FE',4,'089669430218','wellawijayanti@yahoo.com',2016,1,'2016-09-06 14:06:44'),('1642500647','Naufal Zaky','Mubarak','FISIP',9,'085695856784','naufalzaky754@gmail.com',2016,1,'2016-08-29 15:35:12'),('1643500174','Ilham','Setia Budi','FISIP',9,'08988810295','ilhamsetiabudi283@yahoo.co.id',2016,1,'2016-08-29 15:52:59'),('1652500263','Prahyudi','Setyawan','FT',11,'081908877569','prahyudisetiawan@yahoo.co.id',2016,1,'2016-08-29 15:41:49'),('1671505467','ony','ilham','FIKOM',5,'081282280857','onyilham@gmail.com',2016,1,'2016-08-29 15:12:51'),('1713868767','sesr','fdgfdg','FTI',15,'0','adadsa2sdds@ssdff.com',2017,1,'2017-09-03 12:24:14'),('99000','kk','jj','FIKOM',5,'00000','lkkljkl@jkjk.gug',2017,3,'2017-03-18 11:46:28');
/*!40000 ALTER TABLE `calas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fakultas` (
  `kode_fakultas` varchar(5) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_fakultas`),
  UNIQUE KEY `kode_fakultas` (`kode_fakultas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fakultas`
--

LOCK TABLES `fakultas` WRITE;
/*!40000 ALTER TABLE `fakultas` DISABLE KEYS */;
INSERT INTO `fakultas` VALUES ('ASTRI','Akademi Sekretari'),('FE','Fakultas Ekonomi'),('FIKOM','Fakultas Ilmu Komunikasi'),('FISIP','Fakultas Ilmu Sosial dan Ilmu Politik'),('FT','Fakultas Teknik'),('FTI','Fakultas Teknologi Informasi');
/*!40000 ALTER TABLE `fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_studi`
--

DROP TABLE IF EXISTS `program_studi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_studi` (
  `id_prodi` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `kode_fakultas` varchar(5) NOT NULL,
  `program_studi` varchar(50) NOT NULL,
  `gelar` char(2) NOT NULL,
  PRIMARY KEY (`id_prodi`,`kode_fakultas`),
  KEY `FK_FAKULTAS_1` (`kode_fakultas`),
  CONSTRAINT `FK_FAKULTAS_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_studi`
--

LOCK TABLES `program_studi` WRITE;
/*!40000 ALTER TABLE `program_studi` DISABLE KEYS */;
INSERT INTO `program_studi` VALUES (1,'ASTRI','ASTRI Kesekretarisan','D3'),(2,'FE','Manajemen Keuangan','S1'),(3,'FE','Manajemen Pemasaran','S1'),(4,'FE','Akuntansi','S1'),(5,'FIKOM','Public Relation','S1'),(6,'FIKOM','Broadcast Jurnalism','S1'),(7,'FIKOM','Visual Communication','S1'),(8,'FIKOM','Creative Advertising','S1'),(9,'FISIP','Hubungan International','S1'),(10,'FISIP','Kriminologi','S1'),(11,'FT','Arsitektur','S1'),(12,'FT','Teknik Elektro','S1'),(13,'FTI','Teknik Informatika','S1'),(14,'FTI','Sistem Informasi','S1'),(15,'FTI','Sistem Komputer','S1'),(16,'FTI','Manajemen Informatika','D3'),(17,'FTI','Komputerisasi Akuntasi','D3'),(18,'FIKOM','Ilmu Komunikasi','S1'),(19,'FE','Manajemen','S1');
/*!40000 ALTER TABLE `program_studi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ict_calas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-03 12:25:42

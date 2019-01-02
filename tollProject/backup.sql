-- MySQL dump 10.13  Distrib 8.0.12, for osx10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: toll
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_passbook`
--

DROP TABLE IF EXISTS `customer_passbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_passbook` (
  `RFID` int(11) NOT NULL AUTO_INCREMENT,
  `customer_balance` mediumint(9) DEFAULT NULL,
  KEY `customer_passbook_fk0` (`RFID`),
  CONSTRAINT `customer_passbook_fk0` FOREIGN KEY (`RFID`) REFERENCES `vehicle_details` (`RFID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_passbook`
--

LOCK TABLES `customer_passbook` WRITE;
/*!40000 ALTER TABLE `customer_passbook` DISABLE KEYS */;
INSERT INTO `customer_passbook` VALUES (1,9900),(2,9800),(3,9700),(4,9600),(5,9500),(6,9400),(7,9300),(8,9200),(9,9100),(10,9000),(11,8900),(12,8800),(13,8700),(14,8600),(15,8500),(16,8400),(17,8300),(18,8200),(19,8100),(20,8000),(21,7900),(22,7800),(23,7700),(24,7600),(25,7500),(26,7400),(27,7300),(28,7200),(29,7100),(30,7000),(31,6900),(32,6800),(33,6700),(34,6600),(35,6500),(36,6400),(37,6300),(38,6200),(39,6100),(40,6000),(41,5900),(42,5800),(43,5700),(44,5600),(45,5500),(46,5400),(47,5300),(48,5200),(49,5100),(50,5000),(51,4900),(52,4800),(53,4700),(54,4600),(55,4500),(56,4400),(57,4300),(58,4200),(59,4100),(60,4000),(61,3900),(62,3800),(63,3700),(64,3600),(65,3500),(66,3400),(67,3300),(68,3200),(69,3100),(70,3000),(71,2900),(72,2800),(73,2700),(74,2600),(75,2500),(76,2400),(77,2300),(78,2200),(79,2100),(80,2000),(81,1900),(82,1800),(83,1700),(84,1600),(85,1500),(86,1400),(87,1300),(88,1200),(89,1100),(90,1000),(91,900),(92,800),(93,700),(94,600),(95,500),(96,400),(97,300),(98,200),(99,100),(100,0);
/*!40000 ALTER TABLE `customer_passbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_details` (
  `toll_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` decimal(10,0) NOT NULL,
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,5011,'Jovan',61366832,1),(2,7445,'Cristobal',22668445,2),(3,5115,'Norma',50815116,3),(4,7054,'Therese',83610552,4),(5,9695,'Henry',38455736,5),(6,5221,'Kolby',55986110,6),(7,9518,'Dean',62222855,7),(8,5736,'Cade',54504355,8),(9,9689,'Etha',84871918,9),(10,5454,'Destinee',69731372,10),(11,9728,'Amos',91262271,11),(12,9917,'Romaine',53320332,12),(13,9850,'Jayne',63195229,13),(14,6566,'Annie',94015025,14),(15,5832,'Sharon',39041967,15),(16,5319,'Elton',19493990,16),(17,7716,'Kristina',75942447,17),(18,8310,'Dax',31997012,18),(19,6111,'Vita',39243001,19),(20,5405,'Casimir',58900235,20),(21,9338,'May',19032281,21),(22,7364,'Faye',70272621,22),(23,6672,'Irwin',43805568,23),(24,8031,'Nicklaus',54971468,24),(25,7028,'Lavern',83138820,25),(26,8388,'Junior',56625612,26),(27,7479,'Aiyana',29151823,27),(28,7750,'Cathy',66788077,28),(29,8638,'Mike',23578134,29),(30,8201,'Alyce',76466696,30),(31,8843,'Clara',49060502,31),(32,7352,'Bell',18748927,32),(33,5827,'Elmer',79345606,33),(34,8765,'Oral',73252327,34),(35,6015,'Penelope',22876262,35),(36,5721,'Donny',69659126,36),(37,7612,'Adriel',66199059,37),(38,7893,'Daniella',62290026,38),(39,8447,'Adele',53570057,39),(40,8027,'Christelle',64143510,40),(41,6575,'Paige',24804513,41),(42,9700,'Deanna',36654071,42),(43,7937,'Alexie',13290467,43),(44,5639,'Leann',58937038,44),(45,7514,'Karson',17223800,45),(46,9132,'Gabriel',72730313,46),(47,5925,'Cloyd',37336570,47),(48,8426,'Angelina',89674741,48),(49,5591,'Christophe',30292008,49),(50,5301,'Avery',25109166,50),(51,6599,'Bernadette',89579028,51),(52,7733,'Leonie',70044597,52),(53,6679,'Darrin',89871368,53),(54,8098,'Lacey',38619783,54),(55,9721,'Lea',62499085,55),(56,7476,'Zoey',10126791,56),(57,5552,'Laverna',26054649,57),(58,9586,'Ambrose',80149115,58),(59,5920,'Christine',73339298,59),(60,9132,'Jodie',33514094,60),(61,9402,'Lou',40883907,61),(62,8083,'Lucius',59347089,62),(63,7533,'Kameron',25933997,63),(64,9224,'Maxwell',86613227,64),(65,7013,'Laron',41333036,65),(66,6891,'Jo',75154551,66),(67,5190,'Issac',35285183,67),(68,9051,'Reva',23656849,68),(69,8368,'Yazmin',61643827,69),(70,7150,'Elias',42276065,70),(71,9207,'Marian',26075363,71),(72,5827,'Sterling',82779711,72),(73,7989,'Rose',27081295,73),(74,7447,'Orval',70774824,74),(75,5898,'Katrine',48250252,75),(76,6313,'Armand',35336377,76),(77,8789,'Brycen',68766629,77),(78,7766,'Gerson',74899898,78),(79,8701,'Marion',91641385,79),(80,8785,'Jarrell',12900583,80),(81,9274,'Lorenzo',37898644,81),(82,5441,'Ezekiel',86808546,82),(83,5125,'Kamren',40660230,83),(84,7912,'Marina',79205925,84),(85,5640,'Emmet',68229317,85),(86,7609,'Maegan',15033764,86),(87,7183,'Vita',92078599,87),(88,5560,'Evert',20775126,88),(89,7542,'Eliane',84174008,89),(90,5213,'Koby',49379651,90),(91,6380,'Tomasa',76215380,91),(92,7424,'Vena',30804292,92),(93,6046,'Naomie',30257676,93),(94,7166,'Kian',34915889,94),(95,7476,'Justina',18555338,95),(96,7564,'Tiana',98662422,96),(97,8719,'Adaline',52107420,97),(98,8973,'Maci',94047985,98),(99,5160,'Jayson',21962139,99),(100,7164,'Winona',75215664,100);
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_login`
--

DROP TABLE IF EXISTS `employee_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee_login` (
  `employee_id` int(11) NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_login`
--

LOCK TABLES `employee_login` WRITE;
/*!40000 ALTER TABLE `employee_login` DISABLE KEYS */;
INSERT INTO `employee_login` VALUES (1,'d6dcad8958fe3f1c2102681ebe39d28480cacf8e'),(2,'11dda28122678366bd4d8d6a8366cff0dfd0f4c8'),(3,'bd6f3460999c0a7c7562b76bf6ab69c1ef5cdbd8'),(4,'8e1abfdc827d02d729ae8029e00a7bc1570fb75e'),(5,'4ce7d83818eea1a113ae92b291237ddc6af1c3ca'),(6,'a4c67c3493a5364c32b6ceea3146c9054b2fa0d0'),(7,'66d0171f3476ecb5b74888984e4e44c65c3a6efa'),(8,'b69926b48ef680f68fee2f49688c361a07a47752'),(9,'62a7c6175639e29a9ee91f835226ed8ec62a2070'),(10,'2219b962d76fb260761f3b832df48be718c627ff'),(11,'33be609477e85a7d740d05b3cc7cf63f5df91812'),(12,'433332995955d5a52b993af205c70ec21827f1d4'),(13,'1decee6c2f5f797f003ec4c866539cbe0c8a8274'),(14,'c87feee9568cc65a896b8a29931960d05f30a0c2'),(15,'9297cad5e5766548df4d1e079220a866a7966f65'),(16,'2179609e675ceb38047770f3c52f4b6105751eaf'),(17,'23ff80e80755a3032253dd00026ee4af445f9354'),(18,'122eb671a35c3f7c210fe5fbdbcf340a669c00d7'),(19,'173d74860ceef4e500536899bf0acee5f01dc34d'),(20,'6dd313d7010659c30de437c4f9020166de3f0607'),(21,'b7d7cc4d32a859904be53e03f26dba4b40b16656'),(22,'1d36fafb29d173c25229e01bec57c4526bc9eb93'),(23,'b4f488c5d36769d1aa7bdbf60bd0de8da2f2232c'),(24,'50b234eab00129341f7ee32d54925ba4ac6d85b7'),(25,'8d8149883c37ea2fe8928a3010b77a6ebdb721bc'),(26,'34685284490efc8b4890ee2cc32c47ee4ff3253a'),(27,'fec17f8080274b938921c94489c134904db47404'),(28,'07bc870cfa7320806364918293223fd54b4c3b8d'),(29,'72617eff176d15ac77e79ab655edc23d1732e542'),(30,'90836cb1efee57291dcae8d77f86413a86bc3e91'),(31,'f8928ca184b81296d17109ecc3551220d4d159b9'),(32,'1a1bae8a7120b04cd2e99754acd1427b15a085a4'),(33,'8e3c4cb22439afdf16b183bdb74bbc870a4e805f'),(34,'21b789947002d13b68938208f0e2df4c5aeee597'),(35,'5df222281990f51e92d2bb5370320e6fb279a580'),(36,'910f937ba7ab03964df3593795a8c233c4ee8d56'),(37,'c5e5fc841b31c2e317e05da5b0e09b4e6a3c94ff'),(38,'aeab445dc3596f964fb22b0ed70c1eb98f4afa2b'),(39,'7f767a069c805c01ebecd939ab7fa235d29a5255'),(40,'4cddce11b4c57893f0a793b7ca7ac33c53fd31e3'),(41,'093ecf4b470922c64389977c825381467cc881c4'),(42,'beea1ecbac206d4c5d3dc08d50426bd40c6f2777'),(43,'0b531ff60190af54f51ce42f1231a12d04516091'),(44,'381fefd756ea72df801d9cd673914dcc47e397ec'),(45,'1dd708fe81a4a52eb30560e98bd48587d426123d'),(46,'16786bc8c896c7a9935d02886770960567e72b74'),(47,'5c6d584326847e2a5e50436fe5e1f2d138af6973'),(48,'1af4e6b0d30b08e99df3c73b6368b374720d1513'),(49,'8929d3a3df33a6e999b434572bf1b1b386608e5b'),(50,'95a1c7b298d8090a0cdd8781e5162002314f769a'),(51,'bba436382fdb68f943285d46be854bfb6d3b117b'),(52,'03560115cbbee39584ff623c1d1082aca4dcdd19'),(53,'c659089693ec1d9b4dbc2eb4af2b265ad387d055'),(54,'b715959be01524429ddada5d6dc04563c96ae163'),(55,'66b100a858a0368eeb162d2349e493bd22c8a83d'),(56,'f0ccf554ab23e5e0b6240ae78216746564a80205'),(57,'686c9c81ba7e5d5fdaef8deef9c6007c45b58b6c'),(58,'953e127644a6f861eb9aeaa7d696a506bf4a7e49'),(59,'25e1ea5077ad0056219bd95300fd26a629c322fa'),(60,'726adcf9db812dfd74d93399dd26cac1f538b720'),(61,'ce05200baa6145d900b50ff6efcd14d8c4b564d3'),(62,'c7cfc08f5f3be26c5ae1c1e8b35f132ad1aac0c0'),(63,'e06e99e9b13b36eb941933b9cd7e48fca64d0353'),(64,'5ca2db95061159081e9419a654354c658c4c6466'),(65,'6577926d117543caedf44e314d434f34936530e7'),(66,'ef50d6e4e133da54d0c0864184d8fee6ad550efa'),(67,'0e945cad97682f759858b5ec484da54ba0686a60'),(68,'22bf1fbc9be2fc0c9af53a9736eccc1bd77e6afe'),(69,'d1e470dae63a7022e05d14533ae57d228cf12620'),(70,'088d7c4311ebf16f9fa04b5e231b756b3b167a5c'),(71,'9969ee0a718d0ca4c2cec40a0adba93e90192d3c'),(72,'2720e8c88bf00939bd4b2e1dc68aa5da9a274ef8'),(73,'b85479117247298cb33364b2ee803921d9c55ed6'),(74,'2f33e651f28c58063b2644bb8afe08e5242fce70'),(75,'76a99c24d2136ed57dfef76104d8d20b555954bf'),(76,'55f55039623d0bf38159bb2d6b75d07223216745'),(77,'0e6e0502265c8d3edaaa591a0051262ff6fa4041'),(78,'a3b7289d4c39443ed1622b00c5db1ea687967f34'),(79,'0f37167326b4cb524360132bf384f6a311662d4e'),(80,'b1f64dc0dd06b6cdc556a62697c544e4018267e7'),(81,'f367d610fb612ed6be30fcc5ec6b35abeb775ede'),(82,'ffd80c60143448a15ec411f946f4bfd47f6bba31'),(83,'a97354dc08c1d93956b7e93fcb79bafa037c500f'),(84,'2c10955053854e2358cc5a4788b4ef30bc5ae8cc'),(85,'f12e445d78ae588c1c324b56ab44c17db3703e26'),(86,'80d3432b52e687dcf3af9e1c9606927b2937d052'),(87,'811e84b992a71de6976db0645acb282ead10a239'),(88,'d774aed0ec98a6dcf41356dfd2b8ff49d763bad4'),(89,'2a2b82e81ef8ce70a38defe203d8e50c615fe698'),(90,'a72602717bb3da12aa4b74f0e3431fef96594948'),(91,'437de76f64d944ba9ff3ed5164c1f5b4c3ae55a9'),(92,'c08725bb68ac5e57a67cce1c84806fd529458b77'),(93,'6fa2f44213ac13122de88808104a4c097613e4c2'),(94,'f603733ada72d56c935c5b01a59159a870e6656f'),(95,'e160c2b7c6c36726f7cdaac33333af28a79019de'),(96,'7917bb20c18993135ba1020642322f7eaee6faf5'),(97,'71c2486b50a03bc7fcb7aa30cc651a1667d6e93f'),(98,'63bc77e88713660b87d693b1bd8054e589c1d30f'),(99,'ef1c50052fd549fbcda46e6bc2cdb633a4f9d289'),(100,'e5ed1ef8496f52df768ee03870413f9bc038851c');
/*!40000 ALTER TABLE `employee_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_details`
--

DROP TABLE IF EXISTS `owner_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owner_details` (
  `owner_name` text COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` decimal(10,0) NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_details`
--

LOCK TABLES `owner_details` WRITE;
/*!40000 ALTER TABLE `owner_details` DISABLE KEYS */;
INSERT INTO `owner_details` VALUES ('vero','addie61',361776285,'qtoy@example.net'),('tenetur','adelia.stamm',909455590,'mbrakus@example.net'),('incidunt','adolph46',838708051,'kwilkinson@example.net'),('recusandae','ajohns',964085511,'manuela.braun@example.org'),('dolor','alfredo68',599970818,'evie.conn@example.com'),('rerum','altenwerth.danielle',319850570,'jaskolski.enrique@example.com'),('est','anissa48',472646536,'howe.olaf@example.org'),('quibusdam','annetta.considine',674264359,'gregory.brekke@example.com'),('maiores','arch16',473891411,'shemar.gottlieb@example.com'),('consequuntur','armstrong.perry',479712388,'freeda17@example.com'),('quae','asa31',600747819,'terry17@example.org'),('praesentium','bahringer.estefania',530226033,'dasia.schamberger@example.com'),('repudiandae','bauch.nia',823584624,'francis30@example.org'),('labore','beau87',517420203,'wmcclure@example.com'),('sit','beulah.kerluke',228680335,'grady.tiara@example.net'),('sit','blanca.koelpin',227013032,'dell34@example.net'),('atque','blick.norma',113326765,'jfriesen@example.org'),('nulla','bo.towne',287869265,'rosenbaum.thomas@example.com'),('asperiores','bobby.skiles',240614741,'toy61@example.net'),('exercitationem','braden35',800879969,'lilla.kreiger@example.net'),('doloribus','brennon.batz',814138287,'russel.eli@example.com'),('aut','britney01',257590521,'princess.grimes@example.net'),('harum','ctromp',494457086,'thomas71@example.net'),('culpa','davon12',498325776,'toy.linnea@example.org'),('sed','dejah.langosh',287411224,'ncarter@example.net'),('ut','demetris.stanton',816312630,'lonzo.beer@example.com'),('delectus','dgerlach',992304966,'yraynor@example.net'),('rerum','dickens.marge',737985272,'farrell.elisabeth@example.net'),('veritatis','douglas.lauriane',352881470,'mante.vincenza@example.com'),('aliquam','effertz.brooke',758899066,'fgibson@example.org'),('tenetur','emelie89',455610925,'herzog.leo@example.org'),('deleniti','emmett77',177287356,'norwood01@example.com'),('amet','flavie50',980822635,'kovacek.everette@example.net'),('voluptatum','francesca.dibbert',956005009,'xmitchell@example.net'),('beatae','gcrooks',974848133,'jaime46@example.org'),('sed','geovany42',360901263,'kwyman@example.org'),('eum','glenna53',307472440,'gkub@example.net'),('laboriosam','gmonahan',260372076,'hstokes@example.org'),('commodi','goodwin.okey',299370802,'edd40@example.org'),('nihil','gottlieb.vern',220418523,'vgrady@example.net'),('deleniti','green.dickens',824818284,'heathcote.toy@example.org'),('laboriosam','gretchen38',609426995,'malcolm63@example.com'),('quia','hailey.morar',265711385,'olittle@example.net'),('necessitatibus','hamill.missouri',742938185,'haleigh70@example.com'),('maiores','hayes.keira',633131377,'kristina.friesen@example.com'),('in','hodkiewicz.zelda',660847770,'ypollich@example.org'),('ut','hyman08',235193836,'oberbrunner.garfield@example.com'),('cumque','hyundt',669251913,'muhammad51@example.net'),('et','ischinner',330782163,'lang.leopoldo@example.net'),('aut','jaylen72',364289438,'osinski.marguerite@example.net'),('ea','jaylon56',245957302,'barbara.hammes@example.net'),('sint','joanie94',837411572,'cassin.jeffery@example.org'),('rerum','kaelyn.waelchi',378489503,'cemmerich@example.net'),('aliquam','keeling.george',971290236,'rhiannon.moore@example.org'),('debitis','kenneth.schmidt',354993458,'fthiel@example.net'),('omnis','kkoss',168690479,'bosco.mabelle@example.com'),('ipsum','kkozey',622638254,'jevon.kautzer@example.com'),('qui','kohler.ismael',834549469,'aliza99@example.com'),('magni','koss.nils',237864171,'alden.abshire@example.org'),('est','kuhlman.forrest',680332060,'bechtelar.belle@example.org'),('eligendi','kunze.idella',287529105,'rwyman@example.com'),('nostrum','laura33',764484880,'okey32@example.org'),('id','lhettinger',717468194,'fluettgen@example.org'),('consectetur','luettgen.halle',933171587,'gbaumbach@example.org'),('adipisci','marcellus.gerlach',810591409,'mlarson@example.net'),('in','matilda92',142530467,'alison.terry@example.com'),('et','mbruen',325495323,'greyson.langosh@example.com'),('consequuntur','mertz.leanna',132681991,'hilbert35@example.org'),('aut','monroe86',379953376,'wgrady@example.org'),('possimus','mschmeler',277889042,'colin16@example.com'),('aliquam','nathan.thiel',832809608,'friesen.jeromy@example.org'),('qui','o\'keefe.sally',552697366,'huels.jess@example.com'),('est','padberg.nedra',431442639,'umarks@example.net'),('animi','philip87',898152534,'tlesch@example.org'),('sit','qfranecki',445056686,'gusikowski.bud@example.com'),('ea','rosendo97',177306287,'shawna.bins@example.com'),('repellendus','runolfsson.hilda',912955259,'o\'keefe.crawford@example.com'),('veniam','sabina44',689033774,'richmond01@example.org'),('qui','salvador88',342749922,'gerhold.roberta@example.org'),('laborum','shirley64',184820843,'ihomenick@example.org'),('accusantium','sierra.greenfelder',390144742,'savanah.kihn@example.net'),('enim','sschroeder',121344130,'ryan.claude@example.net'),('et','stephan76',816729120,'drake19@example.net'),('perferendis','steuber.carlos',124353093,'cooper.marquardt@example.org'),('provident','switting',525794186,'xbartell@example.net'),('minima','sylvester63',322096560,'rogahn.leonel@example.org'),('corrupti','taylor04',809039405,'eleonore58@example.com'),('sed','tiara.mcdermott',470927783,'rippin.christ@example.org'),('doloremque','tony01',229845631,'imogene.fisher@example.net'),('voluptatem','uhessel',318937663,'fadel.alessia@example.org'),('velit','ujaskolski',859263454,'camila.bergstrom@example.com'),('suscipit','uskiles',374977554,'yromaguera@example.net'),('ab','vance39',585915349,'rebeka31@example.net'),('cupiditate','vivian87',369542749,'destini57@example.org'),('ducimus','wava.zieme',674923770,'cwolff@example.org'),('modi','xlehner',662569768,'zulauf.rhett@example.com'),('quod','xlittel',815725289,'ron.oberbrunner@example.net'),('qui','xrosenbaum',830463193,'jasper.cruickshank@example.com'),('eaque','zemlak.kole',243237359,'lindgren.niko@example.net'),('et','zmraz',492756431,'max.howe@example.com');
/*!40000 ALTER TABLE `owner_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_login`
--

DROP TABLE IF EXISTS `owner_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owner_login` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_login`
--

LOCK TABLES `owner_login` WRITE;
/*!40000 ALTER TABLE `owner_login` DISABLE KEYS */;
INSERT INTO `owner_login` VALUES ('addie61','16075fc03499e7e13bf991aece27fdef'),('adelia.stamm','8e5bbf94ebb3b91fc2e53114a2bf6749'),('adolph46','6e7d283836a56caaabe8a69c230e6904'),('ajohns','2c59bbee9a79fe581501d01f16eeeadd'),('alfredo68','39b958813eecc1ed2a0ec6e76352fe17'),('altenwerth.danielle','523264bc0f935eba90377ef5ebea7b57'),('anissa48','9187a8c00eba8572e0b7c4edddb83322'),('annetta.considine','f6f5b97237c9fe38104a083500c127f6'),('arch16','d89bf6d7f1076995925fd7cf21ceb2db'),('armstrong.perry','3a1a35ed9f6e692d237931dc5a0cd39b'),('asa31','de60c28c9fe8b7289f1e137ab4d58b31'),('bahringer.estefania','dfe05d1b06ba8945adde02ae321b69e8'),('bauch.nia','86b79e7add066f1282b9a06586929035'),('beau87','d6c608f995f0a71a7ee2d6362cfa18e6'),('beulah.kerluke','bd36a9355423d427ca14c83c5e48c24b'),('blanca.koelpin','6321c2385c0fac90811d65edcad623d9'),('blick.norma','2747e5ab92c8ddb4091f7bae90aae702'),('bo.towne','60d8c83dd561d6c3f87a6217b54c6912'),('bobby.skiles','8e01f3acc1c5a188576908f4c04b396c'),('braden35','b84d8dd44366dc3527bcd7496758e14d'),('brennon.batz','1bc50c3ac0ee2f3b8340ef5dbc5de78e'),('britney01','b17993fb0e84676eb96f40cf4891da7b'),('ctromp','b17a81432b282c8ac3b3a731fd1657d4'),('davon12','547116ac7787311f221bf54adc730543'),('dejah.langosh','dc088a543d27651f498fcbac04937b44'),('demetris.stanton','636a5663a69b0b492a52fd4165adb7b3'),('dgerlach','f4f88354117f59d6de3fde3b98ff3969'),('dickens.marge','ff3e15b77bb1db5710a76c54bdeffe24'),('douglas.lauriane','f34eba8aa178649cc2b90fdf789869b4'),('effertz.brooke','b324878d82bc2e9ecf719ffe92235474'),('emelie89','a3d08dfead7c557cdcc791b293de9dc6'),('emmett77','56c21d48e7ba995c1f740b2d873f8669'),('flavie50','e50d8af2c61e7002cf95fc0d1ebb1fb0'),('francesca.dibbert','5c3ee51f82f102fc29dcec5dcf1605e1'),('gcrooks','ff1f022002baef05d1638437038dadb4'),('geovany42','335972e098ffcd683f0b5974234d6e8d'),('glenna53','55bab72788d4e223c8c32fad44065c0d'),('gmonahan','3ae02adceb8d609858374ecdd3febe98'),('goodwin.okey','aa9bf39bb8909581f171fe23f16d9b54'),('gottlieb.vern','dbf2430c635949d4c63b99edaf876496'),('green.dickens','726173fdddda6aa376053dbdc21931c0'),('gretchen38','19f90bad355dc686e04a6775e41ff823'),('hailey.morar','68b0cf5a0ca1cdb955c46940b0a44d2b'),('hamill.missouri','6293f6bb106956686c0160119cc017cc'),('hayes.keira','2b9ee078a17800b00ec88b9c0c52621e'),('hodkiewicz.zelda','034e0769aaa86c0e227a9ad073e0f596'),('hyman08','3d97dd64e94dc16ba2cf8747b31a34e7'),('hyundt','8b00488cd3caed0d31730314efc8f0da'),('ischinner','64229cf9c90d221ed321a8801b06f5df'),('jaylen72','2e5ab7719ceb2c88872973ea5be34855'),('jaylon56','2bea5b5655500b75c48634ca6090a6d0'),('joanie94','4255258f1a3ff45c9a223658b578cd2a'),('kaelyn.waelchi','5ab7990a4c1944abbdfe32e12d732fed'),('keeling.george','6e2aaa0704553f27f11bab68f6f4a98e'),('kenneth.schmidt','5155ef30eb41e737c378ba682477b838'),('kkoss','0b1037c6bcd80a46f01c81177c429b5f'),('kkozey','78bd49722096210e92375223bcf41afe'),('kohler.ismael','6d68f70f81c6d5cf63505ad123b532df'),('koss.nils','62ec7969534cc29aa2b63b214eb0b462'),('kuhlman.forrest','3ca8d1dee92cc1fa3c1bcecefef3e73d'),('kunze.idella','10fb06a62046e3356580654806c6d50d'),('laura33','7cedaa6cc68cfaab16c3c6b484b506e4'),('lhettinger','cf1607805824cec1fd952a9cd727f1ee'),('luettgen.halle','d29615c390a69f52100c985026016a1f'),('marcellus.gerlach','ffec3210a9b12d94f6603b71c196e22c'),('matilda92','2c0145b8b50b140c7508a10e079eb8a1'),('mbruen','e1d2bb1dea74b8be55410538a094e10f'),('mertz.leanna','f300f39470d637682046480ce6011c5c'),('monroe86','df78ceaf2208082d20f3bba05700b9a2'),('mschmeler','1a42db9e6eff697e81393315e5e9a0b9'),('nathan.thiel','17fde85c012b417fcbecace56ef90879'),('o\'keefe.sally','c9e0d4a3a30bcb26c2c0cdeaa63081e1'),('padberg.nedra','62e6b3d02ae955b1dad9b482c53ef83d'),('philip87','ec4ee9aa16dafb9bdbea0513d6eaace4'),('qfranecki','ca8d12aa435c0b3223fc3045029714d9'),('rosendo97','6c5e1d9679d7e8b6131774c06c2e7990'),('runolfsson.hilda','e1f3053829c3ba95361eaf8357170232'),('sabina44','6cb7363a5cc5ed7068d23b1ccdebb878'),('salvador88','8c37cc082e884eec9dfadd458f3ddbe9'),('shirley64','989c55987f65f3558785141e78e6c82a'),('sierra.greenfelder','3ee8b9b821f62e624f72e03f760cab7e'),('sschroeder','6e8ffc4f8624ddb8cac7e4c5102ecab0'),('stephan76','97568675d0a04abcb20b386857ae9cf2'),('steuber.carlos','bfef0dd3ca876169e72d24d6c5cf1074'),('switting','599a79311e46c7216e63f9f0d8ec1192'),('sylvester63','fb5c5c8c42c5920dd558723dbea00857'),('taylor04','f2904335810505ed22c0bba7ad335695'),('tiara.mcdermott','fcb80ac59517a1f0b49d63342c4fc2b2'),('tony01','4f8a54075dfd154335f90ddad6782afd'),('uhessel','920f4f91d7416bcb3b8715f02b515495'),('ujaskolski','553bb9840e9be96460013be8d8b520b6'),('uskiles','5e91bec41048e2b2c63926d2e5b1e733'),('vance39','7497e34d8afe41f79de26880dde86888'),('vivian87','9fc69eefd97e5120b7e7529eb4cab87e'),('wava.zieme','9b7749181ebd6ee8ed8a83492f71312f'),('xlehner','67cf3dbd8ef44f8c638894132d431b2a'),('xlittel','2d606c78a27940d3319df45f4ad0489f'),('xrosenbaum','4dd6e01a8a7cdd2924dd6a3cc52aecff'),('zemlak.kole','8ea3b2548c09aae3008a856e11c2354d'),('zmraz','4aca570aa270cff776688d693669b4bc');
/*!40000 ALTER TABLE `owner_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rate` (
  `toll_id` int(11) NOT NULL,
  `LMV_o` int(11) NOT NULL,
  `PMV_o` int(11) NOT NULL,
  `HMV_o` int(11) NOT NULL,
  `PMV_r` int(11) NOT NULL,
  `LMV_r` int(11) NOT NULL,
  `HMV_r` int(11) NOT NULL,
  KEY `rate_fk0` (`toll_id`),
  CONSTRAINT `rate_fk0` FOREIGN KEY (`toll_id`) REFERENCES `toll_details` (`toll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES (1,100,125,220,90,120,210),(2,100,125,220,90,120,210),(3,100,125,220,90,120,210),(4,100,125,220,90,120,210),(5,100,125,220,90,120,210),(6,100,125,220,90,120,210),(7,100,125,220,90,120,210),(8,100,125,220,90,120,210),(9,100,125,220,90,120,210),(10,100,125,220,90,120,210),(11,100,125,220,90,120,210),(12,100,125,220,90,120,210),(13,100,125,220,90,120,210),(14,100,125,220,90,120,210),(15,100,125,220,90,120,210),(16,100,125,220,90,120,210),(17,100,125,220,90,120,210),(18,100,125,220,90,120,210),(19,100,125,220,90,120,210),(20,100,125,220,90,120,210),(21,100,125,220,90,120,210),(22,100,125,220,90,120,210),(23,100,125,220,90,120,210),(24,100,125,220,90,120,210),(25,100,125,220,90,120,210),(26,100,125,220,90,120,210),(27,100,125,220,90,120,210),(28,100,125,220,90,120,210),(29,100,125,220,90,120,210),(30,100,125,220,90,120,210),(31,100,125,220,90,120,210),(32,100,125,220,90,120,210),(33,100,125,220,90,120,210),(34,100,125,220,90,120,210),(35,100,125,220,90,120,210),(36,100,125,220,90,120,210),(37,100,125,220,90,120,210),(38,100,125,220,90,120,210),(39,100,125,220,90,120,210),(40,100,125,220,90,120,210),(41,100,125,220,90,120,210),(42,100,125,220,90,120,210),(43,100,125,220,90,120,210),(44,100,125,220,90,120,210),(45,100,125,220,90,120,210),(46,100,125,220,90,120,210),(47,100,125,220,90,120,210),(48,100,125,220,90,120,210),(49,100,125,220,90,120,210),(50,100,125,220,90,120,210),(51,100,125,220,90,120,210),(52,100,125,220,90,120,210),(53,100,125,220,90,120,210),(54,100,125,220,90,120,210),(55,100,125,220,90,120,210),(56,100,125,220,90,120,210),(57,100,125,220,90,120,210),(58,100,125,220,90,120,210),(59,100,125,220,90,120,210),(60,100,125,220,90,120,210),(61,100,125,220,90,120,210),(62,100,125,220,90,120,210),(63,100,125,220,90,120,210),(64,100,125,220,90,120,210),(65,100,125,220,90,120,210),(66,100,125,220,90,120,210),(67,100,125,220,90,120,210),(68,100,125,220,90,120,210),(69,100,125,220,90,120,210),(70,100,125,220,90,120,210),(71,100,125,220,90,120,210),(72,100,125,220,90,120,210),(73,100,125,220,90,120,210),(74,100,125,220,90,120,210),(75,100,125,220,90,120,210),(76,100,125,220,90,120,210),(77,100,125,220,90,120,210),(78,100,125,220,90,120,210),(79,100,125,220,90,120,210),(80,100,125,220,90,120,210),(81,100,125,220,90,120,210),(82,100,125,220,90,120,210),(83,100,125,220,90,120,210),(84,100,125,220,90,120,210),(85,100,125,220,90,120,210),(86,100,125,220,90,120,210),(87,100,125,220,90,120,210),(88,100,125,220,90,120,210),(89,100,125,220,90,120,210),(90,100,125,220,90,120,210),(91,100,125,220,90,120,210),(92,100,125,220,90,120,210),(93,100,125,220,90,120,210),(94,100,125,220,90,120,210),(95,100,125,220,90,120,210),(96,100,125,220,90,120,210),(97,100,125,220,90,120,210),(98,100,125,220,90,120,210),(99,100,125,220,90,120,210),(100,100,125,220,90,120,210);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toll_details`
--

DROP TABLE IF EXISTS `toll_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `toll_details` (
  `toll_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` text NOT NULL,
  `lanes` int(11) DEFAULT NULL,
  PRIMARY KEY (`toll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_details`
--

LOCK TABLES `toll_details` WRITE;
/*!40000 ALTER TABLE `toll_details` DISABLE KEYS */;
INSERT INTO `toll_details` VALUES (1,'5408 Vestibulum Street',1),(2,'P.O. Box 539, 982 Pellentesque Rd.',3),(3,'902-2718 Tortor Rd.',1),(4,'3732 Ornare. St.',3),(5,'Ap #609-9896 At Rd.',1),(6,'Ap #501-9910 Magna. Street',3),(7,'P.O. Box 652, 2751 Auctor St.',2),(8,'Ap #591-905 Consequat, Road',2),(9,'P.O. Box 266, 8592 Nibh St.',2),(10,'Ap #236-1071 Aliquam Ave',1),(11,'Ap #965-9302 Nunc. Rd.',2),(12,'904-8994 Cras St.',1),(13,'P.O. Box 918, 458 Suspendisse Road',2),(14,'P.O. Box 727, 1050 Ut, Rd.',2),(15,'P.O. Box 723, 6876 Enim. Road',1),(16,'Ap #132-4706 At, St.',3),(17,'Ap #151-1836 Nullam Rd.',3),(18,'P.O. Box 833, 5835 Metus. Rd.',3),(19,'136 Magna, Road',2),(20,'7559 Ut Ave',2),(21,'116-8090 Facilisis St.',3),(22,'Ap #143-3904 Nam Street',3),(23,'681-2961 Sit Rd.',3),(24,'741-4017 A, Street',2),(25,'P.O. Box 792, 1026 Sem. Rd.',2),(26,'7271 Sem St.',1),(27,'479-9194 Ante Av.',2),(28,'P.O. Box 839, 6431 Ac Street',1),(29,'3701 Sem St.',1),(30,'Ap #902-8254 Nulla Ave',2),(31,'391-1483 Facilisis Rd.',1),(32,'P.O. Box 155, 4930 Scelerisque Avenue',3),(33,'P.O. Box 534, 513 Risus Ave',3),(34,'Ap #997-762 Magna. Avenue',1),(35,'821 Pellentesque. Av.',1),(36,'Ap #171-4881 Enim. St.',2),(37,'727-2668 Lorem Av.',2),(38,'Ap #426-1954 Sed, Street',2),(39,'P.O. Box 715, 6512 Odio Street',2),(40,'Ap #599-1956 Diam St.',2),(41,'6436 Dolor. St.',3),(42,'307-2451 Eu Street',3),(43,'529-4260 Consequat, St.',1),(44,'9160 Tristique Rd.',1),(45,'927-8564 Nunc. Street',3),(46,'566-6608 Tellus Rd.',3),(47,'Ap #964-4945 Luctus Ave',3),(48,'8954 Aliquam Street',2),(49,'6006 Risus. Road',1),(50,'P.O. Box 632, 4652 A, Av.',3),(51,'P.O. Box 472, 2188 Interdum. Rd.',2),(52,'2531 Fermentum Street',1),(53,'212-1854 Non Av.',2),(54,'9464 In Avenue',2),(55,'884-7985 Sed, Street',3),(56,'7770 Nam Rd.',3),(57,'1569 Est. St.',3),(58,'Ap #441-771 Consectetuer Rd.',3),(59,'P.O. Box 542, 312 Magnis St.',3),(60,'Ap #762-2402 Nulla Rd.',1),(61,'968-1062 Leo Rd.',2),(62,'Ap #530-5813 Libero Street',3),(63,'5667 Dictum. St.',1),(64,'2558 Ac Ave',1),(65,'790-3576 Magna. St.',1),(66,'Ap #626-1128 Lectus Ave',1),(67,'Ap #252-4518 Egestas. St.',2),(68,'Ap #826-1237 Sit Rd.',3),(69,'Ap #564-1642 Nunc Rd.',2),(70,'Ap #570-8685 Integer Av.',2),(71,'8522 Dolor, Road',3),(72,'940-4782 Sed St.',1),(73,'871 Fusce St.',3),(74,'P.O. Box 190, 6844 Augue Ave',3),(75,'Ap #112-1347 Mauris St.',2),(76,'558-8143 Non, Rd.',1),(77,'3938 Sollicitudin Av.',3),(78,'Ap #943-8161 Quisque St.',3),(79,'P.O. Box 370, 6007 Quis Av.',3),(80,'6835 Tristique St.',1),(81,'Ap #586-4327 Est, Av.',3),(82,'4085 Neque Rd.',1),(83,'5705 Massa. St.',3),(84,'973-5492 Donec Ave',3),(85,'9635 Non, St.',3),(86,'8132 Suscipit St.',3),(87,'Ap #419-4025 Venenatis Avenue',2),(88,'Ap #355-192 Feugiat Rd.',2),(89,'P.O. Box 121, 5790 Metus Rd.',1),(90,'863-473 Nec St.',1),(91,'896-159 Non Ave',1),(92,'P.O. Box 363, 6166 Integer Street',1),(93,'9811 Malesuada Ave',2),(94,'P.O. Box 984, 7847 Scelerisque St.',1),(95,'Ap #915-2311 Amet Rd.',2),(96,'5756 Inceptos Avenue',2),(97,'P.O. Box 437, 1702 Porttitor Street',3),(98,'Ap #483-8882 Auctor, Ave',1),(99,'Ap #771-5408 Enim. Rd.',3),(100,'P.O. Box 515, 4053 Nec Rd.',1);
/*!40000 ALTER TABLE `toll_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toll_passbook`
--

DROP TABLE IF EXISTS `toll_passbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `toll_passbook` (
  `toll_id` int(11) NOT NULL AUTO_INCREMENT,
  `toll_balance` int(11) DEFAULT NULL,
  KEY `rate_fk0` (`toll_id`),
  CONSTRAINT `toll_passbook_fk0` FOREIGN KEY (`toll_id`) REFERENCES `toll_details` (`toll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toll_passbook`
--

LOCK TABLES `toll_passbook` WRITE;
/*!40000 ALTER TABLE `toll_passbook` DISABLE KEYS */;
INSERT INTO `toll_passbook` VALUES (1,0),(2,100),(3,200),(4,300),(5,400),(6,500),(7,600),(8,700),(9,800),(10,900),(11,1000),(12,1100),(13,1200),(14,1300),(15,1400),(16,1500),(17,1600),(18,1700),(19,1800),(20,1900),(21,2000),(22,2100),(23,2200),(24,2300),(25,2400),(26,2500),(27,2600),(28,2700),(29,2800),(30,2900),(31,3000),(32,3100),(33,3200),(34,3300),(35,3400),(36,3500),(37,3600),(38,3700),(39,3800),(40,3900),(41,4000),(42,4100),(43,4200),(44,4300),(45,4400),(46,4500),(47,4600),(48,4700),(49,4800),(50,4900),(51,5000),(52,5100),(53,5200),(54,5300),(55,5400),(56,5500),(57,5600),(58,5700),(59,5800),(60,5900),(61,6000),(62,6100),(63,6200),(64,6300),(65,6400),(66,6500),(67,6600),(68,6700),(69,6800),(70,6900),(71,7000),(72,7100),(73,7200),(74,7300),(75,7400),(76,7500),(77,7600),(78,7700),(79,7800),(80,7900),(81,8000),(82,8100),(83,8200),(84,8300),(85,8400),(86,8500),(87,8600),(88,8700),(89,8800),(90,8900),(91,9000),(92,9100),(93,9200),(94,9300),(95,9400),(96,9500),(97,9600),(98,9700),(99,9800),(100,9900);
/*!40000 ALTER TABLE `toll_passbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `RFID` int(11) NOT NULL,
  `toll_id` int(11) NOT NULL,
  `fare` int(11) NOT NULL,
  `date_time` text NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `transaction_fk0` (`toll_id`),
  KEY `transaction_fk1` (`RFID`),
  CONSTRAINT `transaction_fk0` FOREIGN KEY (`toll_id`) REFERENCES `toll_details` (`toll_id`),
  CONSTRAINT `transaction_fk1` FOREIGN KEY (`RFID`) REFERENCES `vehicle_details` (`RFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (101,43,45,100,'09.14.18'),(102,23,45,100,'09.14.18'),(103,29,88,100,'12.29.17'),(104,99,17,100,'01.09.19'),(105,44,23,100,'03.26.19'),(106,54,33,120,'04.16.19'),(107,18,82,120,'07.13.18'),(108,68,8,120,'06.17.19'),(109,68,8,120,'06.17.19'),(110,22,12,120,'08.21.18'),(111,70,17,220,'01.09.19'),(112,56,89,220,'06.13.18'),(113,68,24,220,'11.22.17'),(114,96,64,220,'05.24.19'),(115,46,88,220,'01.10.18'),(116,41,60,210,'11.20.18'),(117,75,17,210,'08.01.18'),(118,61,64,210,'04.05.18'),(119,45,68,210,'09.25.19'),(120,3,40,210,'09.15.18'),(121,29,49,90,'08.19.18'),(122,33,98,90,'11.22.18'),(123,100,19,90,'03.12.18'),(124,91,88,90,'06.18.19'),(125,77,14,90,'08.11.19'),(126,95,75,110,'04.14.19'),(127,86,33,110,'12.26.17'),(128,12,5,110,'09.01.18'),(129,57,14,110,'02.21.18'),(130,24,49,110,'02.27.18'),(131,100,50,100,'10.11.18'),(132,40,48,100,'02.02.18'),(133,34,17,100,'01.09.19'),(134,17,90,100,'09.18.18'),(135,34,100,100,'01.03.18'),(136,94,31,120,'04.03.18'),(137,82,3,120,'06.27.19'),(138,71,28,120,'08.23.19'),(139,40,8,120,'02.18.18'),(140,95,97,120,'12.13.17'),(141,9,46,220,'06.23.19'),(142,25,8,220,'09.16.18'),(143,66,62,220,'04.05.19'),(144,44,16,220,'02.08.18'),(145,37,33,220,'08.10.19'),(146,71,51,210,'02.11.19'),(147,10,62,210,'11.23.17'),(148,28,20,210,'03.22.18'),(149,7,14,210,'08.01.19'),(150,45,45,210,'06.07.18'),(151,61,58,90,'03.10.19'),(152,15,48,90,'07.26.18'),(153,20,42,90,'04.30.18'),(154,5,36,90,'10.07.19'),(155,25,45,90,'12.13.17'),(156,31,82,110,'01.24.18'),(157,61,87,110,'05.20.18'),(158,65,88,110,'11.29.17'),(159,88,17,110,'04.26.18'),(160,63,17,110,'08.22.19'),(161,91,8,100,'01.05.18'),(162,49,21,100,'01.30.18'),(163,16,5,100,'09.04.19'),(164,46,26,100,'04.17.19'),(165,56,53,100,'06.14.19'),(166,43,15,120,'05.13.19'),(167,66,69,120,'08.18.18'),(168,78,52,120,'01.19.18'),(169,81,90,120,'11.03.18'),(170,44,24,120,'03.01.18'),(171,95,33,220,'10.31.17'),(172,55,73,220,'09.26.18'),(173,72,15,220,'11.05.17'),(174,26,50,220,'08.07.18'),(175,48,45,220,'06.19.18'),(176,68,23,210,'07.09.19'),(177,7,60,210,'09.18.19'),(178,40,17,210,'08.01.18'),(179,74,1,210,'03.13.18'),(180,26,58,210,'03.12.19'),(181,15,17,90,'01.09.19'),(182,24,26,90,'07.10.18'),(183,17,31,90,'01.10.18'),(184,72,75,90,'06.28.19'),(185,63,94,90,'07.19.19'),(186,82,54,110,'06.06.19'),(187,56,45,110,'02.22.19'),(188,54,66,110,'12.17.17'),(189,51,64,110,'05.09.18'),(190,79,68,110,'06.19.18'),(191,19,25,100,'12.18.18'),(192,56,85,100,'08.06.19'),(193,42,4,100,'06.14.18'),(194,65,8,100,'02.06.19'),(195,21,57,100,'11.05.17'),(196,4,5,120,'12.18.17'),(197,53,17,120,'12.17.18'),(198,21,63,120,'12.27.18'),(199,45,90,120,'04.14.18'),(200,33,8,120,'09.16.18');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_details`
--

DROP TABLE IF EXISTS `vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_details` (
  `vehicle_no` int(11) NOT NULL,
  `model` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RFID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`RFID`),
  UNIQUE KEY `vehicle_no` (`vehicle_no`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_details`
--

LOCK TABLES `vehicle_details` WRITE;
/*!40000 ALTER TABLE `vehicle_details` DISABLE KEYS */;
INSERT INTO `vehicle_details` VALUES (4279,'ea','HMV','addie61',1),(6209,'suscipit','HMV','adelia.stamm',2),(4537,'delectus','PMV','adolph46',3),(7412,'occaecati','HMV','ajohns',4),(4467,'odio','LMV','alfredo68',5),(6567,'non','LMV','addie61',6),(6443,'a','PMV','anissa48',7),(6484,'consequatur','PMV','annetta.considine',8),(6100,'veritatis','HMV','arch16',9),(1118,'et','HMV','armstrong.perry',10),(5982,'dolorum','HMV','asa31',11),(5644,'quasi','PMV','bahringer.estefania',12),(8044,'autem','LMV','bauch.nia',13),(2007,'itaque','HMV','beau87',14),(5655,'porro','PMV','beulah.kerluke',15),(6453,'recusandae','PMV','blanca.koelpin',16),(6738,'qui','LMV','blick.norma',17),(9877,'accusamus','PMV','bo.towne',18),(3899,'facere','HMV','asa31',19),(7654,'in','PMV','braden35',20),(5759,'unde','HMV','brennon.batz',21),(3930,'cumque','PMV','britney01',22),(2977,'similique','PMV','ctromp',23),(2820,'impedit','PMV','davon12',24),(2892,'quos','HMV','asa31',25),(5291,'dolor','LMV','demetris.stanton',26),(6085,'atque','HMV','dgerlach',27),(9762,'eveniet','PMV','dickens.marge',28),(1861,'deleniti','HMV','douglas.lauriane',29),(7311,'sed','HMV','effertz.brooke',30),(3391,'ut','HMV','emelie89',31),(8355,'nihil','PMV','flavie50',32),(8769,'quam','PMV','flavie50',33),(1853,'dolorum','LMV','blick.norma',34),(3190,'nostrum','PMV','gcrooks',35),(5452,'architecto','HMV','geovany42',36),(4941,'temporibus','PMV','glenna53',37),(6589,'aperiam','LMV','gmonahan',38),(3309,'accusamus','LMV','goodwin.okey',39),(8572,'ea','PMV','gottlieb.vern',40),(3978,'sint','LMV','green.dickens',41),(1624,'facilis','LMV','gretchen38',42),(9615,'velit','HMV','tony01',43),(9134,'et','LMV','hamill.missouri',44),(1761,'debitis','HMV','tony01',45),(7862,'accusantium','HMV','hodkiewicz.zelda',46),(2767,'laudantium','HMV','hyman08',47),(6039,'magni','LMV','hyundt',48),(6733,'magni','LMV','ischinner',49),(9825,'et','LMV','jaylen72',50),(6922,'sint','PMV','jaylon56',51),(5728,'eius','HMV','joanie94',52),(7978,'nihil','LMV','kaelyn.waelchi',53),(1716,'porro','LMV','keeling.george',54),(9272,'aspernatur','HMV','kenneth.schmidt',55),(4112,'exercitationem','HMV','kkoss',56),(9885,'exercitationem','LMV','kkozey',57),(6107,'esse','HMV','tony01',58),(9686,'est','HMV','koss.nils',59),(5716,'eligendi','PMV','kuhlman.forrest',60),(1052,'adipisci','LMV','kunze.idella',61),(8249,'quisquam','HMV','laura33',62),(3378,'sapiente','HMV','lhettinger',63),(1167,'assumenda','PMV','luettgen.halle',64),(7981,'enim','HMV','marcellus.gerlach',65),(8662,'vel','HMV','matilda92',66),(2780,'commodi','PMV','mbruen',67),(6730,'adipisci','LMV','blick.norma',68),(8120,'aut','HMV','monroe86',69),(8222,'aut','PMV','mschmeler',70),(9709,'eos','LMV','nathan.thiel',71),(1836,'officia','PMV','o\'keefe.sally',72),(8383,'possimus','PMV','padberg.nedra',73),(1807,'optio','PMV','philip87',74),(1090,'doloremque','PMV','qfranecki',75),(7238,'consequatur','LMV','rosendo97',76),(8942,'voluptatibus','HMV','runolfsson.hilda',77),(1127,'quibusdam','HMV','sabina44',78),(3552,'asperiores','HMV','salvador88',79),(3435,'nihil','PMV','shirley64',80),(2937,'est','PMV','sierra.greenfelder',81),(7249,'sed','LMV','sschroeder',82),(3849,'dolore','HMV','stephan76',83),(5125,'eum','PMV','steuber.carlos',84),(8338,'quidem','HMV','switting',85),(6869,'exercitationem','HMV','sylvester63',86),(8953,'nostrum','PMV','taylor04',87),(7151,'quibusdam','HMV','tiara.mcdermott',88),(2760,'a','HMV','tony01',89),(9815,'voluptatem','LMV','uhessel',90),(3434,'incidunt','PMV','ujaskolski',91),(9889,'asperiores','LMV','uskiles',92),(1848,'sint','PMV','vance39',93),(1002,'veniam','PMV','vivian87',94),(1138,'explicabo','PMV','wava.zieme',95),(2392,'eaque','LMV','xlehner',96),(7361,'dolor','PMV','xlittel',97),(1760,'nostrum','LMV','xrosenbaum',98),(2378,'deleniti','HMV','zemlak.kole',99),(4630,'aut','HMV','tony01',100);
/*!40000 ALTER TABLE `vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-24 12:01:51

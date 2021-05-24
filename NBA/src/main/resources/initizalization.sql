DROP TABLE players;
DROP TABLE userdatas;

CREATE TABLE IF NOT EXISTS userdatas ( 
id INT AUTO_INCREMENT PRIMARY KEY,
userid VARCHAR(100),
password VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(100),
favourite_team VARCHAR(100),
favourite_player VARCHAR(100));

INSERT INTO userdatas (userid,password,email,phone,favourite_team,favourite_player) VALUES ('demo','demo','demo@gmail.com','111111111','Dallas Mavericks','Luka Doncic');
INSERT INTO userdatas (userid,password,email,phone,favourite_team,favourite_player) VALUES ('demo2','demo2','demo2@gmail.com','222222222','Lakers','Lebron');
INSERT INTO userdatas (userid,password,email,phone,favourite_team,favourite_player) VALUES ('jorge','jorge','jorge@gmail.com','333333333','Celtics','Tatum');

CREATE TABLE IF NOT EXISTS players(
id INT AUTO_INCREMENT PRIMARY KEY,
last_name VARCHAR(100),
name VARCHAR(100),
dorsal INT NOT NULL,
team VARCHAR(100),
media INT NOT NULL);

INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DONCIC','LUKA',77,'MAVERICKS',98);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('PORZINGIS','KRISTAPS',6,'MAVERICKS',88);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('KLEBER','MAXI',42,'MAVERICKS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HARDAWAY JR','TIM',11,'MAVERICKS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('FINNEY-SMITH','DORIAN',10,'MAVERICKS',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BOGDANOVIC','BOGDAN',13,'HAWKS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CAPELA','CLINT',15,'HAWKS',84);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('YOUNG','TRAE',11,'HAWKS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('COLLINS','JOHN',20,'HAWKS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('REDDISH','CAMERON',22,'HAWKS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('TATUM','JASON',0,'CELTICS',93);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BROWN','JAYLEN',7,'CELTICS',88);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SMART','MARCUS',36,'CELTICS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('THOMPSON','TRISTAN',13,'CELTICS',79);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WILLIAMS','GRANT',12,'CELTICS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DURANT','KEVIN',7,'NETS',99);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('IRVING','KIRYE',11,'NETS',93);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HARDEN','JAMES',13,'NETS',97);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GRIFFIN','BLAKE',2,'NETS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HARRIS','JOE',12,'NETS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('JAMES','LEBRON',23,'LAKERS',99);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DAVIS','ANTHONY',3,'LAKERS',98);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DRUMMOND','ANDRE',2,'LAKERS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SCHRODER','DENNIS',17,'LAKERS',86);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CALDWELL-POPE','KENTAVIOUS',1,'LAKERS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CURRY','STEPHEN',30,'WARRIORS',99);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GREEN','DRAYMMOND',23,'WARRIORS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WIGGINGS','ANDREW',22,'WARRIORS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WISEMAN','JAMES',33,'WARRIORS',78);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('THOMPSON','KLAY',11,'WARRIORS',95);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BARRETT','RJ',9,'KNICKS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ROSE','DERRICK',4,'KNICKS',86);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('RANDLE','JULIUS',11,'KNICKS',88);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('NOEL','NERLENS',3,'KNICKS',78);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('PAYTON','ELFRID',6,'KNICKS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('EMBIID','JOEL',21,'76ERS',96);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SIMMONS','BEN',25,'76ERS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HARRIS','TOBIAS',12,'76ERS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GREEN','DANNY',14,'76ERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CURRY','SETH',31,'76ERS',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SIAKAM','PASCAL',43,'RAPTORS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LOWRY','KYLE',7,'RAPTORS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ANUNOBY','OG',3,'RAPTORS',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BAYNES','ARON',46,'RAPTORS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LEONARD','KAWHI',2,'CLIPPERS',97);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GEORGE','PAUL',13,'CLIPPERS',91);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('IBAKA','SERGE',9,'CLIPPERS',88);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BEVERLY','PATRICK',21,'CLIPPERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BATUM','NICOLAS',33,'CLIPPERS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BOOKER','DEVIN',1,'SUNS',93);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('PAUL','CHRIS',3,'SUNS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('AYTON','DANDRE',22,'SUNS',87);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('PAYNE','CAMERON',15,'SUNS',79);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CROWDER','JAE',99,'SUNS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BAGLEY III','MARVIN',35,'KINGS',77);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('FOX','DEAARON',5,'KINGS',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BARNES','HARRISON',40,'KINGS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HIELD','BUDDY',24,'KINGS',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WHITESIDE','HASSAN',20,'KINGS',77);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LAVINE','ZACH',8,'BULLS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('VUCEVIC','NICOLA',9,'BULLS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WHITE','COBY',0,'BULLS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GREEN','JAVONTE',11,'BULLS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MARKKANEN','LAURI',24,'BULLS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ALLEN','JARRET',31,'CAVALIERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GARLAND','DARIUS',10,'CAVALIERS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SEXTON','COLLIN',2,'CAVALIERS',81);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('OSMAN','CEDI',16,'CAVALIERS',77);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LOVE','KEVIN',0,'CAVALIERS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GRANT','JERAMY',9,'PISTONS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('JOSEPH','CORY',18,'PISTONS',76);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('PLUMLEE','MASON',24,'PISTONS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DIALLO','HAMIDOU',6,'PISTONS',81);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('COOK','TYLER',25,'PISTONS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('SABONIS','DOMANTAS',11,'PACERS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HOLIDAY','AARON',3,'PACERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LAMB','JEREMY',26,'PACERS',71);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LEVERT','CARIS',22,'PACERS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WARREN','TJ',1,'PACERS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ANTETOKOUNMPO','GIANNIS',34,'BUCKS',98);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MIDDLETON','KHRIS',22,'BUCKS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HOLIDAY','JRUE',21,'BUCKS',89);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LOPEZ','BROOK',11,'BUCKS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DIVINCENZO','DANTE',0,'BUCKS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BALL','LAMELO',2,'HORNETS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GRAHAM','DEVONTE',4,'HORNETS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HAYWARD','GORDON',20,'HORNETS',86);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BIYOMBO','BISMACK',8,'HORNETS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BRIDGES','MILES',0,'HORNETS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ADEBAYO','BAM',13,'HEAT',88);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BUTLER','JIMMY',22,'HEAT',91);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HERRO','TYLER',14,'HEAT',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ROBINSON','DUNCAN',55,'HEAT',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('IGUODALA','ANDRE',28,'HEAT',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BAMBA','MO',5,'MAGIC',76);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ANTHONY','COLE',50,'MAGIC',78);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HARRIS','GARY',14,'MAGIC',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CARTER JR','WENDELL',34,'MAGIC',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BACON','DWAYNE',8,'MAGIC',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BEAL','BRADLEY',3,'WIZARDS',93);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WESTBROOK','RUSSELL',4,'WIZARDS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('AVDIJA','DENI',9,'WIZARDS',77);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BERTANS','DAVIS',42,'WIZARDS',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LEN','ALEX',27,'WIZARDS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('JOKIC','NIKOLA',15,'NUGGETS',95);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MURRAY','JAMAL',27,'NUGGETS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GORDON','AARON',50,'NUGGETS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MILLSAP','PAUL',4,'NUGGETS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CAMPAZZO','FACUNDO',7,'NUGGETS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('EDWARDS','ANTHONY',1,'TIMBERWOLVES',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('RUBIO','RICKY',9,'TIMBERWOLVES',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('RUSSEL','D ANGELO',0,'TIMBERWOLVES',86);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ANTHONY-TOWNS','KARL',32,'TIMBERWOLVES',86);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('HERNANGOMEZ','JUANCHO',42,'TIMBERWOLVES',75);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('LILLARD','DAMIAN',0,'BLAZERS',96);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MCCOLLUM','CJ',3,'BLAZERS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ANTHONY','CARMELO',00,'BLAZERS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('COVINGTON','ROBERT',23,'BLAZERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('NURKIC','JUSUF',27,'BLAZERS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MITCHEL','DONOVAN',45,'JAZZ',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CONLEY','MIKE',10,'JAZZ',87);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GOBERT','RUDY',27,'JAZZ',89);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BOGDANOVIC','BOJAN',44,'JAZZ',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CLARKSON','JORDAN',00,'JAZZ',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BRADLEY','AVERY',9,'ROCKETS',78);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GORDON','ERIC',10,'ROCKETS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WALL','JOHN',1,'ROCKETS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WOOD','CHRISTIAN',35,'ROCKETS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('AUGUSTIN','DJ',14,'ROCKETS',78);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('MORANT','JA',12,'GRIZZLIES',89);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BROOKS','DILON',24,'GRIZZLIES',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('VALANCIUNAS','JONAS',17,'GRIZZLIES',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CLARKE','BRANDON',15,'GRIZZLIES',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('JACKSON JR','JAREN',13,'GRIZZLIES',83);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WILLIAMSON','ZION',1,'PELICANS',90);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('INGRAM','BRANDON',14,'PELICANS',87);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('ADAMS','STEVENS',12,'PELICANS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BALL','LONZO',2,'PELICANS',84);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('BLEDSOE','ERIC',5,'PELICANS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('GAY','RUDY',22,'SPURS',85);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WHITE','DERRICK',4,'SPURS',80);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DEMAR','DEROZAN',10,'SPURS',87);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('WALKER IV','LONNIE',1,'SPURS',82);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('POELTL','JAKOB',25,'SPURS',75);
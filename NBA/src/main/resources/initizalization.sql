CREATE TABLE IF NOT EXISTS userdatas (
email VARCHAR(100) PRIMARY KEY,
phone VARCHAR(100),
birth VARCHAR(1024),
favourite_team VARCHAR(100),
favourite_player VARCHAR(100));

CREATE TABLE IF NOT EXISTS users (
user VARCHAR(100) PRIMARY KEY,
password VARCHAR(100));


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

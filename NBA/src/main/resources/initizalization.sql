DROP TABLE players;

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

INSERT INTO players (last_name,name,dorsal,team,media) VALUES('JAMES','LEBRON',23,'LAKERS',99);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('CURRY','STEPHEN',30,'WARRIORS',97);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DONCIC','LUKA',77,'MAVERICKS',98);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('DURANT','KEVIN',7,'NETS',99);
INSERT INTO players (last_name,name,dorsal,team,media) VALUES('IRVING','KYRIE',11,'NETS',95);



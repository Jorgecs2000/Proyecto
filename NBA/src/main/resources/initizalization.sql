
CREATE TABLE IF NOT EXISTS userdatas (
email VARCHAR(100) PRIMARY KEY,
phone VARCHAR(100),
birth VARCHAR(1024),
favourite_team VARCHAR(100),
favourite_player VARCHAR(100));

CREATE TABLE IF NOT EXISTS users (
user VARCHAR(100) PRIMARY KEY,
password VARCHAR(100));
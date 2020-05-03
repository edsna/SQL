/*
 * Creates table Songs with properties (ID, name, length & primary key) 
*/
SHOW DATABASES;
USE Edson;
CREATE TABLE Songs(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    name VARCHAR(100) NOT NULL,
    length FLOAT NOT NULL
);
#Adds album ID to Songs
ALTER TABLE Songs
ADD album_id INT NOT NULL,
ADD FOREIGN KEY(album_id) REFERENCES albums(id);
SELECT * FROM Songs;
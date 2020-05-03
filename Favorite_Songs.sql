/*
 *Creates 2 tables FavSongs and Fav Albums
*/

SHOW DATABASES;
USE Edson;
CREATE TABLE favSongs(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    name VARCHAR(500) NOT NULL,
    length FLOAT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY(album_id) REFERENCES favAlbums(id)
);

CREATE TABLE favAlbums(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    release_Year INT,
    name VARCHAR(500) NOT NULL
);

#Prints content in each
SELECT *FROM favalbums;
SELECT *FROM favSongs;

#Insert favorite albums
INSERT INTO favalbums(id, release_Year, name) VALUES (1, 2013, 'Intense'),
	(2, 2014, 'We Aare'),
    (3, 2009, 'Evacuate the Dance Floor'),
    (4, 2013, 'Calling Time'),
	(5, NULL, 'Test Album');
    
    SELECT *FROM favalbums;
    INSERT INTO favalbums(name, release_Year) VALUES ('Elements of Life', 2007);
    SELECT *FROM favalbums;
INSERT INTO favsongs(name, length, album_id) VALUES('Elements of Life', 8.25, 6),
	('riving to Heaven', 4.42, 6),
    ('Hold on', 2.57, 3),
    ('Evacuate the Dancefloor', 3.27, 3),
    ('Calling time', 3.07, 4), #Bass
    ('Crash & Burn', 3.08, 4),
    ('Here Tonight', 4.02, 2), #Dash
    ('Heart Meets Water', 3.10, 2),
    ('Intense', 8.47, 1), #Armin
    ('This is What it Feels Like', 3.23, 1);
    
    SELECT *FROM favsongs;
    
ALTER TABLE favsongs
ADD album_Name VARCHAR(500) NOT NULL;
SELECT *FROM favsongs;
SELECT album_Name AS 'Band_Name' FROM favsongs;
SELECT *FROM favsongs;

UPDATE favsongs
SET album_Name = 'Armin Van Buuren' WHERE album_id = 1;

UPDATE favsongs
SET album_Name = 'Dash Berlin' WHERE album_id = 2;

SELECT *FROM favsongs;
UPDATE favsongs
SET album_Name = 'CASCADA' WHERE album_id = 3;
UPDATE favsongs
SET album_Name = 'Basshunter' WHERE album_id = 4;
UPDATE favsongs
SET album_Name = 'Tiesto' WHERE album_id = 6;

SELECT *FROM favsongs;
UPDATE favsongs
SET name = 'Driving to Heaven' WHERE id = 2;
SELECT *FROM favsongs;
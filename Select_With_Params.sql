#Selects data in table with parameters

SHOW DATABASES;
USE Edson;

#Select oldest album year
SELECT MIN(release_Year)
FROM favalbums;

#Select oldest album row
SELECT *FROM favalbums
WHERE release_Year IS NOT NULL
ORDER BY release_Year
LIMIT 1;
#Another way
/*SELECT *FROM favalbums
WHERE release_Year IS NOT NULL
ORDER BY MIN(release_Year)
LIMIT 1;*/

INSERT INTO favsongs(name, length, album_id, album_Name) VALUES ('Test Song', 10.59, 6, 'Test Album');

#Select all songs that have albums
SELECT  *FROM favsongs
WHERE album_Name IS NOT NULL;

#Avoid duplicates
SELECT DISTINCT  *FROM favalbums
WHERE name IS NOT NULL;

/*SELECT DISTINCT favalbums.name AS Band_Name
FROM favalbums
JOIN favsongs on favsongs.id = favalbums.album_id;*/

#Get the longest song time
SELECT MAX(length)
FROM favsongs
ORDER BY length
LIMIT 1;

#Get the longest song row in favSongs
SELECT *FROM favsongs
WHERE length IS NOT NULL
ORDER BY length DESC
LIMIT 1;

#Get the longest album row in gavAlbums
/*SELECT
	favalbums.name AS 'albumName',
	favalbums.release_Year AS 'releaseYear',
    SUM(favsongs.length) AS 'Duration'
FROM favalbums
JOIN favsongs ON favalbums.id = favsongs.album_id
GROUP BY favsongs.album_id,
GROUP BY Duration DESC
LIMIT 1;*/

SELECT *FROM favalbums;
#Add release year for test album
UPDATE favalbums
SET release_Year = 2020 WHERE id = 5;
SELECT *FROM favalbums;

# Insert record for fav album and fav song
INSERT INTO favalbums (release_Year, name) VALUES (2020, 'Fav Album');
INSERT INTO favsongs (name, length, album_id, album_Name) VALUES ('May 1st', 26.00, 7, 'fav Album');
SELECT *FROM favalbums;
SELECT *FROM favsongs;

#Delete album fav album
DELETE FROM favalbums WHERE id = 7;
SELECT *FROM favalbums;

#Get the average length of all songs
SELECT avg(length) AS 'AverageLengthOFSongs'
FROM favsongs;

# Select the longest song of each album
SELECT
	favalbums.name AS 'albumName',
	favalbums.release_Year AS 'releaseYear',
    MAX(favsongs.length) AS 'Duration'
FROM favalbums
JOIN favsongs ON favalbums.id = favsongs.album_id
GROUP BY favsongs.album_id;

#Get the number of songs in each album
SELECT album_id, COUNT(album_id) FROM favsongs
GROUP BY album_id;

#Another way
/*SELECT
	favalbums.name AS 'Album Name',
    favalbums.release_Year AS 'Release year',
    COUNT(album_id) AS 'Number of Songs'
FROM favsongs
JOIN favsongs ON favalbums.id = favsongs.album_id
GROUP BY favsongs.album_id;*/


SHOW DATABASES;
USE Edson;

#Change name to Title
SELECT name AS 'Title' FROM favSongs;
SELECT *FROM favsongs;

 #Selecting each column
 SELECT id FROM favsongs;
 SELECT name FROM favsongs;	#Selects name column
 SELECT length FROM favsongs;
 SELECT album_id FROM favsongs;
 SELECT album_Name FROM favsongs;
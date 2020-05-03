#Adding and Querying data in tables
USE Edson;
INSERT INTO Bands (Name)
VALUES ('Dash Berlin');
#Another way of adding data is
INSERT INTO Bands (Name)
VALUES ('Cascada'), ('Armin Van Buuren'), ('Basshunter'); 
#Selects all columns & rows from table 
SELECT *FROM Bands;

#Prints up to 3 Bands from Bands
SELECT *FROM Bands LIMIT 3;

#Selects specific columns from Bands
SELECT Name FROM bands;

#REname a certain column
SELECT ID AS 'Band_ID', Name AS 'Band Name' FROM  Bands;

#Changing the Way data is ordered in the table
SELECT *FROM Bands ORDER BY Name;

#Changing to descending order
SELECT *FROM Bands ORDER BY Name DESC;

#Changing to ascending order of names
SELECT *FROM Bands ORDER BY Name ASC;
INSERT INTO Albums (Name, Release_year, Band_ID)
VALUES ('Intense', 2013, 3),
	   ('We Are', 2014, 1),
       ('Evacuate the dance floor', 2009, 2),
       ('Calling Time', 2013, 4),
       ('Test Album', NULL , 4);
SELECT *FROM Albums;
SELECT Name FROM Albums;
#Select only distinct names
SELECT DISTINCT Name FROM Albums;

#Make changes to existing data
UPDATE Albums 
SET Release_year = 2009 WHERE ID = 2;

SELECT *FROM albums;
SELECT *FROM albums WHERE Release_year < 2013;
UPDATE Albums
SET Name = 'Evacuate The Dance Floor' WHERE ID = 2;
#Select row if name has following chars
SELECT *FROM albums
WHERE Name LIKE '%the%' OR Band_ID = 2;
#Selects rows with exactly these conditions
SELECT * FROM Albums 
WHERE Release_year = 2013 AND Band_ID = 3;

#FIltering between 2 values
SELECT *FROM Albums
WHERE Release_year BETWEEN 2009 AND 2013;

#Filters where release year is null
SELECT *FROM Albums
WHERE Release_year IS NULL;

# Deleting
DELETE FROM Albums WHERE ID = 4;

SELECT *FROM Albums;
DELETE FROM Albums WHERE ID = 11;

SELECT *FROM Albums;
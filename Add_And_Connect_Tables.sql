SHOW DATABASES;
/*
 * Created a table bands with 3 columns
 * , separate columns
 * NOT NUll - makes sure no empty value cell
 * Increment = i++
*/
CREATE TABLE Bands (
	ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Albums (
	ID INT NOT NULL AUTO_INCREMENT, 	#Creates ID column for Album
	Release_year INT,	#Creates release_year column fir album
    Name VARCHAR(100)  NOT NULL,	#creates name columnn for album
    PRIMARY KEY (ID),	#Sets primary key of album to key
    Band_ID INT NOT NULL, #Stores Reference to Band ID
    FOREIGN KEY (Band_ID) REFERENCES Bands(ID)
    #Makes Album child of Band
);


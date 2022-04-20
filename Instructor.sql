CREATE TABLE Instructor
	(ins_id INTEGER PRIMARY KEY NOT NULL, 
	lastname VARCHAR (15) NOT NULL, 
	firstname VARCHAR (15) NOT NULL, 
	city VARCHAR (15), 
	country CHAR (2));
    
-- Hands-On Lab: INSERT, UPDATE, and DELETE 

INSERT INTO Instructor (ins_id, lastname, firstname, city, country) 
VALUES (1, "Ahuja", "Rav", "Markham", "CA"), (2, "Chong", "Raul", "Toronto", "CA");
-- Explore all the columns and rows of the Instructor table to get an overall idea of the table contents.
SELECT * FROM Instructor;

-- Insert two new instructor records.
INSERT INTO Instructor (ins_id, lastname, firstname, city, country) VALUES (3, "Vasudevan", "Hima", "Chicago", "US"), 
	(4, "Saha", "Sandip", "Dhaka", "BD");
SELECT * FROM Instructor;

-- Insert three new instructor records into the "Instructor" table.
INSERT INTO Instructor (ins_id, lastname, firstname, city, country) VALUES (5, "Doe", "John", "Sydney", "AU"), 
	(6, 'Doe', 'Jane', 'Dhaka', 'BD'), 
	(7, "Cangiano", "Antonio", "Vancouver", "CA");
SELECT * FROM Instructor;

-- Insert two new instructor records into the "Instructor" table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.
INSERT INTO Instructor (ins_id, lastname, firstname, city, country) 
VALUES (8, 'Ryan', 'Steve', 'Barlby', 'GB'), (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN');
SELECT * FROM Instructor;

-- Update the city for Sandip to Toronto.
UPDATE Instructor SET City = "Toronto" WHERE firstname = "Sandip";
SELECT * FROM Instructor;

-- Update the city of the instructor record to Markham whose id is 1.
UPDATE Instructor SET City = "Markham" 
WHERE ins_id = 1;
SELECT * FROM Instructor;

-- Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
UPDATE Instructor SET city = "Dhaka", country = "BD"
WHERE FIRSTNAME = "Sandip";
SELECT * FROM Instructor;

-- Update the city and country for Doe with id 5 to Dubai and AE respectively.
UPDATE Instructor SET city = "Dubai", country = "AE"
WHERE INS_ID = 5;
SELECT * FROM Instructor;

-- Remove the instructor record of Doe whose id is 6.
DELETE FROM Instructor 
WHERE ins_id = 6;
SELECT * FROM Instructor;

-- Remove the instructor record of Hima.
DELETE FROM Instructor 
WHERE firstname = "Hima";
SELECT * FROM Instructor;




















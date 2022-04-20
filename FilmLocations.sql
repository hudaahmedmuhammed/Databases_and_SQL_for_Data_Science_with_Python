 -- Hand-On Lab: Simple SELECT Statement 
 
-- Retrieve all records with all columns from the "FilmLocations" table.
SELECT * FROM filmlocations;

-- Retrieve the names of all films with director names and writer names.
select ï»؟Title, Director, Writer from filmlocations;

-- Retrieve the names of all films released in the 21st century and onwards (release years after 2001 including 2001), along with filming locations and release years.
select ï»؟Title, ReleaseYear, Locations from filmlocations
where ReleaseYear >= 2001;

-- Retrieve the fun facts and filming locations of all films.
select FunFacts, Locations from filmlocations;

-- Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000) that, along with filming locations and release years.
select ï»؟Title, ReleaseYear, Locations from filmlocations
where ReleaseYear <= 2000;

-- Retrieve the names, production company names, filming locations, and release years of the films which are not written by James Cameron.
select ï»؟Title, ReleaseYear, Locations, ProductionCompany from filmlocations
where Writer <> "James Cameron";


--  Hands-On Lab: COUNT, DISTINCT, LIMIT

-- Retrieve the number of rows from the "FilmLocations" table.
select count(*) from filmlocations;

-- Retrieve the number of locations of the films which are written by James Cameron.
select count(Locations) from FilmLocations
where Writer = "James Cameron";

-- Retrieve the number of locations of the films which are directed by Woody Allen.
select count(Locations) from FilmLocations
where Director = "Woody Allen";

-- Retrieve the number of films shot at Russian Hill.
select count(ï»؟Title) from FilmLocations
where Locations = "Russian Hill";

-- Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.
select count(*) from FilmLocations 
where ReleaseYear > 1950;

-- Retrieve the name of all films without any repeated titles.
select distinct ï»؟Title from FilmLocations;

-- Retrieve the number of release years of the films distinctly, produced by Warner Bros. Pictures.
select count(distinct ReleaseYear ) from FilmLocations
where ProductionCompany = "Warner Bros. Pictures";

-- Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.
select distinct ï»؟Title, ReleaseYear from FilmLocations
where ReleaseYear >= 2001;

-- Retrieve the names of all the directors and their distinct films shot at City Hall.

select distinct ï»؟Title, Director from FilmLocations
where Locations = "City Hall";

-- Retrieve the number of distributors distinctly who distributed films acted by Clint Eastwood as 1st actor.
select count(distinct Distributor) from FilmLocations
where actor1 = "Clint Eastwood";

-- Retrieve the first 25 rows from the "FilmLocations" table.
select * from FilmLocations limit 25;

-- Retrieve the first 15 rows from the "FilmLocations" table starting from row 11.
select * from FilmLocations limit 15 offset 10;

-- Retrieve the name of first 50 films distinctly.
select distinct ï»؟Title from FilmLocations limit 50;

-- Retrieve the next 3 film names distinctly after first 5 films released in 2015.
select distinct ï»؟Title from FilmLocations 
where ReleaseYear = 2015 limit 3 offset 5;

















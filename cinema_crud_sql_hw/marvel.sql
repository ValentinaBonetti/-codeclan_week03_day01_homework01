DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);INSERT INTO people (name) VALUES ('Henrique Batista');
INSERT INTO people (name) VALUES ('David Bell');
INSERT INTO people (name) VALUES ('Valentina Bonetti');
INSERT INTO people (name) VALUES ('Andrew Brown');
INSERT INTO people (name) VALUES ('Gillian Campbell');
INSERT INTO people (name) VALUES ('Jordan Davidson');
INSERT INTO people (name) VALUES ('Neil Davidson');
INSERT INTO people (name) VALUES ('Craig Dunlop');
INSERT INTO people (name) VALUES ('Gil Franca');
INSERT INTO people (name) VALUES ('Hadsan Geeele');
INSERT INTO people (name) VALUES ('Stephen Hart');
INSERT INTO people (name) VALUES ('Anna Henderson');
INSERT INTO people (name) VALUES ('Alistair Kane');
INSERT INTO people (name) VALUES ('Asma Malik');
INSERT INTO people (name) VALUES ('Leah Meromy');
INSERT INTO people (name) VALUES ('Drew Neillie');
INSERT INTO people (name) VALUES ('Neal Rethvun');
INSERT INTO people (name) VALUES ('David Telfer');
INSERT INTO people (name) VALUES ('Raymond Yau');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:50');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '19:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '13:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '19:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '15:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '20:20');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '22:25');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '21:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '15:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '14:25');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '20:50');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

-- 1. Return ALL the data in the 'movies' table.
-- SELECT * FROM movies;

-- 2. Return ONLY the name column from the 'people' table
-- SELECT name FROM people;

-- 3. Oh bother! Someone at CodeClan spelled Neil R's name wrong!
-- Change it to reflect the proper spelling
-- (change 'Neal Rethvun' to 'Neil Ruthven').
UPDATE people SET name = 'Neil Ruthven'
WHERE name = 'Neal Rethvun';

-- 4. Return ONLY your name from the 'people' table.
-- SELECT name FROM people
-- WHERE name = 'Valentina Bonetti';

-- 5. The cinema is showing 'Batman Begins',
-- but Batman is DC, not Marvel! Delete the entry
-- from the 'movies' table.

DELETE FROM movies
WHERE title = 'Batman Begins';


-- 6. Create a new entry in the 'people' table
-- with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Colibu Shorttoss');

-- 7. Oh no! Nefarious G7 instructor Alistair Kane has
-- decided to hijack our movie evening! Remove him from
-- the table of people.

DELETE FROM people
WHERE name = 'Alistair Kane';

-- 8. The cinema has just heard that they will be holding
-- an exclusive midnight showing of 'Avengers: Infinity War'!!
-- Create a new entry in the 'movies' table to reflect this.

-- done above, last line of movies insertions


-- 9. The cinema would also like to make the Guardian movies a
-- back-to-back feature. Update the 'Guardians of the Galaxy 2'
-- show time from 14:45 to 18:00

UPDATE movies SET show_time = '18:00'
WHERE title = 'Guardians of the Galaxy 2';

--
-- 1. Research how to delete multiple entries from
-- your table in a single command.

DELETE FROM people
WHERE name LIKE 'A%';

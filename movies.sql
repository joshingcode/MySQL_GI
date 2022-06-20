USE userFaves;

-- INSERT INTO movies
-- VALUES ('The Godfather','1972','9.2'),
-- ('The Dark Night','2008','9'),
-- ('Pulp Fiction','1994','8.9'),
-- ('The Matrix','1999',8.7),
-- ('Back to thh Future','1985',8.5),
-- ('Parasite','2019',8.5),
-- ('Avengers:Infinity War','2019',8.4),
-- ('Joker','2019',8.3),
-- ('Toy Story 3','2010',8.3),
-- ('The Wolf of Wall Street','2013',8.2);
      
SELECT 
    *
FROM
    userFaves.movies
    WHERE title LIKE 'S%i'
ORDER BY release_year ASC;

-- Make a copy of your Medium Challenge Write out the queries that would add the director’s First Name 
-- and Last Name into two separate columns. Create a query that puts the names together. 
-- Create a query to put the list in alphabetical order by the last name from A-Z After you order the list,
--  remove the Movies where the Last Name ends with ”R-Z” Write a query where the first three appear

ALTER TABLE userFaves.movies
ADD COLUMN director_first TEXT,
ADD COLUMN director_last TEXT;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM userFaves.movies;
UPDATE userFaves.movies
SET 
	director_first = 'John',
    director_last= 'Smith'
WHERE rating <= 8.5;

UPDATE userFaves.movies
SET 
	director_first = 'Jane',
    director_last= 'Dorito'
WHERE rating >= 8.5;

SELECT 
    CONCAT(director_first, ' ', director_last) AS director_name
FROM
    userFaves.movies;
    
SELECT * FROM userFaves.movies 
ORDER BY director_last ASC 
LIMIT 3;




INSERT INTO userFaves.books
VALUES ('Verity','2020-05-21','Colleen Hoover'),
('Ugly Love','2014-08-14','Colleen Hoover'),
('The Seven Husbands of Evelyn Hugo','2019-03-14','Taylor Jenkins Reid'),
('Book Lovers','2022-05-12','Emily Henry'),
('Tom Clancy Zero Hour','2022-06-16','Don Bentley');

SELECT * FROM userFaves.books;

INSERT INTO books
VALUES ('Dream Town','2022-04-28','David Baldacci'),
('The Very Hungry Caterpillar','2003-12-11','Eric Carle');


SELECT * FROM userFaves.books
ORDER BY publish_date ASC;

DELETE FROM books
ORDER BY publish_date ASC
LIMIT 1;

SELECT COUNT(*)
FROM books;

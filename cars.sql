SELECT * FROM userFaves.cars;

INSERT INTO cars
VALUES ('2023','Porsche','Cayenne'),
('2022','Mercedes','GLE');

-- Copy the table from your Very Easy Challenge Write a query to add in three cars at once 
-- Write a query to add in prices and colors for each of these cars Write a query to put the Make and Model
--  together in one column Create a new query that adds an additional column to the results to show 
--  how many cars have the same Make.

ALTER TABLE userFaves.cars
ADD COLUMN price REAL,
ADD COLUMN color TEXT;
INSERT INTO cars
VALUES ('2020','BMW','x5','60000','black'),
('2019','Hyundai','Tucson','48000','red');

SELECT * FROM userFaves.cars;

SELECT 
    CONCAT(make, ' ', model) AS make_model
FROM
    userFaves.cars;
    
SELECT make, COUNT(make) FROM userFaves.cars
GROUP BY make
HAVING COUNT(make) > 1 ;
 

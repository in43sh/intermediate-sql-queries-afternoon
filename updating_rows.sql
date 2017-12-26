--https://chinook.ml/
--1.Find all customers with fax numbers and set those numbers to null.
/*
UPDATE Customer
SET fax = null
WHERE fax IS NOT NULL;
*/

--2.Find all customers with no company (null) and set their company to "Self".
/*
UPDATE Customer
SET Company = "Self"
WHERE Company IS null;
*/

--3.Find the customer Julia Barnett and change her last name to Thompson.
/*
UPDATE Customer
SET LastName = "Thompson"
WHERE FirstName = "Julia" AND LastName = "Barnett";
*/

--4.Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
/*
UPDATE Customer
SET SupportRepId = 4
WHERE Email = "luisrojas@yahoo.cl";
*/

--5.Find all tracks that are the genre Metal and have no composer. Set the composer to "The darkness around us".
/*
UPDATE Track
SET Composer = "The darkness around us"
WHERE GenreId IN (SELECT GenreId FROM Genre WHERE Name = "Metal")
AND Composer IS null;
*/

--6.Refresh your page to remove all database changes.
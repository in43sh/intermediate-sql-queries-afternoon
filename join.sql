--https://chinook.ml/
--1.Get all invoices where the UnitPrice on the InvoiceLine is greater than $0.99.
/*
SELECT *
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
WHERE il.UnitPrice > 0.99;
*/

--2.Get the InvoiceDate, customer FirstName and LastName, and Total from all invoices.
/*
SELECT i.InvoiceDate, c.FirstName, c.LastName, i.Total
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId;
*/

--3.Get the customer FirstName and LastName and the support rep's FirstName and LastName from all customers.
--Support reps are on the Employee table.
/*
SELECT c.FirstName c_FirstName, c.LastName c_LastName, e.FirstName e_FirstName, e.LastName e_LastName
FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId;
*/

--4.Get the album Title and the artist Name from all albums.
/*
SELECT al.Title, ar.Name
FROM Album al
JOIN Artist ar ON al.ArtistId = ar.ArtistId;
*/

--5.Get all PlaylistTrack TrackIds where the playlist Name is Music.
/*
SELECT pt.TrackId
FROM PlaylistTrack pt
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
WHERE p.Name = "Music";
*/

--6.Get all Track Names for PlaylistId 5.
/*
SELECT t.Name
FROM Track t
JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
WHERE pt.PlaylistId = 5;
*/

--7.Get all Track Names and the playlist Name that they're on ( 2 joins ).
/*
SELECT t.Name, p.Name
FROM Track t
JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId;
*/

--8.Get all Track Names and Album Titles that are the genre "Alternative" ( 2 joins ).
/* 
SELECT t.Name, al.Title
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = "Alternative";
 */
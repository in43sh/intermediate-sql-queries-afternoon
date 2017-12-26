--https://chinook.ml/
--1.Get all invoices where the UnitPrice on the InvoiceLine is greater than $0.99.
--SELECT * FROM Invoice WHERE InvoiceId IN (SELECT InvoiceId FROM InvoiceLine WHERE UnitPrice > 0.99);
/*
SELECT *
FROM Invoice
WHERE InvoiceId IN ( SELECT InvoiceId FROM InvoiceLine WHERE UnitPrice > 0.99 );
*/
--2.Get all Playlist Tracks where the playlist name is Music.
/*
SELECT *
FROM PlaylistTrack
WHERE PlaylistId IN (SELECT PlaylistId FROM Playlist WHERE Name = "Music")
*/

--3.Get all Track names for PlaylistId 5.
/*
SELECT Name
FROM Track
WHERE TrackId IN (SELECT TrackId FROM PlaylistTrack WHERE PlaylistId = 5);
*/

--4.Get all tracks where the Genre is Comedy.
/*
SELECT *
FROM Track
WHERE GenreId IN (SELECT GenreId FROM Genre WHERE Name = "Comedy");
*/

--5.Get all tracks where the Album is Fireball.
/*
SELECT *
FROM Track
WHERE AlbumId IN (SELECT AlbumId FROM Album WHERE Title = "Fireball");
*/

--6.Get all tracks for the artist Queen ( 2 nested subqueries ).
/*
SELECT *
FROM Track
WHERE AlbumId IN (
	SELECT AlbumId FROM Album WHERE ArtistId IN (
    	SELECT ArtistId FROM Artist WHERE Name = "Queen"
    )
);
*/
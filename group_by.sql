--1.Find a count of how many tracks there are per genre. Display the genre name with the count.
/*
SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name;
*/

--2.Find a count of how many tracks are the "Pop" genre and how many tracks are the "Rock" genre.
/*
SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = "Pop" OR g.Name = "Rock"
GROUP BY g.Name;
*/

--3.Find a list of all artists and how many albums they have.
/* SELECT Count(*), ar.Name
FROM Album al
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name; */

/* SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId; */

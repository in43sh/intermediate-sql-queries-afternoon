--1.Copy, paste, and run the SQL code from the summary.
/*
CREATE TABLE practice_delete ( Name string, Type string, Value integer );
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);

SELECT * FROM practice_delete;
*/

--2.Delete all "bronze" entries from the table.
/*
DELETE
FROM practice_delete
WHERE Type = "bronze";
*/

--3.Delete all "silver" entries from the table.
/*
DELETE
FROM practice_delete
WHERE Type = "silver";
*/

--4.Delete all entries whose value is equal to 150.
/*
DELETE
FROM practice_delete
WHERE Value = 150;
*/
CREATE TABLE classrooms (id INT, student_id INT, section VARCHAR(5))
INSERT INTO classrooms (id, student_id, section) VALUES 
	(1, 1, "A"),
    (2, 2, "A"),
    (3, 3, "B"),
    (4, 4, "C"),
    (5, 5, "B"),
    (6, 6, "A"),
    (7, 7, "C"),
    (8, 8, "B"),
    (9, 9, "B"),
    (10, 10, "C")

--INNER JOIN
SELECT * FROM students AS s
JOIN classrooms AS c
ON s.id = c.id;

--LEFT JOIN
SELECT * FROM students AS s
LEFT JOIN classrooms AS c
ON s.id = c.id;

--RIGHT JOIN
SELECT * FROM students AS s
RIGHT JOIN classrooms AS c
ON s.id = c.id;

--FULL JOIN
SELECT * FROM students AS s
FULL JOIN classrooms AS c
ON s.id = c.id;
    


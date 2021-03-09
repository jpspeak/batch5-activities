CREATE TABLE students (
  id int, 
  first_name varchar(50), 
  middle_name varchar(50), 
  last_name varchar(50), 
  age int, 
  location varchar(255)
)

INSERT INTO students (id ,first_name, middle_name, last_name, age, location) 
VALUES 
(1, "Juan", "X", "Cruz", 18, "Manila"),
(2, "John", "X", "Young", 20, "Manila"),
(3, "Victor", "X", "Rivera", 21, "Manila"),
(4, "Adrian", "X", "Co", 19, "Laguna"),
(5, "Pau", "X", "Riosa", 22, "Marikina"),
(6, "Piolo", "X", "Pascual", 25, "Manila");

UPDATE students 
SET 
first_name = "Ana", 
middle_name = "Cui", 
last_name = "Cajocson",
age = 25,
location = "Bulacan"
WHERE id = (SELECT id FROM students ORDER BY id LIMIT 1);

DELETE FROM students WHERE id = (SELECT id FROM students ORDER BY id DESC LIMIT 1);
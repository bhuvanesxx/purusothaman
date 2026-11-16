
use college_db ;
CREATE TABLE staff_table (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary VARCHAR(20),
    city VARCHAR(50)
);


INSERT INTO staff_table VALUES
(1, 'Arun', 'HR', 25000, 'Madurai'),
(2, 'Bala', 'IT', 35000, 'Chennai'),
(3, 'Kumar', 'Sales', 30000, 'Salem'),

(4, 'Ajith', 'IT', 40000, 'Coimbatore'),
(5, 'Mani', 'HR', 27000, 'Erode'),
(6, 'Siva', 'Finance', 45000, 'Salem');


UPDATE staff_table SET salary = 45000 WHERE staff_id = 3;


UPDATE staff_table
SET department = 'IT'
WHERE staff_id = 5;

DELETE FROM staff_table
WHERE staff_id = 4;


SELECT * FROM staff_table;
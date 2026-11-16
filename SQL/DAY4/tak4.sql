USE college_db ;

CREATE TABLE employ (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    stock INT DEFAULT 0,
    price DECIMAL(10,2) DEFAULT 0
);

INSERT INTO employ VALUES
(1, 'Arun', 22, 'arun@gmail.com', 'IT', 45000, 'Chennai', '2024-01-10', 50, 500),
(2, 'Bala', 24, 'bala@gmail.com', 'HR', 35000, 'Madurai', '2023-02-15', 30, 300),
(3, 'Kumar', 25, 'kumar@gmail.com', 'IT', 55000, 'Chennai', '2022-03-20', 40, 700),
(4, 'Ravi', 21, 'ravi@gmail.com', 'Sales', 28000, 'Madurai', '2024-04-12', 60, 400),
(5, 'Vijay', 23, 'vijay@gmail.com', 'HR', 42000, 'Chennai', '2023-05-18', 20, 600),
(6, 'Ajith', 26, 'ajith@gmail.com', 'IT', 60000, 'Coimbatore', '2021-06-25', 80, 900),
(7, 'Mani', 20, 'mani@gmail.com', 'Sales', 32000, 'Madurai', '2024-07-14', 25, 350),
(8, 'Siva', 24, 'siva@gmail.com', 'HR', 48000, 'Chennai', '2022-08-19', 35, 800),
(9, 'Deepak', 22, 'deepak@gmail.com', 'IT', 38000, 'Chennai', '2023-09-22', 45, 450),
(10, 'Karthik', 25, 'karthik@gmail.com', 'Sales', 25000, 'Madurai', '2024-10-11', 15, 250);

SELECT *
FROM employ
WHERE department = 'IT'
AND salary > 30000;


SELECT *
FROM employ
WHERE age BETWEEN 18 AND 25
AND city IN ('Chennai', 'Madurai');

SELECT department,
COUNT(*) AS total_employees
FROM employ
GROUP BY department;

SELECT department AS category,
SUM(stock) AS total_stock,
AVG(price) AS average_price
FROM employ
GROUP BY department;

SELECT * FROM employ;
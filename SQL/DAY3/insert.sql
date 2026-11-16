USE college_db ;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    age INT,
    registration_date DATE
);

INSERT INTO customers
(customer_id, name, email, city, age, registration_date)
VALUES
(1, 'Arun', 'arun@gmail.com', 'Chennai', 22, '2026-01-10'),
(2, 'Bala', 'bala@gmail.com', 'Madurai', 24, '2026-01-12'),
(3, 'Kumar', 'kumar@gmail.com', 'Coimbatore', 25, '2026-01-15'),
(4, 'Ravi', 'ravi@gmail.com', 'Thoothukudi', 23, '2026-01-18'),
(5, 'Vijay', 'vijay@gmail.com', 'Salem', 26, '2026-01-20'),
(6, 'Ajith', 'ajith@gmail.com', 'Trichy', 27, '2026-01-22'),
(7, 'Mani', 'mani@gmail.com', 'Chennai', 21, '2026-01-25'),
(8, 'Siva', 'siva@gmail.com', 'Erode', 28, '2026-01-27'),
(9, 'Deepak', 'deepak@gmail.com', 'Madurai', 22, '2026-01-29'),
(10, 'Karthik', 'karthik@gmail.com', 'Salem', 29, '2026-02-01');


INSERT INTO customers
(name, email, city, age, registration_date)
VALUES
('Senthil', 'senthil@gmail.com', 'Chennai', 25, '2026-02-05');

INSERT INTO customers
(name, email, city, age, registration_date)
VALUES
('Bhuvanesh', 'bhuvanesh@gmail.com', 'Thoothukudi', 23, '2026-02-10');

INSERT INTO customers (name, city, age)
VALUES ('Praveen', 'Coimbatore', 24);


SELECT * FROM customers;
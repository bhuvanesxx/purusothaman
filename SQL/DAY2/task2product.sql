
use college_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    product_code VARCHAR(30) UNIQUE,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    stock INT DEFAULT 0,
    brand VARCHAR(50) DEFAULT 'Generic',
    manufacture_date DATE,
    expiry_date DATE,
    is_available BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products
(product_name, product_code, category, price, stock, brand,
manufacture_date, expiry_date, is_available)
VALUES
('Laptop', 'P101', 'Electronics', 55000, 10, 'Dell', '2026-01-10', '2029-01-10', TRUE),

('Mobile', 'P102', 'Electronics', 25000, 20, 'Samsung', '2026-02-10', '2029-02-10', TRUE),

('Keyboard', 'P103', 'Accessories', 1200, 30, 'HP', '2026-03-10', '2029-03-10', TRUE),

('Mouse', 'P104', 'Accessories', 500, 50, 'Logitech', '2026-04-10', '2029-04-10', TRUE),

('Headphones', 'P105', 'Electronics', 2000, 15, 'Boat', '2026-05-10', '2029-05-10', FALSE);


SELECT * FROM products;

DESC products;
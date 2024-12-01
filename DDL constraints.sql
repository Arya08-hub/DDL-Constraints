CREATE DATABASE sales;
-- Use the 'sales' database
USE sales;

-- Create a table named 'orders'
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_category VARCHAR(100),
    ordered_item VARCHAR(100),
    contact_no VARCHAR(15)
);
ALTER TABLE orders ADD COLUMN order_quantity INT;
RENAME TABLE orders TO sales_orders;
INSERT INTO sales_orders (customer_name, product_category, ordered_item, contact_no, order_quantity)
VALUES 
('John', 'Electronics', 'Smartphone', '1234567890', 2),
('Jane', 'Furniture', 'Sofa', '0987654321', 1),
('Alice', 'Clothing', 'T-Shirt', '1112223334', 5),
('Bob', 'Books', 'Novel', '4445556667', 3),
('Charlie Davis', 'Groceries', 'Apple', '7778889990', 10),
('christy', 'Beauty', 'Lipstick', '1231231234', 4),
('Adam', 'Electronics', 'Laptop', '4564564567', 1),
('John', 'Furniture', 'Dining Table', '7897897890', 1),
('Aby', 'Clothing', 'Jeans', '3213213210', 2),
('Lewis', 'Books', 'Notebook', '6546546543', 6);
SELECT customer_name, ordered_item FROM sales_orders;
UPDATE sales_orders
SET product_category = 'Home Appliances'
WHERE order_id = 1; -- Update based on a specific condition
-- Delete the table
DROP TABLE sales_orders;
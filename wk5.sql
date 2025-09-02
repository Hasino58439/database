-- Index
CREATE INDEX idx_customer_name ON customers(customer_name);
CREATE INDEX idx_sales_customer_date ON sales(customer_id, order_date);
CREATE INDEX idx_order_date ON sales(order_date);

-- Explain
EXPLAIN SELECT * FROM sales WHERE customer_id = 101;

-- Date
SELECT sale_id, customer_id, total_amount 
FROM sales 
WHERE order_date = '2025-08-01';

-- Customer + Date
SELECT sale_id, product_id, total_amount 
FROM sales 
WHERE customer_id = 105 
AND order_date BETWEEN '2025-08-01' AND '2025-08-31';

-- Latest
SELECT sale_id, customer_id, total_amount 
FROM sales 
ORDER BY order_date DESC 
LIMIT 10;

-- Faster


CREATE TABLE orders (
    row_id INT,
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);
DROP TABLE orders;

CREATE TABLE people (
    region VARCHAR(50),
    person VARCHAR(100)
);
DROP TABLE people;

CREATE TABLE returns (
    order_id VARCHAR(50),
    returned VARCHAR(50)
);
DROP TABLE returns;

SET datestyle = 'ISO, DMY';

COPY ord
FROM 'D:/Downloads/project data/Superstore order.csv'
DELIMITER ','
CSV HEADER
QUOTE '"';

COPY people
FROM 'D:/Downloads/project data/Superstore people.csv'
DELIMITER ','
CSV HEADER;

COPY returns
FROM 'D:/Downloads/project data/Superstore returns.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM returns LIMIT 5;

/*Join All Tables*/
CREATE TABLE final_data AS
SELECT o.*,
	   COALESCE(r.returned,'No')AS returned,
	   p.person
FROM orders o
LEFT JOIN returns r
ON o.order_id = r.order_id
LEFT JOIN people p
ON o.region = p.region;

SELECT * FROM final_data LIMIT 10;

/*Total Sales & Profit*/
SELECT 
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit
FROM final_data;

/*Sales & profit by Category*/
SELECT 
	category,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit
FROM final_data
GROUP BY category;

/*Top 10 Products*/
SELECT
	product_name,
	SUM(sales) AS total_sales
FROM final_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

/*Return Impact Analysis  'Returns reduce profit'*/
SELECT 
	returned,
	COUNT(*) AS total_orders,
	SUM(profit) AS total_profit
FROM final_data
GROUP BY returned;


/*Customer Behavior which helps to identify
repeat customer and one time customer*/
SELECT 
	customer_id,
	COUNT(order_id) AS total_orders
FROM final_data
GROUP BY customer_id
ORDER BY total_orders DESC
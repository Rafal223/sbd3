SELECT * FROM customers WHERE country="Germany";
SELECT * FROM customers WHERE city="Berlin";
SELECT * FROM customers WHERE country="Germany" AND city="Berlin";
SELECT * FROM customers WHERE (city="Berlin" OR city="München") AND country="Germany";
SELECT * FROM customers WHERE country!="Germany" AND country!="USA";
SELECT * FROM customers ORDER BY country ASC;
SELECT * FROM customers ORDER BY country DESC;
SELECT * FROM customers ORDER BY country DESC, customer_Name ASC;

SELECT MIN(price) FROM products;
SELECT MAX(price) FROM products;
SELECT COUNT(id) FROM products;
SELECT COUNT(id) FROM customers;
SELECT COUNT(country) FROM customers;
SELECT COUNT(id),AVG(price) FROM products WHERE category_id="1";
SELECT SUM(price) FROM products WHERE category_id="2";
SELECT MAX(price) FROM products WHERE category_id="1" OR category_id="2";

SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 20;
SELECT * FROM products WHERE category_id IN(1,2,3);
SELECT * FROM orders WHERE shipper_id IN(1,2,3);
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 15 AND category_id NOT IN(1,2,3,4);

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
SELECT MAX(price) FROM products WHERE category_id="1" OR category_id="2" GROUP BY category_id;

SELECT * FROM products WHERE price BETWEEN 10 AND 20;
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 20;
SELECT * FROM products WHERE category_id IN(1,2,3);
SELECT * FROM orders WHERE shipper_id IN(1,2,3);
SELECT * FROM products WHERE price NOT BETWEEN 10 AND 15 AND category_id NOT IN(1,2,3,4);
SELECT * FROM orders WHERE order_date BETWEEN '1996-07-01' AND '1996-07-31';
SELECT * FROM orders WHERE customer_id IN (SELECT id FROM customers WHERE id BETWEEN 77 AND 90);

SELECT * FROM customers JOIN orders ON customers.id=orders.customer_id;
SELECT COUNT(orders.id) FROM customers JOIN orders ON customers.id=orders.customer_id GROUP BY id;
SELECT * FROM customers JOIN orders ON customers.id=orders.customer_id;
SELECT * FROM employees RIGHT JOIN orders ON employees.id=orders.employee_id;
SELECT * FROM customers AS cus1 JOIN customers AS cus2 ON cus1.city=cus2.city AND cus1.customer_name!=cus2.customer_name;

SELECT * FROM orders ORDER BY id DESC LIMIT 10;
SELECT * FROM orders LIMIT 10 OFFSET 10;

SELECT country FROM customers HAVING Count(country)>5;
SELECT customer_name FROM customers JOIN orders WHERE customers.id=orders.customer_id HAVING Count(orders.customer_id)>2 AND Count(orders.customer_id)<4 ORDER BY customer_name DESC;
SELECT customers.id,customer_name FROM customers JOIN orders WHERE customers.id=orders.customer_id HAVING Count(orders.customer_id)>10;
SELECT last_name FROM employees JOIN orders WHERE employees.id=0 AND employees.id=1 HAVING Count(orders.employee_id)>25;
SELECT name FROM suppliers WHERE EXISTS (SELECT * FROM products WHERE suppliers.id=products.supplier_id AND products.price < 20);
SELECT name FROM suppliers WHERE EXISTS (SELECT * FROM products WHERE suppliers.id=products.supplier_id AND products.price = 22);

SELECT name FROM products WHERE ANY (SELECT * FROM orders_details WHERE  HAVING Count(orders_details.product_id)=10);
SELECT
SELECT
SELECT

SELECT name CASE 
WHEN orders_details.quantity>30 THEN 'Liczba sztuk jest większa niż 30'
WHEN orders_details.quantity=30 THEN 'Liczba sztuk jest równa 30'
ELSE 'Liczba sztuk jest mniejsza niż 30'
END AS Liczba_Sztuk
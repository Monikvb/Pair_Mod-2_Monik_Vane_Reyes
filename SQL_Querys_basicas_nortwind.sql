-- Ejercicio Pair_Queries Básicas

-- 4 
SELECT employee_id, last_name, first_name
FROM employees;

-- 5
SELECT product_name, unit_price
FROM products
WHERE unit_price BETWEEN 0 AND 5;

-- 6
SELECT product_name, unit_price
FROM products
WHERE unit_price IS NULL;

SELECT product_name, unit_price
FROM products;

-- 7
SELECT *
FROM products
WHERE unit_price < 15 AND product_id < 10;

-- 8
SELECT *
FROM products
WHERE unit_price > 15 AND product_id > 10;

-- 9
SELECT DISTINCT ship_country
FROM orders
ORDER BY ship_country ASC;

-- 10
SELECT product_id, product_name, unit_price
FROM products
LIMIT 10; 

-- 11
SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

-- 12
SELECT DISTINCT order_id
FROM order_details;

SELECT order_id
FROM order_details;

-- 13
SELECT order_id, unit_price * quantity AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3; 

-- 14
SELECT order_id, (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 6 -- Nos piden 6 posiciones (del 5 al 10)
OFFSET 4; -- Elimina los 4 primeros resultados

SELECT order_id, (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
WHERE ImporteTotal BETWEEN 5 AND 10;


-- -- -- -- -- -- -- -- -- 


-- 4
SELECT employee_id, last_name, first_name
FROM employees; -- tiene 9 empleados

-- 5
SELECT *
FROM products;

SELECT product_name
FROM products
WHERE unit_price < 5; -- Geitost y Guaranx Fantastica

-- 6
SELECT product_name
FROM products
WHERE unit_price IS NULL; -- no sale ninguno

-- 7
SELECT product_name
FROM products
WHERE unit_price < 15 AND product_id <10; -- devuelve Aniseed Syrup

-- 8
SELECT product_name
FROM products
WHERE unit_price > 15 AND product_id >10; -- devuelve 42 productos

-- 9
SELECT *
FROM orders; -- para verlo todo primero

SELECT DISTINCT ship_country
FROM orders; -- devuelve 21 países únicos

-- 10
SELECT product_name, unit_price
FROM products
WHERE product_id <=10; -- productos de Chai (id 1) a Ikura (id 10)

-- 11
SELECT product_name, unit_price
FROM products
ORDER BY product_id DESC; -- de Original Franfurter (id_77) a Scottish Longbreads (id_68)

-- 12
SELECT *
FROM order_details; -- primero vemos toda la tabla

SELECT DISTINCT order_id
FROM order_details;  -- devuelve 830 pedidos (order_id)

-- 13
SELECT order_id, (unit_price * quantity) AS ImporteTotal
FROM order_details
ORDER BY ImporteTotal DESC
LIMIT 3;  -- devuelve las order_id 10981 (IT 15810), 10865 (IT 15810) y 10417(10540)

-- 14
SELECT order_id, (unit_price * quantity) AS ImporteTotal
FROM order_details
LIMIT 6
OFFSET 4;

-- 15
SELECT category_name AS NombreDeCategoría
FROM categories;

-- 16


-- 17
SELECT product_name
FROM products
WHERE unit_price BETWEEN 15 AND 50;

-- 18
SELECT product_name, unit_price
FROM products
WHERE unit_price IN (18, 19, 20);
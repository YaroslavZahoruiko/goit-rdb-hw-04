USE `hw03-rdb`;

SELECT COUNT(*)
FROM order_details
    INNER JOIN orders ON order_details.order_id = orders.id
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    INNER JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN suppliers ON products.supplier_id = suppliers.id;

SELECT COUNT(*)
FROM order_details
    RIGHT JOIN orders ON order_details.order_id = orders.id
    LEFT JOIN customers ON orders.customer_id = customers.id
    RIGHT JOIN employees ON orders.employee_id = employees.employee_id
    LEFT JOIN shippers ON orders.shipper_id = shippers.id
    RIGHT JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;


SELECT COUNT(*)
FROM order_details
    INNER JOIN orders ON order_details.order_id = orders.id
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    INNER JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
WHERE employees.employee_id > 3 AND employees.employee_id < 10;



SELECT COUNT(*) AS rows_in_group, AVG(order_details.quantity) as avg_quantity
FROM order_details
    INNER JOIN orders ON order_details.order_id = orders.id
    INNER JOIN customers ON orders.customer_id = customers.id
    INNER JOIN employees ON orders.employee_id = employees.employee_id
    INNER JOIN shippers ON orders.shipper_id = shippers.id
    INNER JOIN products ON order_details.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    INNER JOIN suppliers ON products.supplier_id = suppliers.id
WHERE employees.employee_id > 3 AND employees.employee_id < 10
GROUP BY categories.name
HAVING avg_quantity > 21
ORDER BY rows_in_group DESC
LIMIT 4 OFFSET 1;
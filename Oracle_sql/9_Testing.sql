SELECT customer_id FROM customer;
SELECT store_id FROM dark_store;
SELECT payment_id FROM payment;

INSERT INTO orders (customer_id, store_id, payment_id, order_status, total_amount)
VALUES (1, 1, 1, 'PLACED', 750.00);

SELECT * FROM orders;


SELECT order_id FROM orders;
SELECT product_id, product_name FROM product;

INSERT INTO order_items (order_id, product_id, quantity, item_price)
VALUES (1, 1, 2, 250.00);

SELECT * FROM order_items;

SELECT store_id FROM dark_store;
SELECT product_id FROM product;

INSERT INTO inventory (store_id, product_id, stock_quantity, reserved_quantity, reorder_level)
VALUES (1, 1, 100, 5, 20);

SELECT * FROM inventory;

INSERT INTO supplier (supplier_name, phone, city)
VALUES ('FreshFarms Distributors', '9123456780', 'Pune');

SELECT * FROM supplier;

SELECT supplier_id FROM supplier;
SELECT store_id FROM dark_store;
SELECT product_id FROM product;

INSERT INTO restock (supplier_id, store_id, product_id, quantity)
VALUES (1, 1, 1, 200);

SELECT * FROM restock;

SELECT supplier_id FROM supplier;
SELECT product_id FROM product;

INSERT INTO product_supplier (supplier_id, product_id) VALUES (1, 1);

SELECT * FROM product_supplier;

INSERT INTO product_supplier (supplier_id, product_id) VALUES (1, 1);

SELECT store_id FROM dark_store;

INSERT INTO delivery_partner (store_id, partner_name, phone, vehicle_type, status)
VALUES (1, 'Amit Kumar', '9876501234', 'Bike', 'ACTIVE');

SELECT * FROM delivery_partner;

SELECT order_id FROM orders;
SELECT delivery_partner_id FROM delivery_partner;

INSERT INTO delivery (order_id, delivery_partner_id, pickup_time, delivery_status, distance_km)
VALUES (1, 1, SYSDATE, 'OUT_FOR_DELIVERY', 4.5);

SELECT * FROM delivery;

INSERT INTO delivery (order_id, delivery_partner_id, pickup_time, delivery_status, distance_km)
VALUES (1, 1, SYSDATE, 'DELIVERED', 4.5);

SELECT table_name FROM user_tables ORDER BY table_name;

SELECT trigger_name, status FROM user_triggers ORDER BY trigger_name;

SELECT constraint_name, table_name, constraint_type
FROM user_constraints
WHERE constraint_type = 'R'
ORDER BY table_name;

SELECT c.customer_name, o.order_id, o.total_amount, ds.store_name, p.payment_status
FROM orders o
JOIN customer c   ON o.customer_id = c.customer_id
JOIN dark_store ds ON o.store_id = ds.store_id
JOIN payment p    ON o.payment_id = p.payment_id;
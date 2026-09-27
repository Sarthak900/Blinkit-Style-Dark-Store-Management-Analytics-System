SELECT 'customer' AS table_name, COUNT(*) AS row_count FROM customer
UNION ALL SELECT 'category', COUNT(*) FROM category
UNION ALL SELECT 'brand', COUNT(*) FROM brand
UNION ALL SELECT 'product', COUNT(*) FROM product
UNION ALL SELECT 'cart', COUNT(*) FROM cart
UNION ALL SELECT 'cart_items', COUNT(*) FROM cart_items
UNION ALL SELECT 'payment', COUNT(*) FROM payment
UNION ALL SELECT 'dark_store', COUNT(*) FROM dark_store
UNION ALL SELECT 'employee', COUNT(*) FROM employee
UNION ALL SELECT 'orders', COUNT(*) FROM orders
UNION ALL SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL SELECT 'inventory', COUNT(*) FROM inventory
UNION ALL SELECT 'supplier', COUNT(*) FROM supplier
UNION ALL SELECT 'restock', COUNT(*) FROM restock
UNION ALL SELECT 'product_supplier', COUNT(*) FROM product_supplier
UNION ALL SELECT 'delivery_partner', COUNT(*) FROM delivery_partner
UNION ALL SELECT 'delivery', COUNT(*) FROM delivery
ORDER BY table_name;
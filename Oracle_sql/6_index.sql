/* ============================================================
   04_INDEXES.SQL
   Oracle does NOT auto-index foreign key columns (only the
   primary key gets one automatically). Every FK column gets an
   explicit index here once its table exists - skipping this is
   a common Oracle performance mistake.
   ============================================================ */
   
CREATE INDEX idx_product_category ON product(category_id);
   
CREATE INDEX idx_product_brand    ON product(brand_id);

CREATE INDEX idx_cart_customer ON cart(customer_id);


CREATE INDEX idx_cartitems_cart    ON cart_items(cart_id);

CREATE INDEX idx_cartitems_product ON cart_items(product_id);

CREATE INDEX idx_employee_store    ON employee(store_id);

CREATE INDEX idx_darkstore_manager ON dark_store(manager_id);

CREATE INDEX idx_orders_customer ON orders(customer_id);

CREATE INDEX idx_orders_store    ON orders(store_id);

CREATE INDEX idx_orders_payment  ON orders(payment_id);

CREATE INDEX idx_orderitems_order   ON order_items(order_id);

CREATE INDEX idx_orderitems_product ON order_items(product_id);

CREATE INDEX idx_inventory_store   ON inventory(store_id);

CREATE INDEX idx_inventory_product ON inventory(product_id);

CREATE INDEX idx_restock_supplier ON restock(supplier_id);
CREATE INDEX idx_restock_store    ON restock(store_id);
CREATE INDEX idx_restock_product  ON restock(product_id);

CREATE INDEX idx_delpartner_store ON delivery_partner(store_id);

CREATE INDEX idx_delivery_partner ON delivery(delivery_partner_id);
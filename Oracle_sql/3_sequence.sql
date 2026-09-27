SELECT USER FROM dual;

/* ============================================================
   01_SEQUENCES.SQL
   Every auto-increment sequence for the project.
   Add a new CREATE SEQUENCE here each time we add a new table
   with a surrogate primary key.
   ============================================================ */
   
   
CREATE SEQUENCE seq_customer_id
START WITH 1
INCREMENT BY 1
NOCACHE;

SELECT sequence_name, min_value, increment_by FROM user_sequences;


CREATE SEQUENCE seq_category_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_brand_id    START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_product_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_cart_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_cart_item_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_payment_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_store_id    START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_employee_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_order_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_order_item_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_inventory_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_supplier_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_restock_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_delivery_partner_id START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE seq_delivery_id START WITH 1 INCREMENT BY 1 NOCACHE;
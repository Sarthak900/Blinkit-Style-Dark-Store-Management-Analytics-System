/* ============================================================
   03_TRIGGERS.SQL
   One BEFORE INSERT trigger per table, to auto-fill the primary
   key from its matching sequence. Must be run AFTER both the
   sequence (01_sequences.sql) and the table (02_tables.sql)
   it belongs to already exist*/
   
   




CREATE OR REPLACE TRIGGER trg_customer_id
BEFORE INSERT ON customer
FOR EACH ROW
WHEN (NEW.customer_id IS NULL)
BEGIN
    SELECT seq_customer_id.NEXTVAL INTO :NEW.customer_id FROM dual;
END;
/

SHOW ERRORS TRIGGER trg_customer_id;  -- checks for error logs 


CREATE OR REPLACE TRIGGER trg_category_id
BEFORE INSERT ON category
FOR EACH ROW
WHEN (NEW.category_id IS NULL)
BEGIN
    SELECT seq_category_id.NEXTVAL INTO :NEW.category_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_brand_id
BEFORE INSERT ON brand
FOR EACH ROW
WHEN (NEW.brand_id IS NULL)
BEGIN
    SELECT seq_brand_id.NEXTVAL INTO :NEW.brand_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_product_id
BEFORE INSERT ON product
FOR EACH ROW
WHEN (NEW.product_id IS NULL)
BEGIN
    SELECT seq_product_id.NEXTVAL INTO :NEW.product_id FROM dual;
END;
/


CREATE OR REPLACE TRIGGER trg_cart_id
BEFORE INSERT ON cart
FOR EACH ROW
WHEN (NEW.cart_id IS NULL)
BEGIN
    SELECT seq_cart_id.NEXTVAL INTO :NEW.cart_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_cart_item_id
BEFORE INSERT ON cart_items
FOR EACH ROW
WHEN (NEW.cart_item_id IS NULL)
BEGIN
    SELECT seq_cart_item_id.NEXTVAL INTO :NEW.cart_item_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_payment_id
BEFORE INSERT ON payment
FOR EACH ROW
WHEN (NEW.payment_id IS NULL)
BEGIN
    SELECT seq_payment_id.NEXTVAL INTO :NEW.payment_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_store_id
BEFORE INSERT ON dark_store
FOR EACH ROW
WHEN (NEW.store_id IS NULL)
BEGIN
    SELECT seq_store_id.NEXTVAL INTO :NEW.store_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_employee_id
BEFORE INSERT ON employee
FOR EACH ROW
WHEN (NEW.employee_id IS NULL)
BEGIN
    SELECT seq_employee_id.NEXTVAL INTO :NEW.employee_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_order_id
BEFORE INSERT ON orders
FOR EACH ROW
WHEN (NEW.order_id IS NULL)
BEGIN
    SELECT seq_order_id.NEXTVAL INTO :NEW.order_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_order_item_id
BEFORE INSERT ON order_items
FOR EACH ROW
WHEN (NEW.order_item_id IS NULL)
BEGIN
    SELECT seq_order_item_id.NEXTVAL INTO :NEW.order_item_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_inventory_id
BEFORE INSERT ON inventory
FOR EACH ROW
WHEN (NEW.inventory_id IS NULL)
BEGIN
    SELECT seq_inventory_id.NEXTVAL INTO :NEW.inventory_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_supplier_id
BEFORE INSERT ON supplier
FOR EACH ROW
WHEN (NEW.supplier_id IS NULL)
BEGIN
    SELECT seq_supplier_id.NEXTVAL INTO :NEW.supplier_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_restock_id
BEFORE INSERT ON restock
FOR EACH ROW
WHEN (NEW.restock_id IS NULL)
BEGIN
    SELECT seq_restock_id.NEXTVAL INTO :NEW.restock_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_delivery_partner_id
BEFORE INSERT ON delivery_partner
FOR EACH ROW
WHEN (NEW.delivery_partner_id IS NULL)
BEGIN
    SELECT seq_delivery_partner_id.NEXTVAL INTO :NEW.delivery_partner_id FROM dual;
END;
/

CREATE OR REPLACE TRIGGER trg_delivery_id
BEFORE INSERT ON delivery
FOR EACH ROW
WHEN (NEW.delivery_id IS NULL)
BEGIN
    SELECT seq_delivery_id.NEXTVAL INTO :NEW.delivery_id FROM dual;
END;
/


 
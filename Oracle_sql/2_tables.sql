
/* ============================================================
   02_TABLES.SQL
   Every CREATE TABLE statement, in the order they must be run
   (a table referencing another table via FK must come after it).
   ============================================================ */
 
CREATE TABLE customer (
    customer_id     NUMBER(10)      NOT NULL,
    customer_name   VARCHAR2(100)   NOT NULL,
    phone           VARCHAR2(20),
    email           VARCHAR2(100),
    address         VARCHAR2(255),
    pincode         VARCHAR2(10),
    CONSTRAINT pk_customer PRIMARY KEY (customer_id)
);
 
 
CREATE TABLE category (
    category_id     NUMBER(10)      NOT NULL,
    category_name   VARCHAR2(100)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);

CREATE TABLE brand (
    brand_id        NUMBER(10)      NOT NULL,
    brand_name      VARCHAR2(100)   NOT NULL,
    CONSTRAINT pk_brand PRIMARY KEY (brand_id)
);


CREATE TABLE product (
    product_id      NUMBER(10)      NOT NULL,
    category_id     NUMBER(10)      NOT NULL,
    brand_id        NUMBER(10)      NOT NULL,
    product_name    VARCHAR2(150)   NOT NULL,
    price           NUMBER(10,2)    NOT NULL,
    weight          NUMBER(10,2),
    expiry_days     NUMBER(5),
    CONSTRAINT pk_product PRIMARY KEY (product_id),
    CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES category(category_id),
    CONSTRAINT fk_product_brand    FOREIGN KEY (brand_id)    REFERENCES brand(brand_id)
);


CREATE TABLE cart (
    cart_id         NUMBER(10)      NOT NULL,
    customer_id     NUMBER(10)      NOT NULL,
    created_at      DATE            DEFAULT SYSDATE,
    CONSTRAINT pk_cart PRIMARY KEY (cart_id),
    CONSTRAINT fk_cart_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE cart_items (
    cart_item_id    NUMBER(10)      NOT NULL,
    cart_id         NUMBER(10)      NOT NULL,
    product_id      NUMBER(10)      NOT NULL,
    quantity        NUMBER(5)       NOT NULL,
    CONSTRAINT pk_cart_items PRIMARY KEY (cart_item_id),
    CONSTRAINT fk_cartitems_cart    FOREIGN KEY (cart_id)    REFERENCES cart(cart_id),
    CONSTRAINT fk_cartitems_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);


CREATE TABLE payment (
    payment_id      NUMBER(10)      NOT NULL,
    payment_mode    VARCHAR2(30)    NOT NULL,
    payment_status  VARCHAR2(30)    NOT NULL,
    payment_date    DATE            DEFAULT SYSDATE,
    amount          NUMBER(10,2)    NOT NULL,
    CONSTRAINT pk_payment PRIMARY KEY (payment_id)
);

CREATE TABLE dark_store (
    store_id        NUMBER(10)      NOT NULL,
    manager_id      NUMBER(10),
    store_name      VARCHAR2(100)   NOT NULL,
    city            VARCHAR2(50),
    area            VARCHAR2(50),
    pincode         VARCHAR2(10),
    CONSTRAINT pk_dark_store PRIMARY KEY (store_id)
);

CREATE TABLE employee (
    employee_id     NUMBER(10)      NOT NULL,
    store_id        NUMBER(10)      NOT NULL,
    employee_name   VARCHAR2(100)   NOT NULL,
    role            VARCHAR2(50),
    salary          NUMBER(10,2),
    phone           VARCHAR2(20),
    email           VARCHAR2(100),
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_employee_store FOREIGN KEY (store_id) REFERENCES dark_store(store_id)
);

ALTER TABLE dark_store
ADD CONSTRAINT fk_darkstore_manager FOREIGN KEY (manager_id) REFERENCES employee(employee_id);


CREATE TABLE orders (
    order_id        NUMBER(10)      NOT NULL,
    customer_id     NUMBER(10)      NOT NULL,
    store_id        NUMBER(10)      NOT NULL,
    payment_id      NUMBER(10)      NOT NULL,
    order_time      DATE            DEFAULT SYSDATE,
    order_status    VARCHAR2(30)    NOT NULL,
    total_amount    NUMBER(10,2)    NOT NULL,
    CONSTRAINT pk_orders PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    CONSTRAINT fk_orders_store    FOREIGN KEY (store_id)    REFERENCES dark_store(store_id),
    CONSTRAINT fk_orders_payment  FOREIGN KEY (payment_id)  REFERENCES payment(payment_id)
);

CREATE TABLE order_items (
    order_item_id   NUMBER(10)      NOT NULL,
    order_id        NUMBER(10)      NOT NULL,
    product_id      NUMBER(10)      NOT NULL,
    quantity        NUMBER(5)       NOT NULL,
    item_price      NUMBER(10,2)    NOT NULL,
    CONSTRAINT pk_order_items PRIMARY KEY (order_item_id),
    CONSTRAINT fk_orderitems_order   FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    CONSTRAINT fk_orderitems_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);


CREATE TABLE inventory (
    inventory_id        NUMBER(10)  NOT NULL,
    store_id            NUMBER(10)  NOT NULL,
    product_id          NUMBER(10)  NOT NULL,
    stock_quantity       NUMBER(10)  DEFAULT 0,
    reserved_quantity    NUMBER(10)  DEFAULT 0,
    reorder_level         NUMBER(10)  DEFAULT 0,
    last_updated         DATE        DEFAULT SYSDATE,
    CONSTRAINT pk_inventory PRIMARY KEY (inventory_id),
    CONSTRAINT fk_inventory_store   FOREIGN KEY (store_id)   REFERENCES dark_store(store_id),
    CONSTRAINT fk_inventory_product FOREIGN KEY (product_id) REFERENCES product(product_id)
);

CREATE TABLE supplier (
    supplier_id     NUMBER(10)      NOT NULL,
    supplier_name   VARCHAR2(100)   NOT NULL,
    phone           VARCHAR2(20),
    city            VARCHAR2(50),
    CONSTRAINT pk_supplier PRIMARY KEY (supplier_id)
);

CREATE TABLE restock (
    restock_id      NUMBER(10)      NOT NULL,
    supplier_id     NUMBER(10)      NOT NULL,
    store_id        NUMBER(10)      NOT NULL,
    product_id      NUMBER(10)      NOT NULL,
    quantity        NUMBER(10)      NOT NULL,
    restock_date    DATE            DEFAULT SYSDATE,
    CONSTRAINT pk_restock PRIMARY KEY (restock_id),
    CONSTRAINT fk_restock_supplier FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id),
    CONSTRAINT fk_restock_store    FOREIGN KEY (store_id)    REFERENCES dark_store(store_id),
    CONSTRAINT fk_restock_product  FOREIGN KEY (product_id)  REFERENCES product(product_id)
);

CREATE TABLE product_supplier (
    supplier_id     NUMBER(10)      NOT NULL,
    product_id      NUMBER(10)      NOT NULL,
    CONSTRAINT pk_product_supplier PRIMARY KEY (supplier_id, product_id),
    CONSTRAINT fk_prodsupp_supplier FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id),
    CONSTRAINT fk_prodsupp_product  FOREIGN KEY (product_id)  REFERENCES product(product_id)
);

CREATE TABLE delivery_partner (
    delivery_partner_id NUMBER(10)      NOT NULL,
    store_id             NUMBER(10)      NOT NULL,
    partner_name         VARCHAR2(100)   NOT NULL,
    phone                VARCHAR2(20),
    vehicle_type         VARCHAR2(30),
    status               VARCHAR2(30),
    CONSTRAINT pk_delivery_partner PRIMARY KEY (delivery_partner_id),
    CONSTRAINT fk_delpartner_store FOREIGN KEY (store_id) REFERENCES dark_store(store_id)
);

CREATE TABLE delivery (
    delivery_id         NUMBER(10)  NOT NULL,
    order_id            NUMBER(10)  NOT NULL,
    delivery_partner_id NUMBER(10)  NOT NULL,
    pickup_time         DATE,
    delivered_time      DATE,
    delivery_status     VARCHAR2(30),
    distance_km         NUMBER(6,2),
    CONSTRAINT pk_delivery PRIMARY KEY (delivery_id),
    CONSTRAINT fk_delivery_order   FOREIGN KEY (order_id)            REFERENCES orders(order_id),
    CONSTRAINT fk_delivery_partner FOREIGN KEY (delivery_partner_id) REFERENCES delivery_partner(delivery_partner_id),
    CONSTRAINT uq_delivery_order_id UNIQUE (order_id)
);
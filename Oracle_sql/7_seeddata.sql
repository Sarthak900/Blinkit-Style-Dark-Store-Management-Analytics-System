SET DEFINE OFF; -- to turn off subswtitution variable 
-- CATEGORY (20 realistic grocery categories)
INSERT INTO category (category_name) VALUES ('Dairy & Breakfast');
INSERT INTO category (category_name) VALUES ('Fruits & Vegetables');
INSERT INTO category (category_name) VALUES ('Snacks & Munchies');
INSERT INTO category (category_name) VALUES ('Cold Drinks & Juices');
INSERT INTO category (category_name) VALUES ('Bakery & Biscuits');
INSERT INTO category (category_name) VALUES ('Personal Care');
INSERT INTO category (category_name) VALUES ('Cleaning Essentials');
INSERT INTO category (category_name) VALUES ('Meat & Seafood');
INSERT INTO category (category_name) VALUES ('Grains & Staples');
INSERT INTO category (category_name) VALUES ('Baby Care');
INSERT INTO category (category_name) VALUES ('Pet Care');
INSERT INTO category (category_name) VALUES ('Frozen Food');
INSERT INTO category (category_name) VALUES ('Sauces & Spreads');
INSERT INTO category (category_name) VALUES ('Tea & Coffee');
INSERT INTO category (category_name) VALUES ('Spices & Masalas');
INSERT INTO category (category_name) VALUES ('Chocolates & Sweets');
INSERT INTO category (category_name) VALUES ('Home & Kitchen');
INSERT INTO category (category_name) VALUES ('Stationery');
INSERT INTO category (category_name) VALUES ('Electronics Accessories');
INSERT INTO category (category_name) VALUES ('Health & Wellness');

-- BRAND (30 realistic brands)
INSERT INTO brand (brand_name) VALUES ('Amul');
INSERT INTO brand (brand_name) VALUES ('Britannia');
INSERT INTO brand (brand_name) VALUES ('Nestle');
INSERT INTO brand (brand_name) VALUES ('ITC');
INSERT INTO brand (brand_name) VALUES ('Parle');
INSERT INTO brand (brand_name) VALUES ('Haldiram');
INSERT INTO brand (brand_name) VALUES ('Patanjali');
INSERT INTO brand (brand_name) VALUES ('Dabur');
INSERT INTO brand (brand_name) VALUES ('Colgate');
INSERT INTO brand (brand_name) VALUES ('HUL');
INSERT INTO brand (brand_name) VALUES ('Pepsico');
INSERT INTO brand (brand_name) VALUES ('Coca-Cola');
INSERT INTO brand (brand_name) VALUES ('Cadbury');
INSERT INTO brand (brand_name) VALUES ('MTR');
INSERT INTO brand (brand_name) VALUES ('Mother Dairy');
INSERT INTO brand (brand_name) VALUES ('Fortune');
INSERT INTO brand (brand_name) VALUES ('Tata');
INSERT INTO brand (brand_name) VALUES ('Real');
INSERT INTO brand (brand_name) VALUES ('Kissan');
INSERT INTO brand (brand_name) VALUES ('Maggi');
INSERT INTO brand (brand_name) VALUES ('Lays');
INSERT INTO brand (brand_name) VALUES ('Kurkure');
INSERT INTO brand (brand_name) VALUES ('Bingo');
INSERT INTO brand (brand_name) VALUES ('Sunfeast');
INSERT INTO brand (brand_name) VALUES ('Fabindia');
INSERT INTO brand (brand_name) VALUES ('Himalaya');
INSERT INTO brand (brand_name) VALUES ('Johnson & Johnson');
INSERT INTO brand (brand_name) VALUES ('Vim');
INSERT INTO brand (brand_name) VALUES ('Surf Excel');
INSERT INTO brand (brand_name) VALUES ('Whiskas');

-- DARK_STORE (15 stores across a few cities)
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Kothrud Dark Store', 'Pune', 'Kothrud', '411038');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Baner Dark Store', 'Pune', 'Baner', '411045');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Viman Nagar Dark Store', 'Pune', 'Viman Nagar', '411014');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Hinjewadi Dark Store', 'Pune', 'Hinjewadi', '411057');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Andheri Dark Store', 'Mumbai', 'Andheri', '400053');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Bandra Dark Store', 'Mumbai', 'Bandra', '400050');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Powai Dark Store', 'Mumbai', 'Powai', '400076');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Koramangala Dark Store', 'Bangalore', 'Koramangala', '560034');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Indiranagar Dark Store', 'Bangalore', 'Indiranagar', '560038');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Whitefield Dark Store', 'Bangalore', 'Whitefield', '560066');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Saket Dark Store', 'Delhi', 'Saket', '110017');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Dwarka Dark Store', 'Delhi', 'Dwarka', '110075');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Gachibowli Dark Store', 'Hyderabad', 'Gachibowli', '500032');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Banjara Hills Dark Store', 'Hyderabad', 'Banjara Hills', '500034');
INSERT INTO dark_store (store_name, city, area, pincode) VALUES ('Adyar Dark Store', 'Chennai', 'Adyar', '600020');

-- SUPPLIER (25 suppliers)
INSERT INTO supplier (supplier_name, phone, city) VALUES ('FreshFarms Distributors', '9123456780', 'Pune');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('National Grocers Ltd', '9123456781', 'Mumbai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Metro Wholesale', '9123456782', 'Bangalore');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('DairyPure Supplies', '9123456783', 'Delhi');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('GreenLeaf Vegetables', '9123456784', 'Pune');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('QuickStock Traders', '9123456785', 'Hyderabad');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Sunrise FMCG', '9123456786', 'Chennai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('BulkMart Suppliers', '9123456787', 'Mumbai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Golden Harvest Co', '9123456788', 'Pune');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Regal Distributors', '9123456789', 'Bangalore');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('CityFresh Supplies', '9123456790', 'Delhi');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('ValueChain Traders', '9123456791', 'Hyderabad');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Prime Foods Ltd', '9123456792', 'Chennai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('EastWest Grocers', '9123456793', 'Mumbai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Trusty Traders', '9123456794', 'Pune');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Apex FMCG Distributors', '9123456795', 'Bangalore');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('United Grocers', '9123456796', 'Delhi');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Blue Ocean Foods', '9123456797', 'Chennai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Everyday Essentials Co', '9123456798', 'Hyderabad');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Reliable Wholesalers', '9123456799', 'Mumbai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Farmland Direct', '9123456700', 'Pune');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Star Distributors', '9123456701', 'Bangalore');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('National Foods Corp', '9123456702', 'Delhi');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Coastal Traders', '9123456703', 'Chennai');
INSERT INTO supplier (supplier_name, phone, city) VALUES ('Heritage Grocers', '9123456704', 'Hyderabad');

COMMIT;


SELECT COUNT(*) FROM category;
SELECT COUNT(*) FROM brand;
SELECT COUNT(*) FROM dark_store;
SELECT COUNT(*) FROM customer;

SELECT COUNT(*) FROM customer;
SELECT COUNT(DISTINCT email) FROM customer;

SET DEFINE OFF;

DECLARE
    v_first_names DBMS_SQL.VARCHAR2_TABLE;
    v_last_names  DBMS_SQL.VARCHAR2_TABLE;
    v_cities      DBMS_SQL.VARCHAR2_TABLE;
    v_name        VARCHAR2(100);
    v_phone       VARCHAR2(20);
    v_email       VARCHAR2(100);
    v_pincode     VARCHAR2(10);
BEGIN
    v_first_names(1):='Aarav'; v_first_names(2):='Vivaan'; v_first_names(3):='Aditya';
    v_first_names(4):='Sai'; v_first_names(5):='Arjun'; v_first_names(6):='Ananya';
    v_first_names(7):='Diya'; v_first_names(8):='Ishaan'; v_first_names(9):='Kabir';
    v_first_names(10):='Meera'; v_first_names(11):='Neha'; v_first_names(12):='Rohan';
    v_first_names(13):='Sanya'; v_first_names(14):='Tanvi'; v_first_names(15):='Vihaan';
    v_first_names(16):='Zoya'; v_first_names(17):='Kavya'; v_first_names(18):='Aryan';
    v_first_names(19):='Ishita'; v_first_names(20):='Yash';

    v_last_names(1):='Sharma'; v_last_names(2):='Verma'; v_last_names(3):='Patel';
    v_last_names(4):='Gupta'; v_last_names(5):='Kumar'; v_last_names(6):='Singh';
    v_last_names(7):='Reddy'; v_last_names(8):='Nair'; v_last_names(9):='Iyer';
    v_last_names(10):='Joshi'; v_last_names(11):='Mehta'; v_last_names(12):='Rao';
    v_last_names(13):='Desai'; v_last_names(14):='Kapoor'; v_last_names(15):='Malhotra';

    v_cities(1):='Pune'; v_cities(2):='Mumbai'; v_cities(3):='Bangalore';
    v_cities(4):='Delhi'; v_cities(5):='Hyderabad'; v_cities(6):='Chennai';

    FOR i IN 1..1000 LOOP
        v_name := v_first_names(TRUNC(DBMS_RANDOM.VALUE(1,21))) || ' ' ||
                  v_last_names(TRUNC(DBMS_RANDOM.VALUE(1,16)));
        v_phone := '9' || TRUNC(DBMS_RANDOM.VALUE(100000000,999999999));
        v_email := LOWER(REPLACE(v_name,' ','.')) || i || '@example.com';
        v_pincode := TRUNC(DBMS_RANDOM.VALUE(400001,411999));

        INSERT INTO customer (customer_name, phone, email, address, pincode)
        VALUES (
            v_name,
            v_phone,
            v_email,
            v_cities(TRUNC(DBMS_RANDOM.VALUE(1,7))) || ' - Area ' || TRUNC(DBMS_RANDOM.VALUE(1,50)),
            TO_CHAR(v_pincode)
        );
    END LOOP;
    COMMIT;
END;
/

DELETE FROM customer c
WHERE c.customer_id NOT IN (
    SELECT MIN(customer_id)
    FROM customer
    GROUP BY email
);

COMMIT;

SELECT COUNT(*) AS total_rows FROM customer;
SELECT COUNT(DISTINCT email) AS unique_emails FROM customer;



SET DEFINE OFF;

DECLARE
    TYPE id_tab   IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    TYPE name_tab IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;

    v_cat_ids       id_tab;
    v_brand_ids     id_tab;
    v_brand_names   name_tab;
    v_cat_cnt       PLS_INTEGER := 0;
    v_brand_cnt     PLS_INTEGER := 0;
    v_product_types DBMS_SQL.VARCHAR2_TABLE;
    v_type_cnt      PLS_INTEGER := 30;
    v_brand_idx     PLS_INTEGER;
    v_type_idx      PLS_INTEGER;
    v_name          VARCHAR2(200);
BEGIN
    -- load real category IDs that already exist in your table
    FOR r IN (SELECT category_id FROM category) LOOP
        v_cat_cnt := v_cat_cnt + 1;
        v_cat_ids(v_cat_cnt) := r.category_id;
    END LOOP;

    -- load real brand IDs + names that already exist in your table
    FOR r IN (SELECT brand_id, brand_name FROM brand) LOOP
        v_brand_cnt := v_brand_cnt + 1;
        v_brand_ids(v_brand_cnt) := r.brand_id;
        v_brand_names(v_brand_cnt) := r.brand_name;
    END LOOP;

    v_product_types(1):='Butter 500g'; v_product_types(2):='Milk 1L'; v_product_types(3):='Bread 400g';
    v_product_types(4):='Basmati Rice 5kg'; v_product_types(5):='Toothpaste 100g'; v_product_types(6):='Shampoo 200ml';
    v_product_types(7):='Detergent Powder 1kg'; v_product_types(8):='Biscuits Pack 200g'; v_product_types(9):='Potato Chips 100g';
    v_product_types(10):='Orange Juice 1L'; v_product_types(11):='Cooking Oil 1L'; v_product_types(12):='Wheat Flour 5kg';
    v_product_types(13):='Green Tea 100g'; v_product_types(14):='Instant Coffee 200g'; v_product_types(15):='Chocolate Bar 50g';
    v_product_types(16):='Dish Wash Liquid 500ml'; v_product_types(17):='Face Wash 100ml'; v_product_types(18):='Hand Sanitizer 200ml';
    v_product_types(19):='Frozen Peas 500g'; v_product_types(20):='Paneer 200g'; v_product_types(21):='Curd 400g';
    v_product_types(22):='Ketchup 500g'; v_product_types(23):='Peanut Butter 350g'; v_product_types(24):='Honey 250g';
    v_product_types(25):='Namkeen Mix 200g'; v_product_types(26):='Baby Wipes Pack'; v_product_types(27):='Pet Food 1kg';
    v_product_types(28):='Notebook Pack'; v_product_types(29):='Phone Charger Cable'; v_product_types(30):='Multivitamin Tablets';

    FOR i IN 1..500 LOOP
        v_brand_idx := TRUNC(DBMS_RANDOM.VALUE(1, v_brand_cnt+1));
        v_type_idx  := TRUNC(DBMS_RANDOM.VALUE(1, v_type_cnt+1));
        v_name := v_brand_names(v_brand_idx) || ' ' || v_product_types(v_type_idx);

        INSERT INTO product (category_id, brand_id, product_name, price, weight, expiry_days)
        VALUES (
            v_cat_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_cat_cnt+1))),
            v_brand_ids(v_brand_idx),
            v_name,
            ROUND(DBMS_RANDOM.VALUE(20,999), 2),
            ROUND(DBMS_RANDOM.VALUE(0.1,5), 2),
            TRUNC(DBMS_RANDOM.VALUE(7,365))
        );
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM product;
SELECT * FROM product WHERE ROWNUM <= 10;


SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_store_ids   id_tab;
    v_store_cnt   PLS_INTEGER := 0;
    v_first_names DBMS_SQL.VARCHAR2_TABLE;
    v_last_names  DBMS_SQL.VARCHAR2_TABLE;
    v_roles       DBMS_SQL.VARCHAR2_TABLE;
    v_name        VARCHAR2(100);
    v_new_emp_id  NUMBER;
    v_first_emp_for_store NUMBER;
BEGIN
    FOR r IN (SELECT store_id FROM dark_store) LOOP
        v_store_cnt := v_store_cnt + 1;
        v_store_ids(v_store_cnt) := r.store_id;
    END LOOP;

    v_first_names(1):='Rahul'; v_first_names(2):='Priya'; v_first_names(3):='Amit';
    v_first_names(4):='Sneha'; v_first_names(5):='Vikram'; v_first_names(6):='Pooja';
    v_first_names(7):='Suresh'; v_first_names(8):='Anjali'; v_first_names(9):='Karan';
    v_first_names(10):='Divya';

    v_last_names(1):='Sharma'; v_last_names(2):='Verma'; v_last_names(3):='Patel';
    v_last_names(4):='Gupta'; v_last_names(5):='Kumar'; v_last_names(6):='Singh';

    v_roles(1):='Picker'; v_roles(2):='Packer'; v_roles(3):='Store Supervisor';
    v_roles(4):='Inventory Associate'; v_roles(5):='Manager';

    -- ~8 employees per store = ~128 employees total
    FOR s IN 1..v_store_cnt LOOP
        v_first_emp_for_store := NULL;
        FOR e IN 1..8 LOOP
            v_name := v_first_names(TRUNC(DBMS_RANDOM.VALUE(1,11))) || ' ' ||
                      v_last_names(TRUNC(DBMS_RANDOM.VALUE(1,7)));

            INSERT INTO employee (store_id, employee_name, role, salary, phone, email)
            VALUES (
                v_store_ids(s),
                v_name,
                v_roles(TRUNC(DBMS_RANDOM.VALUE(1,6))),
                ROUND(DBMS_RANDOM.VALUE(18000,55000),2),
                '9' || TRUNC(DBMS_RANDOM.VALUE(100000000,999999999)),
                LOWER(REPLACE(v_name,' ','.')) || '.' || v_store_ids(s) || '.' || e || '@blinkit.com'
            )
            RETURNING employee_id INTO v_new_emp_id;

            -- remember the first employee created at this store, to make them the manager
            IF e = 1 THEN
                v_first_emp_for_store := v_new_emp_id;
            END IF;
        END LOOP;

        -- assign that store's first-created employee as its manager
        UPDATE dark_store SET manager_id = v_first_emp_for_store WHERE store_id = v_store_ids(s);
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM employee;
SELECT store_id, manager_id, store_name FROM dark_store;

SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_customer_ids id_tab;
    v_product_ids  id_tab;
    v_cust_cnt     PLS_INTEGER := 0;
    v_prod_cnt     PLS_INTEGER := 0;
    v_new_cart_id  NUMBER;
    v_num_items    PLS_INTEGER;
BEGIN
    FOR r IN (SELECT customer_id FROM customer) LOOP
        v_cust_cnt := v_cust_cnt + 1;
        v_customer_ids(v_cust_cnt) := r.customer_id;
    END LOOP;

    FOR r IN (SELECT product_id FROM product) LOOP
        v_prod_cnt := v_prod_cnt + 1;
        v_product_ids(v_prod_cnt) := r.product_id;
    END LOOP;

    -- 3000 carts, each belonging to a random (possibly repeat) customer
    FOR i IN 1..3000 LOOP
        INSERT INTO cart (customer_id)
        VALUES (v_customer_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_cust_cnt+1))))
        RETURNING cart_id INTO v_new_cart_id;

        -- each cart gets 1 to 5 items
        v_num_items := TRUNC(DBMS_RANDOM.VALUE(1,6));
        FOR j IN 1..v_num_items LOOP
            INSERT INTO cart_items (cart_id, product_id, quantity)
            VALUES (
                v_new_cart_id,
                v_product_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_prod_cnt+1))),
                TRUNC(DBMS_RANDOM.VALUE(1,6))
            );
        END LOOP;
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM cart;
SELECT COUNT(*) FROM cart_items;
SELECT AVG(item_count) AS avg_items_per_cart
FROM (SELECT cart_id, COUNT(*) AS item_count FROM cart_items GROUP BY cart_id);



SET DEFINE OFF;

DECLARE
    TYPE id_tab    IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    TYPE price_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;

    v_customer_ids    id_tab;
    v_store_ids       id_tab;
    v_product_ids     id_tab;
    v_product_prices  price_tab;
    v_cust_cnt        PLS_INTEGER := 0;
    v_store_cnt       PLS_INTEGER := 0;
    v_prod_cnt        PLS_INTEGER := 0;

    v_payment_modes    DBMS_SQL.VARCHAR2_TABLE;
    v_order_statuses   DBMS_SQL.VARCHAR2_TABLE;
    v_payment_statuses DBMS_SQL.VARCHAR2_TABLE;

    v_item_product id_tab;
    v_item_qty     id_tab;
    v_item_price   price_tab;
    v_num_items    PLS_INTEGER;
    v_order_total  NUMBER;

    v_new_payment_id NUMBER;
    v_new_order_id   NUMBER;
BEGIN
    FOR r IN (SELECT customer_id FROM customer) LOOP
        v_cust_cnt := v_cust_cnt + 1;
        v_customer_ids(v_cust_cnt) := r.customer_id;
    END LOOP;

    FOR r IN (SELECT store_id FROM dark_store) LOOP
        v_store_cnt := v_store_cnt + 1;
        v_store_ids(v_store_cnt) := r.store_id;
    END LOOP;

    FOR r IN (SELECT product_id, price FROM product) LOOP
        v_prod_cnt := v_prod_cnt + 1;
        v_product_ids(v_prod_cnt) := r.product_id;
        v_product_prices(v_prod_cnt) := r.price;
    END LOOP;

    v_payment_modes(1):='UPI'; v_payment_modes(2):='Credit Card'; v_payment_modes(3):='Debit Card';
    v_payment_modes(4):='Cash on Delivery'; v_payment_modes(5):='Net Banking';

    v_order_statuses(1):='PLACED'; v_order_statuses(2):='CONFIRMED'; v_order_statuses(3):='PACKED';
    v_order_statuses(4):='OUT_FOR_DELIVERY'; v_order_statuses(5):='DELIVERED'; v_order_statuses(6):='CANCELLED';

    v_payment_statuses(1):='SUCCESS'; v_payment_statuses(2):='PENDING';
    v_payment_statuses(3):='FAILED'; v_payment_statuses(4):='REFUNDED';

    FOR i IN 1..5000 LOOP
        v_num_items := TRUNC(DBMS_RANDOM.VALUE(1,7));
        v_order_total := 0;

        FOR j IN 1..v_num_items LOOP
            v_item_product(j) := TRUNC(DBMS_RANDOM.VALUE(1, v_prod_cnt+1));
            v_item_qty(j)     := TRUNC(DBMS_RANDOM.VALUE(1,6));
            v_item_price(j)   := v_product_prices(v_item_product(j));
            v_order_total := v_order_total + (v_item_price(j) * v_item_qty(j));
        END LOOP;

        INSERT INTO payment (payment_mode, payment_status, amount)
        VALUES (
            v_payment_modes(TRUNC(DBMS_RANDOM.VALUE(1,6))),
            v_payment_statuses(TRUNC(DBMS_RANDOM.VALUE(1,5))),
            ROUND(v_order_total,2)
        )
        RETURNING payment_id INTO v_new_payment_id;

        INSERT INTO orders (customer_id, store_id, payment_id, order_status, total_amount)
        VALUES (
            v_customer_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_cust_cnt+1))),
            v_store_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_store_cnt+1))),
            v_new_payment_id,
            v_order_statuses(TRUNC(DBMS_RANDOM.VALUE(1,7))),
            ROUND(v_order_total,2)
        )
        RETURNING order_id INTO v_new_order_id;

        FOR j IN 1..v_num_items LOOP
            INSERT INTO order_items (order_id, product_id, quantity, item_price)
            VALUES (v_new_order_id, v_product_ids(v_item_product(j)), v_item_qty(j), v_item_price(j));
        END LOOP;

        IF MOD(i,500) = 0 THEN
            COMMIT;
        END IF;
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM payment;

-- sanity check: does order total match sum of its items?
SELECT o.order_id, o.total_amount, SUM(oi.quantity * oi.item_price) AS computed_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_id IN (SELECT order_id FROM orders WHERE ROWNUM <= 10)
GROUP BY o.order_id, o.total_amount
ORDER BY o.order_id;



SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_store_ids id_tab;
    v_product_ids id_tab;
    v_store_cnt PLS_INTEGER := 0;
    v_prod_cnt  PLS_INTEGER := 0;
    v_stock     NUMBER;
BEGIN
    FOR r IN (SELECT store_id FROM dark_store) LOOP
        v_store_cnt := v_store_cnt + 1;
        v_store_ids(v_store_cnt) := r.store_id;
    END LOOP;

    FOR r IN (SELECT product_id FROM product) LOOP
        v_prod_cnt := v_prod_cnt + 1;
        v_product_ids(v_prod_cnt) := r.product_id;
    END LOOP;

    -- each store stocks ~150 random products (not all 501)
    FOR s IN 1..v_store_cnt LOOP
        FOR p IN 1..150 LOOP
            v_stock := TRUNC(DBMS_RANDOM.VALUE(0,500));
            INSERT INTO inventory (store_id, product_id, stock_quantity, reserved_quantity, reorder_level)
            VALUES (
                v_store_ids(s),
                v_product_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_prod_cnt+1))),
                v_stock,
                TRUNC(DBMS_RANDOM.VALUE(0, LEAST(v_stock,50)+1)),
                TRUNC(DBMS_RANDOM.VALUE(10,50))
            );
        END LOOP;
    END LOOP;
    COMMIT;
END;
/


SELECT COUNT(*) FROM inventory;
SELECT * FROM inventory WHERE ROWNUM <= 5;







SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_supplier_ids id_tab;
    v_store_ids    id_tab;
    v_product_ids  id_tab;
    v_supp_cnt PLS_INTEGER := 0;
    v_store_cnt PLS_INTEGER := 0;
    v_prod_cnt  PLS_INTEGER := 0;
BEGIN
    FOR r IN (SELECT supplier_id FROM supplier) LOOP
        v_supp_cnt := v_supp_cnt + 1; v_supplier_ids(v_supp_cnt) := r.supplier_id;
    END LOOP;
    FOR r IN (SELECT store_id FROM dark_store) LOOP
        v_store_cnt := v_store_cnt + 1; v_store_ids(v_store_cnt) := r.store_id;
    END LOOP;
    FOR r IN (SELECT product_id FROM product) LOOP
        v_prod_cnt := v_prod_cnt + 1; v_product_ids(v_prod_cnt) := r.product_id;
    END LOOP;

    FOR i IN 1..2000 LOOP
        INSERT INTO restock (supplier_id, store_id, product_id, quantity, restock_date)
        VALUES (
            v_supplier_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_supp_cnt+1))),
            v_store_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_store_cnt+1))),
            v_product_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_prod_cnt+1))),
            TRUNC(DBMS_RANDOM.VALUE(50,500)),
            SYSDATE - TRUNC(DBMS_RANDOM.VALUE(0,90))
        );
        IF MOD(i,500)=0 THEN COMMIT; END IF;
    END LOOP;
    COMMIT;
END;
/


SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_store_ids id_tab;
    v_store_cnt PLS_INTEGER := 0;
    v_first_names DBMS_SQL.VARCHAR2_TABLE;
    v_last_names  DBMS_SQL.VARCHAR2_TABLE;
    v_vehicles    DBMS_SQL.VARCHAR2_TABLE;
    v_statuses    DBMS_SQL.VARCHAR2_TABLE;
    v_name VARCHAR2(100);
BEGIN
    FOR r IN (SELECT store_id FROM dark_store) LOOP
        v_store_cnt := v_store_cnt + 1; v_store_ids(v_store_cnt) := r.store_id;
    END LOOP;

    v_first_names(1):='Ravi'; v_first_names(2):='Suresh'; v_first_names(3):='Manoj';
    v_first_names(4):='Ajay'; v_first_names(5):='Deepak'; v_first_names(6):='Vinod';
    v_last_names(1):='Yadav'; v_last_names(2):='Chauhan'; v_last_names(3):='Pandey';
    v_last_names(4):='Mishra'; v_last_names(5):='Thakur';
    v_vehicles(1):='Bike'; v_vehicles(2):='Bicycle'; v_vehicles(3):='Scooter';
    v_statuses(1):='ACTIVE'; v_statuses(2):='INACTIVE'; v_statuses(3):='ON_DELIVERY';

    FOR s IN 1..v_store_cnt LOOP
        FOR d IN 1..6 LOOP
            v_name := v_first_names(TRUNC(DBMS_RANDOM.VALUE(1,7))) || ' ' ||
                      v_last_names(TRUNC(DBMS_RANDOM.VALUE(1,6)));
            INSERT INTO delivery_partner (store_id, partner_name, phone, vehicle_type, status)
            VALUES (
                v_store_ids(s), v_name,
                '9' || TRUNC(DBMS_RANDOM.VALUE(100000000,999999999)),
                v_vehicles(TRUNC(DBMS_RANDOM.VALUE(1,4))),
                v_statuses(TRUNC(DBMS_RANDOM.VALUE(1,4)))
            );
        END LOOP;
    END LOOP;
    COMMIT;
END;
/

SET DEFINE OFF;

DECLARE
    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_supplier_ids id_tab;
    v_product_ids  id_tab;
    v_supp_cnt PLS_INTEGER := 0;
    v_prod_cnt PLS_INTEGER := 0;
    v_s NUMBER; v_p NUMBER;
BEGIN
    FOR r IN (SELECT supplier_id FROM supplier) LOOP
        v_supp_cnt := v_supp_cnt + 1; v_supplier_ids(v_supp_cnt) := r.supplier_id;
    END LOOP;
    FOR r IN (SELECT product_id FROM product) LOOP
        v_prod_cnt := v_prod_cnt + 1; v_product_ids(v_prod_cnt) := r.product_id;
    END LOOP;

    FOR i IN 1..1500 LOOP
        v_s := v_supplier_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_supp_cnt+1)));
        v_p := v_product_ids(TRUNC(DBMS_RANDOM.VALUE(1, v_prod_cnt+1)));

        BEGIN
            INSERT INTO product_supplier (supplier_id, product_id) VALUES (v_s, v_p);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN NULL; -- skip if this pair already exists
        END;
    END LOOP;
    COMMIT;
END;
/
SET DEFINE OFF;

DECLARE
    CURSOR c_orders IS
        SELECT order_id, store_id, order_status
        FROM orders
        WHERE order_status IN ('OUT_FOR_DELIVERY','DELIVERED');

    TYPE id_tab IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
    v_partner_by_store id_tab;

    v_statuses DBMS_SQL.VARCHAR2_TABLE;
BEGIN
    v_statuses(1):='OUT_FOR_DELIVERY'; v_statuses(2):='DELIVERED'; v_statuses(3):='DELAYED';

    FOR o IN c_orders LOOP
        DECLARE
            v_partner_id NUMBER;
        BEGIN
            SELECT delivery_partner_id INTO v_partner_id
            FROM (
                SELECT delivery_partner_id FROM delivery_partner
                WHERE store_id = o.store_id
                ORDER BY DBMS_RANDOM.VALUE
            ) WHERE ROWNUM = 1;

            INSERT INTO delivery (order_id, delivery_partner_id, pickup_time, delivered_time, delivery_status, distance_km)
            VALUES (
                o.order_id,
                v_partner_id,
                SYSDATE - DBMS_RANDOM.VALUE(0,5),
                CASE WHEN o.order_status = 'DELIVERED' THEN SYSDATE - DBMS_RANDOM.VALUE(0,4) ELSE NULL END,
                CASE WHEN o.order_status = 'DELIVERED' THEN 'DELIVERED' ELSE 'OUT_FOR_DELIVERY' END,
                ROUND(DBMS_RANDOM.VALUE(0.5,15),2)
            );
        EXCEPTION
            WHEN NO_DATA_FOUND THEN NULL; -- skip if store somehow has no delivery partners
        END;
    END LOOP;
    COMMIT;
END;
/

SELECT COUNT(*) FROM restock;
SELECT COUNT(*) FROM delivery_partner;
SELECT COUNT(*) FROM product_supplier;
SELECT COUNT(*) FROM delivery;


SELECT   COUNT(*) AS row_count FROM customer
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

SELECT o.order_id
FROM orders o
LEFT JOIN delivery d ON o.order_id = d.order_id
WHERE o.order_status = 'DELIVERED' AND (d.delivery_id IS NULL OR d.delivered_time IS NULL);
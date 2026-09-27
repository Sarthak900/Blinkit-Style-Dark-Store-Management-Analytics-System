# Blinkit-Style Dark Store Management & Analytics System

## 📌 Project Overview

This project is an **Oracle SQL-based Dark Store Management and Analytics System** inspired by quick-commerce platforms such as Blinkit.

The database models the core workflow of a quick-commerce business, including:

- Customer management
- Product, category, and brand management
- Shopping carts
- Orders and order items
- Payments
- Dark store operations
- Employee management
- Inventory tracking
- Supplier and restocking management
- Product-supplier relationships
- Delivery partners
- Delivery tracking

The project also contains **150 analytical SQL queries** for business and operational analysis.

---

## 🎯 Project Objectives

- Design a relational database for a quick-commerce business.
- Model relationships between multiple business entities.
- Implement data integrity using primary keys, foreign keys, unique constraints, and check constraints.
- Automate ID generation using Oracle sequences and triggers.
- Improve query performance with indexes.
- Validate database structure and loaded data.
- Test insertions, relationships, and constraint behavior.
- Develop analytical SQL queries for business reporting and decision support.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Oracle Database | Database management |
| Oracle SQL | Database development and analytics |
| Oracle SQL Developer | SQL development and testing |
| ER Modeling | Database design |
| GitHub | Version control and project documentation |

---

## 🏗️ System Workflow

```text
Customer
   ↓
Cart
   ↓
Cart Items
   ↓
Product
   ↓
Order
   ↓
Order Items
   ↓
Payment
   ↓
Dark Store
   ↓
Inventory
   ↓
Restock
   ↓
Supplier

Order
   ↓
Delivery
   ↓
Delivery Partner
```

The database represents the workflow from **customer cart creation and order placement to inventory management, procurement, payment, and last-mile delivery**.

---

## 🗃️ Database Entities

The implemented database contains **17 tables**:

1. Customer
2. Category
3. Brand
4. Product
5. Cart
6. Cart Items
7. Payment
8. Dark Store
9. Employee
10. Orders
11. Order Items
12. Inventory
13. Supplier
14. Restock
15. Product Supplier
16. Delivery Partner
17. Delivery

---

## 🔗 Key Relationships

```text
Customer
   │
   ├── Cart
   │     └── Cart Items
   │            └── Product
   │
   └── Orders
         ├── Order Items
         │      └── Product
         ├── Payment
         ├── Dark Store
         └── Delivery
                └── Delivery Partner

Dark Store
   ├── Employee
   └── Inventory
          └── Product

Supplier
   ├── Restock
   │     ├── Product
   │     └── Dark Store
   │
   └── Product Supplier
          └── Product

Product
   ├── Category
   └── Brand
```

---

## 🔐 Database Design & Integrity

### Primary Keys

Each major table uses a primary key for unique row identification.

Examples:

```text
customer_id
product_id
order_id
payment_id
store_id
supplier_id
delivery_id
```

### Foreign Keys

Foreign keys enforce relationships between business entities.

Examples:

```text
Orders → Customer
Orders → Dark Store
Orders → Payment

Order Items → Orders
Order Items → Product

Inventory → Dark Store
Inventory → Product

Restock → Supplier
Restock → Product
Restock → Dark Store
```

### Check Constraints

Business rules are enforced through check constraints.

Order statuses:

```text
PLACED
CONFIRMED
PACKED
OUT_FOR_DELIVERY
DELIVERED
CANCELLED
```

Payment statuses:

```text
PENDING
SUCCESS
FAILED
REFUNDED
```

Inventory quantities and product prices are restricted from taking invalid negative values.

---

## 🔢 Sequences & Triggers

Oracle sequences and `BEFORE INSERT` triggers are used for automatic ID generation.

```text
INSERT
   ↓
BEFORE INSERT TRIGGER
   ↓
Sequence.NEXTVAL
   ↓
ID Generated
```

This reduces manual ID handling during data insertion.

---

## ⚡ Indexing

Indexes are created on important foreign-key columns to support efficient joins and lookups across related tables.

---

# ✅ Validation & Testing

The project contains separate scripts for **database validation** and **functional testing**.

### `08_validation.sql`

The validation script checks the row counts across all 17 database tables to confirm that the expected data is present.

It validates records across:

- Customer
- Category
- Brand
- Product
- Cart
- Cart Items
- Payment
- Dark Store
- Employee
- Orders
- Order Items
- Inventory
- Supplier
- Restock
- Product Supplier
- Delivery Partner
- Delivery

### `09_testing.sql`

The testing script validates actual database behavior through controlled insert and verification operations.

It includes tests for:

- Order insertion
- Order-item insertion
- Inventory insertion
- Supplier insertion
- Restock insertion
- Product-supplier mapping
- Delivery partner insertion
- Delivery insertion
- Duplicate product-supplier insertion
- Duplicate delivery insertion
- Table existence
- Trigger status
- Foreign-key constraints
- Joined order/customer/store/payment verification

The duplicate insertion tests are intentionally included to verify that database constraints prevent invalid duplicate records.

---

# 📈 SQL Analytics

The project contains **150 analytical SQL queries** covering multiple business areas.

## Part 1 — Queries 1–50

### Basic KPIs

- Total customers
- Total products
- Total dark stores
- Total orders
- Total revenue
- Average order value
- Minimum and maximum order value
- Total quantity sold
- Average product price
- Payment analysis

### Order & Revenue Analysis

- Orders by status
- Revenue by order status
- Store revenue
- City revenue
- Average order value by store
- Top orders
- Monthly revenue
- Daily revenue
- Store performance

### Customer Analysis

- Customer spending
- Orders per customer
- Customer average order value
- Top customers
- Customer ranking
- Customers with cancelled orders
- Customers using multiple stores

### Product Analysis

- Product revenue
- Product quantity sold
- Top products
- Products never ordered
- Products above average price
- Product performance by category

---

## Part 2 — Queries 51–100

### Category Analysis

- Products per category
- Average category price
- Quantity sold
- Revenue by category
- Category ranking
- Category revenue contribution

### Brand Analysis

- Products per brand
- Average brand price
- Brand revenue
- Brand quantity sold
- Brand ranking

### Cart Analysis

- Total carts
- Carts per customer
- Items per cart
- Quantity per cart
- Customers with multiple carts
- Product and category diversity in carts

### Payment Analysis

- Payment count by mode
- Payment amount by mode
- Payment status analysis
- Successful payments
- Failed payments
- Refunded payments
- Payment success rate

### Inventory Analysis

- Inventory records
- Stock by store
- Reserved quantity
- Products below reorder level
- Zero-stock products
- Inventory value
- Available stock

---

## Part 3 — Queries 101–150

### Supplier & Restock Analysis

- Total suppliers
- Restock transactions
- Quantity supplied by supplier
- Top suppliers
- Supplier activity
- Restock quantity by store
- Restock quantity by product
- Frequently restocked products
- Multiple-supplier products
- Average restock quantity

### Dark Store Analysis

- Stores by city
- Employees per store
- Salary cost by store
- Average employee salary
- Stores with no orders
- Store order volume
- Store revenue contribution
- Store ranking

### Employee Analysis

- Total employees
- Employee count by role
- Average salary
- Highest-paid employees
- Salary ranking
- Employees above average salary

### Delivery Analysis

- Total delivery partners
- Delivery partners by status
- Deliveries handled per partner
- Partners with no deliveries
- Average delivery distance
- Longest delivery
- Deliveries taking more than 30 minutes
- Average delivery time
- Delivery performance

### Advanced SQL

The analytics query set uses:

- Aggregate functions
- `GROUP BY`
- `HAVING`
- `JOIN`
- `LEFT JOIN`
- Subqueries
- `NOT EXISTS`
- CTEs / `WITH`
- `CASE`
- `RANK()`
- `DENSE_RANK()`
- Analytic / window functions
- Date functions
- `ROWNUM`
- Percentage calculations

---

## 🧠 SQL Concepts Demonstrated

```text
SELECT
WHERE
GROUP BY
HAVING
ORDER BY

INNER JOIN
LEFT JOIN

Subqueries
CTEs
NOT EXISTS

COUNT()
SUM()
AVG()
MIN()
MAX()

CASE

RANK()
DENSE_RANK()

Window / Analytic Functions

Date Functions
ROWNUM
```

---

## 📁 Project Structure

```text
Blinkit-Style-Dark-Store-Management/
│
├── README.md
│
├── Oracle SQL/
│   ├── 01_create_user.sql
│   ├── 02_tables.sql
│   ├── 03_sequences.sql
│   ├── 04_triggers.sql
│   ├── 05_constraints.sql
│   ├── 06_indexes.sql
│   ├── 07_seed_data.sql
│   ├── 08_validation.sql
│   ├── 09_testing.sql
│   └── 10_analytics_queries.sql
│
└── ERD/
    └── blinkit_warehouse_erd.png
```

---

## 🚀 How to Run the Project

### 1. Create the Database User

Run the user creation and permission script using an Oracle administrative account.

```sql
CREATE USER blinkit_user IDENTIFIED BY <password>;

GRANT CREATE SESSION TO blinkit_user;
GRANT CREATE TABLE TO blinkit_user;
GRANT CREATE SEQUENCE TO blinkit_user;
GRANT CREATE TRIGGER TO blinkit_user;
GRANT CREATE VIEW TO blinkit_user;
```

Replace `<password>` with your own local database password.

### 2. Create Tables

Run:

```text
02_tables.sql
```

### 3. Create Sequences

Run:

```text
03_sequences.sql
```

### 4. Create Triggers

Run:

```text
04_triggers.sql
```

### 5. Apply Constraints

Run:

```text
05_constraints.sql
```

### 6. Create Indexes

Run:

```text
06_indexes.sql
```

### 7. Load Seed Data

Run:

```text
07_seed_data.sql
```

### 8. Validate Loaded Data

Run:

```text
08_validation.sql
```

### 9. Run Database Tests

Run:

```text
09_testing.sql
```

### 10. Run Analytical Queries

Run:

```text
10_analytics_queries.sql
```

This file contains the project's **150 analytical SQL queries**.

---

## 📌 Example Analytical Query

### Top 10 Customers by Total Spending

```sql
SELECT *
FROM (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(o.total_amount) AS total_spending
    FROM customer c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.customer_name
    ORDER BY total_spending DESC
)
WHERE ROWNUM <= 10;
```

---

## 📌 Example Window Function Query

### Rank Customers by Total Spending

```sql
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.total_amount) AS total_spending,
    DENSE_RANK() OVER (
        ORDER BY SUM(o.total_amount) DESC
    ) AS spending_rank
FROM customer c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY spending_rank;
```

---

## 📌 Example Inventory Query

### Products Below Reorder Level

```sql
SELECT
    i.store_id,
    i.product_id,
    p.product_name,
    i.stock_quantity,
    i.reorder_level
FROM inventory i
JOIN product p
    ON i.product_id = p.product_id
WHERE i.stock_quantity < i.reorder_level;
```

---

## 🔍 Business Questions Answered

The project can be used to answer questions such as:

- What is the total revenue?
- What is the average order value?
- Which customers generate the highest spending?
- Which products generate the most revenue?
- Which categories and brands perform strongly?
- Which stores have the highest order volume?
- Which products are below reorder level?
- Which products have zero stock?
- Which suppliers provide the highest quantities?
- Which products require frequent restocking?
- Which delivery partners handle the most deliveries?
- What is the average delivery time?
- Which customers use multiple stores?
- Which stores have no orders?
- What percentage of revenue does each store or category contribute?

---

## 📊 ER Diagram

The project includes an ER diagram representing the relationships between all **17 implemented entities**.

```text
ERD/
└── blinkit_warehouse_erd.png
```

---

## 📈 Future Scope

Possible future extensions include:

- Power BI dashboard
- Advanced PL/SQL procedures and functions
- Automated low-stock alerts
- Delivery performance dashboard
- Inventory monitoring
- Oracle-to-Power BI reporting integration
- Additional SQL performance optimization

---

## 👨‍💻 Skills Demonstrated

```text
Oracle SQL
Database Design
ER Modeling
Relational Data Modeling
SQL Joins
Subqueries
CTEs
Window Functions
Aggregate Functions
Business Analytics
Inventory Analytics
Revenue Analytics
Customer Analytics
Database Constraints
Sequences
Triggers
Indexes
Database Testing
Data Validation
GitHub
```

---

## 📌 Project Status

| Component | Status |
|---|---|
| Database Design | ✅ Completed |
| ER Diagram | ✅ Completed |
| Table Creation | ✅ Completed |
| Relationships | ✅ Completed |
| Sequences | ✅ Completed |
| Triggers | ✅ Completed |
| Constraints | ✅ Completed |
| Indexes | ✅ Completed |
| Seed Data | ✅ Completed |
| Data Validation | ✅ Completed |
| Database Testing | ✅ Completed |
| SQL Analytics | ✅ 150 Queries Completed |
| Power BI Dashboard | 🔄 Future Enhancement |
| README Documentation | ✅ Completed |

---

## 👤 Author

**Sarthak Pandit**

B.Tech – Electronics & Telecommunication Engineering

### Areas of Interest

- Data Analytics
- Oracle SQL
- Database Development
- Business Intelligence

---

## ⭐ Project Highlights

**17 interconnected Oracle database tables + ER modeling + database integrity and testing + 150 analytical SQL queries covering end-to-end quick-commerce operations.**

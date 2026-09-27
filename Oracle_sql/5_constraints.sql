/* ============================================================
   05_CONSTRAINTS.SQL
   Optional CHECK constraints for data-quality rules (e.g. price
   can't be negative, status must be one of a fixed set of values).
   ============================================================ */
 --Product price can't be negative
ALTER TABLE product ADD CONSTRAINT chk_product_price CHECK (price >= 0);

--Order status must be one of a fixed set of values
ALTER TABLE orders ADD CONSTRAINT chk_orders_status
CHECK (order_status IN ('PLACED','CONFIRMED','PACKED','OUT_FOR_DELIVERY','DELIVERED','CANCELLED'));

--Payment status must be one of a fixed set of values
ALTER TABLE payment ADD CONSTRAINT chk_payment_status
CHECK (payment_status IN ('PENDING','SUCCESS','FAILED','REFUNDED'));

-- Inventory quantities can't go negative.
ALTER TABLE inventory ADD CONSTRAINT chk_inventory_nonneg
CHECK (stock_quantity >= 0 AND reserved_quantity >= 0);



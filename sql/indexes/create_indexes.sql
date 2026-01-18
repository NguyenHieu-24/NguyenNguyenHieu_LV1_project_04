CREATE INDEX IF NOT EXISTS idx_orders_seller_date
ON orders_partitioned (seller_id, order_date);

CREATE INDEX IF NOT EXISTS idx_orders_status
ON orders_partitioned (status);

CREATE INDEX IF NOT EXISTS idx_order_item_product
ON order_item (product_id);

CREATE INDEX IF NOT EXISTS idx_order_item_order
ON order_item (order_id);
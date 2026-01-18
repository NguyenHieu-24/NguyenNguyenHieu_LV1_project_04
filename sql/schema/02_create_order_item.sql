CREATE TABLE IF NOT EXISTS order_item (
    order_item_id BIGSERIAL PRIMARY KEY,
    order_id      BIGINT NOT NULL REFERENCES orders(order_id),
    product_id    INT NOT NULL REFERENCES product(product_id),
    order_date    TIMESTAMP NOT NULL,
    quantity      INT NOT NULL,
    unit_price    NUMERIC(10,2) NOT NULL,
    subtotal      NUMERIC(12,2) NOT NULL,
    created_at    TIMESTAMP DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS orders (
    order_id     BIGSERIAL PRIMARY KEY,
    order_date   TIMESTAMP NOT NULL,
    seller_id    INT NOT NULL REFERENCES seller(seller_id),
    status       VARCHAR(20) NOT NULL,
    total_amount DECIMAL(12,2) DEFAULT 0,
    created_at   TIMESTAMP DEFAULT NOW()
);
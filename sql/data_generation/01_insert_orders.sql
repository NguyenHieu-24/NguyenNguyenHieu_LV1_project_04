INSERT INTO orders_partitioned (order_date, seller_id, status, created_at)
SELECT
    timestamp '2025-08-01'
        + random() * (timestamp '2025-10-31' - timestamp '2025-08-01'),
    seller_id,
    CASE
        WHEN random() < 0.8 THEN 'completed'
        WHEN random() < 0.9 THEN 'cancelled'
        ELSE 'pending'
    END,
    NOW()
FROM seller
CROSS JOIN generate_series(1, 50000);
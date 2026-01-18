INSERT INTO order_item (
    order_id, product_id, order_date,
    quantity, unit_price, subtotal, created_at
)
SELECT
    o.order_id,
    p.product_id,
    o.order_date,
    q.qty,
    p.price,
    q.qty * p.price,
    NOW()
FROM orders_partitioned o
JOIN LATERAL (
    SELECT product_id, price
    FROM product
    WHERE seller_id = o.seller_id
    ORDER BY random()
    LIMIT (2 + floor(random() * 3))
) p ON TRUE
JOIN LATERAL (
    SELECT (1 + floor(random() * 5))::INT AS qty
) q ON TRUE;
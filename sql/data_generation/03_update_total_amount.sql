UPDATE orders_partitioned o
SET total_amount = s.total
FROM (
    SELECT order_id, SUM(subtotal) AS total
    FROM order_item
    GROUP BY order_id
) s
WHERE o.order_id = s.order_id;
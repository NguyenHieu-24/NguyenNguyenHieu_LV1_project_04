CREATE OR REPLACE FUNCTION seller_performance_report(
    start_date DATE,
    end_date DATE
)
RETURNS TABLE (
    seller_id INT,
    seller_name TEXT,
    total_orders BIGINT,
    total_quantity BIGINT,
    total_revenue NUMERIC
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        s.seller_id,
        s.seller_name,
        COUNT(DISTINCT o.order_id),
        SUM(oi.quantity),
        SUM(oi.subtotal)
    FROM seller s
    JOIN orders_partitioned o ON s.seller_id = o.seller_id
    JOIN order_item oi ON o.order_id = oi.order_id
    WHERE o.status = 'completed'
      AND o.order_date BETWEEN start_date AND end_date
    GROUP BY s.seller_id, s.seller_name
    ORDER BY total_revenue DESC;
END;
$$ LANGUAGE plpgsql;
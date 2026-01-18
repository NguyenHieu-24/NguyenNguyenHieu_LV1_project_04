CREATE OR REPLACE FUNCTION daily_revenue_report(
    start_date DATE,
    end_date DATE
)
RETURNS TABLE (
    date DATE,
    total_orders BIGINT,
    total_quantity BIGINT,
    total_revenue NUMERIC
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        o.order_date::DATE,
        COUNT(DISTINCT o.order_id),
        SUM(oi.quantity),
        SUM(oi.subtotal)
    FROM orders_partitioned o
    JOIN order_item oi ON o.order_id = oi.order_id
    WHERE o.status = 'completed'
      AND o.order_date BETWEEN start_date AND end_date
    GROUP BY 1
    ORDER BY 1;
END;
$$ LANGUAGE plpgsql;
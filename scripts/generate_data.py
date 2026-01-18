from src.banking_analytics.db import get_engine
from pathlib import Path

engine = get_engine()

paths = [
    "sql/data_generation/01_insert_orders.sql",
    "sql/data_generation/02_insert_order_items.sql",
    "sql/data_generation/03_update_total_amount.sql",
    "sql/indexes/create_indexes.sql",
]

with engine.begin() as conn:
    for p in paths:
        print(f"Running {p}")
        conn.execute(Path(p).read_text())
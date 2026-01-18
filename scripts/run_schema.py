from src.banking_analytics.db import get_engine
from pathlib import Path

engine = get_engine()

schema_dir = Path("sql/schema")

with engine.begin() as conn:
    for file in sorted(schema_dir.glob("*.sql")):
        print(f"Running {file.name}")
        conn.execute(file.read_text())
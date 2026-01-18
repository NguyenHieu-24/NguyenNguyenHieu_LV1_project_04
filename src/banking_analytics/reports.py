import pandas as pd
from banking_analytics.db import get_engine

engine = get_engine()


def monthly_revenue(start_date, end_date):
    return pd.read_sql(
        "SELECT * FROM monthly_revenue_report(%s, %s)",
        engine,
        params=(start_date, end_date),
    )


def daily_revenue(start_date, end_date):
    return pd.read_sql(
        "SELECT * FROM daily_revenue_report(%s, %s)",
        engine,
        params=(start_date, end_date),
    )
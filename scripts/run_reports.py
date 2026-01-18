from src.banking_analytics.reports import monthly_revenue, daily_revenue

print("Monthly Revenue")
print(monthly_revenue("2025-08-01", "2025-10-31").head())

print("\nDaily Revenue")
print(daily_revenue("2025-10-01", "2025-10-07").head())
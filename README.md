# 🏦 Banking Analytics Project
## 📌 Overview
This project is an end-to-end banking analytics system designed to analyze transactional revenue data using PostgreSQL and Python.
The goal is to simulate a real-world analytics workflow in the banking domain, focusing on data modeling, SQL optimization, and analytical reporting.

The project demonstrates how raw transactional data can be transformed into meaningful business insights such as daily revenue, monthly revenue trends, seller performance, and product rankings.

## 🎯 Objectives
- Design a relational database schema for banking transactions
- Generate and manage large volumes of transactional data
- Optimize query performance using indexes and partitioning
- Produce analytical reports for business decision-making
- Follow best practices in project structure and dependency management using Poetry

## 🏗️ Project Architecture
```
banking-analytics-project/
│
├── pyproject.toml
├── poetry.lock
├── README.md
│
├── configs/
│   ├── database.yml
│   └── settings.py
│
├── sql/
│   ├── schema/
│   ├── data_generation/
│   ├── indexes/
│   ├── reports/
│   └── explain/
│
├── src/
│   └── banking_analytics/
│       ├── __init__.py
│       ├── db.py
│       ├── runner.py
│       └── reports.py
│
├── scripts/
│   ├── run_schema.py
│   ├── generate_data.py
│   └── run_reports.py
│
└── docs/
    ├── execution_plan_before.png
    ├── execution_plan_after.png
    └── performance_comparison.md
```

## 🧰 Technology Stack
- Programming Language: Python ≥ 3.9
- Database: PostgreSQL (Recommended: 14 or 15)
- ORM / DB Access: SQLAlchemy
- Data Processing: Pandas
- Dependency Management: Poetry
- Configuration: YAML
- Operating System: Windows / Linux / macOS

## 🗄️ Database Design
The database is designed around transactional data commonly found in banking or fintech systems.

### Key Tables
* orders
** order_id
** order_date
** customer_id
** seller_id
** order_status
** total_amount

* order_items
** order_item_id
** order_id
** product_id
** quantity
** price

### Optimization Techniques
* Indexes on frequently queried columns
* Table partitioning by date
* Query performance analysis using EXPLAIN ANALYZE

## 📊 Analytical Reports
The project generates several business-oriented reports:
* Daily Revenue
* Monthly Revenue
* Seller Performance Analysis
* Top Products by Brand
* Order Status Summary
Each report is implemented as optimized SQL queries and executed through Python scripts.

## ⚙️ Setup Instructions
### 1️⃣ Clone the Repository
```bash
git clone <repository-url>
cd banking-analytics-project
```

### 2️⃣ Install Dependencies with Poetry
```bash
poetry install
```
Verify the environment:
```bash
poetry env info
```

### 3️⃣ Configure Database
Edit the database configuration file:
```text
configs/database.yml
```

### ▶️ Running the Project
#### Create Database Schema
```bash
poetry run python scripts/run_schema.py
```

#### Generate Sample Data
```bash
poetry run python scripts/generate_data.py
```

#### Run Analytical Reports
```bash
poetry run python scripts/run_reports.py
```

## 🚀 Performance Optimization
The project includes performance comparisons before and after optimization:
- Execution plans (EXPLAIN ANALYZE)
- Index impact analysis
- Partitioning benefits
Detailed results can be found in:
```text
docs/performance_comparison.md
```

## 📈 Real-World Use Cases
- Banking revenue analysis
- Fintech transaction monitoring
- Business intelligence dashboards
- Data warehouse preparation
- SQL performance tuning practice

## 📚 Learning Outcomes
Through this project, you will gain experience in:
- SQL schema design and optimization
- Python-based database interaction
- Managing data projects with Poetry
- Writing production-ready analytical queries
- Structuring scalable analytics projects

## 🔮 Future Improvements
- Add Airflow for workflow orchestration
- Integrate dbt for data transformation
- Build dashboards using Power BI or Metabase
- Containerize the project using Docker
- Implement data quality checks

## 📄 License
This project is for educational purposes only.

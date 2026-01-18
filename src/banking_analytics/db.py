import yaml
from sqlalchemy import create_engine


def get_engine():
    with open("configs/database.yml", "r") as f:
        cfg = yaml.safe_load(f)["postgres"]

    db_url = (
        f"postgresql://{cfg['user']}:{cfg['password']}"
        f"@{cfg['host']}:{cfg['port']}/{cfg['database']}"
    )

    engine = create_engine(
        db_url,
        pool_size=20,
        max_overflow=10,
        execution_options={"isolation_level": "AUTOCOMMIT"},
    )

    return engine
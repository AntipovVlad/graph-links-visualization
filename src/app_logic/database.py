from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

from src import config


config.init_config_settings()

engine = create_engine(f"postgresql+psycopg2://{config.DB_USER}:{config.DB_PASSWORD}@localhost/{config.DB_NAME}")  # postgresql+psycopg2://kvant:qwerty@localhost/IV
SessionLocal = sessionmaker(bind=engine)

Base = declarative_base()

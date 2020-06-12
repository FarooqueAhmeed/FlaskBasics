from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from sqlalchemy.ext.declarative import declarative_base
import os
import pymysql

db = pymysql.connect(host='localhost', user='root', password='yaKhudaKhair', database='flasky')

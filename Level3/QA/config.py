#encoding:utf-8
import os
DEBUG = True
SECRET_KEY = os.urandom(24)
SQLALCHEMY_DATABASE_URI = 'mysql://root:yaKhudaKhair@localhost:3306/qa'
SQLALCHEMY_TRACK_MODIFICATIONS = False


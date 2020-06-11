from flask import Flask
from config import development
from flask_migrate import Migrate

from flask_sqlalchemy import  SQLAlchemy

app=Flask(__name__)
app.config.from_object(development)
db=SQLAlchemy(app )
migrate=Migrate(app,db)





from views import index
from mod_users import users
from mod_Admin import admin
app.register_blueprint(users)

app.register_blueprint(admin)



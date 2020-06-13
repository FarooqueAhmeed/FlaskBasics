from flask import Flask, render_template, flash, session, redirect, send_from_directory, make_response
from flask_mysqldb import MySQL
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from datetime import timedelta, datetime
from datetime import timedelta, datetime
import os


app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:yaKhudaKhair@localhost/sidebar'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db = SQLAlchemy(app)

app.secret_key = 'novell@123'
basedir = os.path.abspath(os.path.dirname(__file__))

class BlogPost(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    author = db.Column(db.String(20), nullable=False, default='N/A')
    body = db.Column(db.Text, nullable=False)
    date_posted = db.Column(db.DateTime, nullable=False, default=datetime.now)
    date_updated = db.Column(db.DateTime,
                             nullable=False, default=datetime.now, onupdate=datetime.now)

    def __repr__(self):
        return 'BlogPost ' + str(self.id)


class Articles(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100), nullable=False)
    author = db.Column(db.String(255), nullable=False, default='N/A')
    category = db.Column(db.String(20), nullable=False, default='Other')
    body = db.Column(db.Text, nullable=False)
    date_posted = db.Column(db.DateTime, nullable=False, default=datetime.now)
    date_updated = db.Column(db.DateTime,
                             nullable=False, default=datetime.now, onupdate=datetime.now)

    def __repr__(self):
        return 'Articles ' + str(self.id)


class Users(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    email = db.Column(db.String(100), nullable=False)
    username = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100), nullable=False)
    register_date = db.Column(db.DateTime, nullable=False, default=datetime.now)
    hashCode = db.Column(db.String(200))

    def __repr__(self):
        return 'Users ' + str(self.id)


class Urls(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    url_name = db.Column(db.String(100), nullable=False)
    url = db.Column(db.String(255), nullable=False)

    def __repr__(self):
        return 'Urls ' + str(self.id)


class Tasks(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    task = db.Column(db.String(255), nullable=False)
    status = db.Column(db.String(100), nullable=False)
    comments = db.Column(db.Text)

    def __repr__(self):
        return 'Tasks ' + str(self.id)


class Comments(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user = db.Column(db.String(100), nullable=False)
    comment = db.Column(db.String(200), nullable=False)
    timestamp = db.Column(db.DateTime, nullable=False, default=datetime.now)
    article_id = db.Column(db.Integer, db.ForeignKey('articles.id'), nullable=False)

    def __repr__(self):
        return 'Comments ' + str(self.id)

# init MYSQL
mysql = MySQL(app)
migrate = Migrate(app, db)
db.init_app(app)
db.create_all(app=app)
print("==")
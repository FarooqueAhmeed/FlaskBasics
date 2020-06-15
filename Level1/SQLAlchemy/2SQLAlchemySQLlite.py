from os.path import dirname, abspath

from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from pathlib import Path


###  Create the database from model in sqllite database

app = Flask(__name__)



#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:yaKhudaKhair@localhost/ormdb'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///ormdb.db'

db = SQLAlchemy(app)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __init__(self, user_name, user_email):
        self.username = user_name
        self.email = user_email

    def __repr__(self):
        return '<User %r>' % self.username


@app.route("/")
def index():
    return "Working"

if __name__ == '2SQLAlchemySQLlite':
    db.create_all() ## Magic is being done in this method call


    #Insertion
    me = User('admin13', 'admin00@example.com')
    db.session.add(me)
    db.session.commit()

    you = User('admin14', 'admin220@example.com')
    db.session.add(you)
    db.session.commit()

    # Querying

    admin1 = User.query.filter_by(username='admin').first()
    print(admin1)

    missing = User.query.filter_by(username='missing').first()
    print(missing)

    #Selecting a bunch of users by a more complex expression:
    all_users = User.query.filter(User.email.endswith('@example.com')).all()
    print(all_users)

    # Ordering users by something:
    ordered_users = User.query.order_by(User.username).all()
    print(ordered_users)

    # Limiting users:
    limited_user = User.query.limit(1).all()
    print(limited_user)

    # Getting user by primary key:
    user_with_prim_key = User.query.get(1)
    print(user_with_prim_key)

    # querying users for view
    #user = User.query.filter_by(username="admin2").first_or_404()
    #print(user)

    # Deleting Records
    db.session.delete(me)
    db.session.commit()











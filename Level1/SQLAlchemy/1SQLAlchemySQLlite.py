from flask import Flask
from flask_sqlalchemy import SQLAlchemy



###  Query and Insert Records in Database

app = Flask(__name__)




#app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:yaKhudaKhair@localhost/ormdb'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///ormdb.db'
db = SQLAlchemy(app)


class User(db.Model):
    #'__tablename__' = 'UserTable'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

    def __repr__(self):
        return '<User %r>' % self.username

'''

Integer

an integer

String(size)

a string with a maximum length (optional in some databases, e.g. PostgreSQL)

Text

some longer unicode text

DateTime

date and time expressed as Python datetime object.

Float

stores floating point values

Boolean

stores a boolean value

PickleType

stores a pickled Python object

LargeBinary

stores large arbitrary binary data

'''

@app.route("/")
def index():
    return "Working"

if __name__ == '1SQLAlchemySQLlite':
    db.create_all() ## Magic is being done in this method call
    ##db.drop_all()

import os
from flask import redirect
from flask import Flask, jsonify, request, Response, render_template
from BookModel import *
from settings import *
from sqlalchemy.sql import exists
import json
from flask_sqlalchemy import SQLAlchemy

project_dir = os.path.dirname(os.path.abspath(__file__))
database_file = "sqlite:///{}".format(os.path.join(project_dir, "bookdatabase.db"))

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = database_file
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

class Book(db.Model):
	__tablename__ = 'books'
	id = db.Column(db.Integer, primary_key=True, autoincrement=True)
	name = db.Column(db.String(80), nullable=False)
	price = db.Column(db.String, nullable=False)
	isbn = db.Column(db.String, unique=True)

	def __repr__(self):
		return "<Title: {}>".format(self.name)


@app.route('/', methods=["GET", "POST"])
def home():
    books = None
    if request.form:
        try:
            book = Book(name=request.form.get("name"), price=request.form.get("price"), isbn=request.form.get("isbn"))
            db.session.add(book)
            db.session.commit()
        except Exception as e:
            print("Failed to add book")
            print(e)
    books = Book.query.all()
    return render_template("home.html", books=books)


@app.route("/updatename", methods=["POST"])
def update_name():
	try:
		newname = request.form.get("newname")
		oldname = request.form.get("oldname")
		book = Book.query.filter_by(name=oldname).first()
		book.name = newname
		db.session.commit()
	except Exception as e:
		print("Couldn't update book title")
		print(e)
	return redirect("/")

@app.route("/updateprice", methods=["POST"])
def update_price():
	try:
		newprice = request.form.get("newprice")
		oldprice = request.form.get("oldprice")
		book = Book.query.filter_by(price=oldprice).first()
		book.price = newprice
		db.session.commit()
	except Exception as e:
		print("Couldn't update book price")
		print(e)
	return redirect("/")


@app.route("/delete", methods=["POST"])
def delete():
    name = request.form.get("name")
    book = Book.query.filter_by(name=name).first()
    db.session.delete(book)
    db.session.commit()
    return redirect("/")




if __name__ == '__main__':         #run application on port 5050
	app.run(port=5000, debug=True)
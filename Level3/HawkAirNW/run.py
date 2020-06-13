from flask import Flask
from flask_bootstrap import Bootstrap
from flask_mail import Mail
from flask_mysqldb import MySQL

# Base config
app = Flask(__name__)
app.config["SECRET_KEY"] = "CS4400"
bootstrap = Bootstrap(app)

# Mail server
app.config["MAIL_SERVER"] = "smtp.gmail.com"
app.config["MAIL_PORT"] = 465
app.config["MAIL_USE_SSL"] = True
app.config["MAIL_USERNAME"] = "hawkair2020@gmail.com"
app.config["MAIL_PASSWORD"] = "H@wkAir2020"
mail = Mail(app)

# MySQL config
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "yaKhudaKhair"
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_DB"] = "HawkAir"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"
mysql = MySQL(app)



# Main function

from helper import *
from forms import *
from mail import *
from routes import *
if __name__ == '__main__':
    bootstrap = Bootstrap(app)
    app.run(debug=True)
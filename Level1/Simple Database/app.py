from flask import Flask, render_template, request, redirect
from flask_mysqldb import MySQL
import MySQLdb.cursors

app = Flask(__name__)

# Change this to your secret key (can be anything, it's for extra protection)
app.secret_key = 'This is some secrey key'

# Enter your database connection details below
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'yaKhudaKhair'
app.config['MYSQL_DB'] = 'sampledb'

app.config['DEBUG'] = True

# Intialize MySQL
mysql = MySQL(app)


@app.route('/', methods=['GET', 'POST'])
def index():
    msg = ''
    if request.method == 'POST'and 'first_name' in request.form:
        # Create variables for easy access
        firstName = request.form['first_name']
        lastName = request.form['last_name']
        email = request.form['email']

        phone = request.form['phone']
        addr = request.form['address']
        city = request.form['city']

        state = request.form['state']
        zp = request.form['zip']
        website = request.form['website']

        hosting = request.form['hosting']
        if hosting == "yes":
            hosting = 1
        else:
            hosting = 0

        cmnt = request.form['comment']
        # Check if account exists using MySQL
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('INSERT INTO contact VALUES (NULL, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)', (firstName, lastName, phone, addr, city, state, zp, website, hosting, cmnt,))
        mysql.connection.commit()
        msg = 'You will be contacted soon!'

    return render_template('index.html', msg=msg)

from flask import Flask, jsonify
import mysql.connector as mysql
from mysql.connector import errorcode

app = Flask(__name__)

'''
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

'''

@app.route('/')
def index():
    conn = get_connection()
    cursor = conn.cursor()
    ## defining the Query
    query = "SELECT * FROM comments"
    cursor.execute(query)
    records = cursor.fetchall()
    cursor.close()
    conn.close()
    ## Showing the data
    for record in records:
        print(record)
    json_data = jsonify(records)
    return json_data.data, 200

@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response


def get_connection():
    try:
        connection = mysql.connect(host="localhost",
                                   user="root",
                                   passwd="yaKhudaKhair",
                                   database="sampledb2")
        return connection
    except mysql.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    else:
        # Always close connection to free up resources. Database servers tend to go down if you dont do it
        print("Connection Closed")
        connection.close()

if __name__ == '__main__':
    app.run(debug=True)

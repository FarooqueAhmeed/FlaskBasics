# Basic Registration for Flask 
this is a great practice for registration forms with MySQL 

## Prerequisites 
Python 3
Flask
MySQL
PyMySQL
MySQLConnection
Flask-Bcrypt


Change database name in server.py
```python
mysql = connectToMySQL('sampledb2')  ############# Change database Name Here
```



Change credentials in mysqlconnection.py file
```python
class MySQLConnection:
    def __init__(self, db):
        connection = pymysql.connect(
            host = 'localhost',
            user = 'root',
            password = 'yaKhudaKhair',
            db = db,
            charset = 'utf8mb4',
            cursorclass = pymysql.cursors.DictCursor,
            autocommit = True
        )
        self.connection = connection
```


Run SQL File against DB




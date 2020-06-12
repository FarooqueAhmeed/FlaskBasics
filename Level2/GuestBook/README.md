## Python Flask with MySQL

Basic Flask app that lets you store records to MySQL, search from MySQL and also display the number of records on the MySQL Table.

### Setup Dependencies:

```
see requirements.txt
```

### Download, Install Requirements:

```bash
pip install -r requirements.txt
```

### MySQL Configuration: 

```
vi application.py
```

Update mysql uri to match your database:
`
MYSQL_USER="root"
MYSQL_PASSWORD="yaKhudaKhair"
MYSQL_HOST="localhost"
MYSQL_DATABASE="sampledb2"
 `

### Populate MySQL Table: 
Application uses SQLAlchemy so database is created from models. To create database:
1. Go to **GuestBook** Project directory
2. Issue following commands

```python
python
>>> from application import db
>>> db.create_all()
```
This will create "**_Comments_**" table in your DB.
### Run Application:

```
python application.py
```

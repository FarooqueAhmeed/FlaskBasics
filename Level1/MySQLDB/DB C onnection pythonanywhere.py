import mysql.connector as mysql
from mysql.connector import errorcode

try:
  connection = mysql.connect(host = "db4free.net",
    user = "sendmesymbol",
    passwd = "YaKhudaKhair", database="warehouse2020")


  cursor = connection.cursor()

  ############################################# https://www.w3schools.com/python/python_mysql_insert.asp

  ## defining the Query
  query = "INSERT INTO sampleTable (id, name) VALUES (%s, %s)"
  ## storing values in a variable
  values = [
    ("2", "salman"),
    ("3", "irfan"),
    ("4", "ghafaar"),
    ("5", "jinnah")
  ]

  ## executing the query with values
  cursor.executemany(query, values)

  ## to make final output we have to run the 'commit()' method of the database object
  connection.commit()
  print(cursor.rowcount, "record inserted")

except mysql.Error as err:
  if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
    print("Something is wrong with your user name or password")
  elif err.errno == errorcode.ER_BAD_DB_ERROR:
    print("Database does not exist")
  else:
    print(err)
else:
  #Always close connection to free up resources. Database servers tend to go down if you dont do it
  connection.close()



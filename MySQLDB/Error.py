import mysql.connector as mysql
from mysql.connector import errorcode

try:
  connection = mysql.connect(host = "db4free.net",
    user = "sendmesymbol",
    passwd = "YaKhudaKhair", database="warehouse2020")


  cursor = connection.cursor()

  name = input("Enter name for UPDATE : ")
  id = input("Enter id for UPDATE : ")
  query = "UPDATE sampleTable SET name= %s where id= %s"
  name_param = (name, id)
  cursor.execute(query, name_param)
  print(type(name_param))

  print(cursor.statement)

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



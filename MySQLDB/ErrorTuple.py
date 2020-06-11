import mysql.connector as mysql
from mysql.connector import errorcode

try:
  connection = mysql.connect(host = "db4free.net",
    user = "sendmesymbol",
    passwd = "YaKhudaKhair", database="warehouse2020")


  cursor = connection.cursor()









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



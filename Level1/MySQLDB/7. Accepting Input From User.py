'''
Install the conda package, open annconda prompt as an administrator and issue following command
    conda install mysql-connector-python

Tutorial Link
    https://www.datacamp.com/community/tutorials/mysql-python


Free MySQL Hosting in the cloud for testing
    https://www.freemysqlhosting.net/

    Registration Email
        vimes56194@mailboxt.com
    Registration Password
    1234$abccd

    SQL MyAdmin page
    http://www.phpmyadmin.co/
    You can login there by using following credentials

    Server: sql9.freemysqlhosting.net
    Name: sql9330081
    Username: sql9330081
    Password: ufWpidFbLg
    Port number: 3306

    Note: If you are working with local machine database that is installed on your machine

    Connection string will look like something this.

    connection = mysql.connect(host = "localhost",
    user = "root",
    passwd = "password for root")


'''

import mysql.connector as mysql
from mysql.connector import errorcode

try:
  connection = mysql.connect(host = "sql9.freemysqlhosting.net",
    user = "sql9330081",
    passwd = "ufWpidFbLg", database="sql9330081")

  '''
  Note: In above connection we have specified additional parameter for database to which connect to
  '''

  cursor = connection.cursor()

  ## defining the Query
  query = "INSERT INTO users (name, user_name) VALUES (%s, %s)"

  your_name = input("Enter Your Name : ")
  user_name = input("Enter User Name : ")

  ## storing values in a variable
  values = (your_name, user_name)

  ## executing the query with values
  cursor.execute(query, values)

  ## to make final output we have to run the 'commit()' method of the database object
  connection.commit()   #################################################### Commit will insert values, ommiting this statatement wont insert

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



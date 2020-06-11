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




'''
This code will only work with when user have privilege to create database.
 User sql9330081 on sql9.freemysqlhosting.net dont have privilege to create database so it will throw error
 However you can make it work when you connect with your local database as it got rights to create database 
'''


import mysql.connector as mysql
from mysql.connector import errorcode

try:
  connection = mysql.connect(host = "sql9.freemysqlhosting.net",
    user = "sql9330081",
    passwd = "ufWpidFbLg")

  ################################# More code goes here to work with database  #############
  cursor = connection.cursor()

  ## creating a databse called 'mySchool'
  ## 'execute()' method is used to compile a 'SQL' statement
  ## below statement is used to create tha 'mySchool' database
  cursor.execute("CREATE DATABASE mySchool")
  '''
  NOTE: If the database already exists you will get an error. Make sure that the database does not exist.
  '''





  '''
  Same code to show databases
  '''
  ## executing the statement using 'execute()' method
  cursor.execute("SHOW DATABASES")

  ## 'fetchall()' method fetches all the rows from the last executed statement
  databases = cursor.fetchall()  ## it returns a list of all databases present

  ## printing the list of databases
  print("printing the list of databases")
  print(databases)

  ## showing one by one database
  print("showing one by one database")
  for database in databases:
      print(database)


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



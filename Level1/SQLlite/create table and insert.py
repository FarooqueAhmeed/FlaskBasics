import sqlite3


conn=sqlite3.connect('Tables.db')

cursor=conn.cursor()


sql_statement="""
CREATE TABLE user(
   name varchar(35),
   age int,
   email varchar(80),
   gender varchar(10),
    id int auto increment,
   primary key(id)
);"""


# cursor.execute(sql_statement)


sql_statement="""INSERT INTO user(name,age,email,gender)
                 VALUES("Ssali Jonathan",12,"jodestrevin@gmail.com","Male");
                 """


cursor.execute(sql_statement)

conn.commit()

conn.close()
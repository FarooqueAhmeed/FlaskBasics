import sqlite3

conn=sqlite3.connect("Data.db")

cursor=conn.cursor()

cursor.execute(
    """
    CREATE TABLE student(
        id int,
        name varchar(25),
        age int,
        email vachar(45),
        gender varchar(10),
        primary key(id)
    );
    """
)


while True:
    print("WELCOME TO MY APPLICATION")
    name=input("ENTER YOUR NAME: ")


    age=int(input("enter your age: "))

    email=input("enter your Email: ")

    gender=input("Enter your Gender: ")

    cursor.execute(
        "INSERT INTO student (name,age,email,gender)VALUES(?,?,?,?)",(name,age,email,gender))
    

    conn.commit()

    cursor.execute("SELECT * FROM student;")

    answer=cursor.fetchall()

    for a in answer:
        print(a)



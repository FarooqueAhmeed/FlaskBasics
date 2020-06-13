import sqlite3

conn=sqlite3.connect('Tables.db')

cursor=conn.cursor()


cursor.execute("""
    SELECT * FROM user;
""")


answers=cursor.fetchall()

for a in answers:
    print(a)
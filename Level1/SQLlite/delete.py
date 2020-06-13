import sqlite3

conn=sqlite3.connect('Tables.db')

conn.execute("""
    DELETE FROM user WHERE email ="jodestrevin@gmail.com"
""")

conn.commit()

print(f"The number of items deleted: {conn.total_changes}")

cursor=conn.execute("SELECT * FROM user;")


for c in cursor:
    print(c)
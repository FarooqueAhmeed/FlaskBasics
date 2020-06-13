import sqlite3

conn=sqlite3.connect('Tables.db')

cursor=conn.cursor()


conn.execute(
    """
        UPDATE user SET name ="Kiggundu Jonathan" where email="jodestrevin@gmail.com"
    """
)

conn.commit()

print(f"Total number of changes occured: {conn.total_changes}")

cursor=conn.execute("SELECT * FROM user;")

for row in cursor:
    print(row)
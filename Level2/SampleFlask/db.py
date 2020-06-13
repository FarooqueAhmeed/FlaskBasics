import mysql.connector

import settings
from forms import get_column_name_for_form

database_connection_config = {
    "host": settings.DATABASE_HOST,
    "database": settings.DATABASE_NAME,
    "user": settings.DATABASE_USER,
    "password": settings.DATABASE_PASSWORD,
}

if settings.DATABASE_PASSWORD.strip() == "":
    database_connection_config.pop("password")

database = mysql.connector.connect(**database_connection_config)
db_cursor = database.cursor(buffered=True)


def reset_and_init_db():
    """Drop the database and recreate it again. Also creates the necessary tables and columns."""

    print("Resetting and initializing db, please wait...")

    # delete and recreate the tables
    for table in settings.TABLES:
        table_name = table.__name__  # form class name

        db_cursor.execute(f"DROP TABLE IF EXISTS {table_name};")
        db_cursor.execute(
            f"CREATE TABLE {table_name} (id INT AUTO_INCREMENT PRIMARY KEY, date DATE DEFAULT (CURRENT_DATE));"
        )

        # create the table columns using the fields defined in the form class
        table_columns = get_column_name_for_form(table)
        for column_name in table_columns:
            db_cursor.execute(
                f"ALTER TABLE {table_name} add {column_name} TEXT NULL DEFAULT NULL;"
            )
        database.commit()

    print("Completed successfully")


if __name__ == "__main__":
    # if this file is called from terminal, call this function
    reset_and_init_db()

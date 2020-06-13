from datetime import date

from flask import Flask, render_template, request, redirect

import settings
from db import db_cursor, database
from forms import get_column_name_for_form

app = Flask(__name__)
app.config.from_pyfile("settings.py")


def get_form_context_for_date(date_to_get):
    """Given a date, returns the form_context data for all the tables."""

    current_date_data = {}
    for table in settings.TABLES:
        table_name = table.__name__
        column_names = get_column_name_for_form(table)
        current_date_data[table_name] = {}
        # get current date data
        db_cursor.execute(
            f"SELECT {', '.join(column_names)} FROM {table_name} where date='{date_to_get}'"
        )
        column_values = db_cursor.fetchone()
        if column_values:
            # values are present arrange it in {col_name: col_value} format, to pass to form class
            for index in range(0, len(column_values)):
                current_date_data[table_name][column_names[index]] = column_values[
                    index
                ]
    form_context = {}
    for form_class in settings.TABLES:
        table_name = form_class.__name__
        form_context[table_name] = form_class(data=current_date_data[table_name])

    return form_context


@app.route("/")
@app.route("/create")
def create_view():
    """Renders the template with the form context."""

    today_date = date.today().strftime("%Y-%m-%d")
    form_context = get_form_context_for_date(today_date)
    return render_template("create.html", **form_context)


@app.route("/create-handler", methods=["POST"])
def create_submit_handler_view():
    """Handle the form submitted data from the `/create` view."""

    data = request.get_json()
    today_date = date.today().strftime("%Y-%m-%d")

    for form_name, form_values in data.items():

        db_cursor.execute(f"SELECT * from {form_name} where date='{today_date}';")

        if db_cursor.fetchone() is None:
            # no data is present for current date | insert
            column_names = form_values.keys()
            column_values = form_values.values()
            db_cursor.execute(
                f"INSERT INTO {form_name} ({', '.join(column_names)}) VALUES {tuple(column_values)};"
            )

        else:
            # data is present for current date | update
            for column_name, column_value in form_values.items():
                db_cursor.execute(
                    f"UPDATE {form_name} SET {column_name}='{column_value}' WHERE date='{today_date}'"
                )

    database.commit()
    return "success"


@app.route("/detail")
def detail_view():
    """Detail view with search operations."""

    filter_date = request.args.get("filter_date", None)

    if not filter_date:
        today_date = date.today().strftime("%Y-%m-%d")
        return redirect(f"/detail?filter_date={today_date}")

    form_context = get_form_context_for_date(request.args.get("filter_date"))
    return render_template("detail.html", **form_context)


if __name__ == "__main__":
    app.run()

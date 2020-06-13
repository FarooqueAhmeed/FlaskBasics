# fun-blog
A blog app built with an intension of having fun with Python and the Flask Framework

## How it works
- Users sign up to get an account
- They then log in to their accounts
- Users can view blog posts and comment on posts.
- Users can delete and edit posts
- Admins can manage all user accounts

## Built with
- Flask
- Flask-Login 
- Flask-SQLAlchemy
- Flask-WTF
- Boostrap 4
- MySQL Database

## To run,
 - `pip install -r requirements.txt`
 - `python3 app.py`
 
 ## To set up the database
 - `SQLALCHEMY_DATABASE_URI='mysql://<your_username>:<yourpassword>@localhost/<your_db>' in config.py
 - `export FLASKAPP=app.py` in the terminal
 - navigate to project dir, open terminal and issue: `flask db upgrade` command in the terminal 


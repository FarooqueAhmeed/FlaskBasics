import os

DATABASE = {
    "HOST": os.getenv("DB_HOST", "localhost"),
    "USER": os.getenv("DB_USER","root"),
    "PASSWORD": os.getenv("DB_PASS", "yaKhudaKhair"),
    "NAME": os.getenv("DB_NAME", "dashboard")
}
SECRET_KEY=os.getenv("SECRET_KEY", "ABCDEF")

UPLOAD_FOLDER = 'static/uploads'

# It is set here for the time being, to take the load of our servers
TRAIL_JS_CLIENT_URL = "https://sivagirivisakan.github.io/trail-app/trail-client.js"
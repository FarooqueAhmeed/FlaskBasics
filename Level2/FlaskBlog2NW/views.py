from app import app


@app.route('/')
def index():
    return "BLOG HOME"
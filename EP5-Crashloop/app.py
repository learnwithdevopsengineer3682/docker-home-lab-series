import os
from flask import Flask

APP_SECRET = os.environ["APP_SECRET"]

app = Flask(__name__)

@app.route("/")
def home():
    secret = os.environ["APP_SECRET"]  # will fail if not set
    return f"App is running! Secret = {secret}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

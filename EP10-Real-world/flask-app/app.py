import os
import psycopg2
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            host=os.environ["DB_HOST"],
            database=os.environ["DB_NAME"],
            user=os.environ["DB_USER"],
            password=os.environ["DB_PASS"]
        )
        cur = conn.cursor()
        message = "Hello from Real World Simulation. If you are new to my channel hit subscribe right now so you don't miss the next video"
        cur.execute("SELECT %s", (message,))
        conn.close()
        return message
    except Exception as e:
        return f"Error: {e}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

from flask import Flask
import psycopg2

app = Flask(__name__)

@app.route("/")
def home():
    try:
        conn = psycopg2.connect(
            host="flask-db",  # mistake
            database="flaskdb",
            user="flaskuser",
            password="flaskpass"
        )
        cur = conn.cursor()
        cur.execute("SELECT 'Hello from Flask + Postgres!'")
        message = cur.fetchone()[0]
        conn.close()
        return message
    except Exception as e:
        return f"Error: {e}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

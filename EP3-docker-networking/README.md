# EP3 — Docker Networking (Flask + Postgres)

Connect containers using a user-defined bridge network and container DNS names.

## Objectives
- Use a custom Docker network for service-to-service communication.
- Run Postgres and Flask containers and verify connectivity.
- Understand container DNS names and port publishing.

## Files
- `Dockerfile`, `app.py`, `requirements.txt` — Flask app attempts to connect to Postgres.
- Note: The app connects to host `flask-db` (see code). Name your DB container accordingly or adjust code.

## Quick Start
1. Create a bridge network:
   - `docker network create ep3net`
2. Run Postgres on that network (container name must match app expectation):
   - `docker run -d --name flask-db --network ep3net -e POSTGRES_USER=flaskuser -e POSTGRES_PASSWORD=flaskpass -e POSTGRES_DB=flaskdb postgres:14`
3. Build and run the Flask app on the same network:
   - `docker build -t ep3-flask .`
   - `docker run -d --name ep3 -p 5000:5000 --network ep3net ep3-flask`
4. Verify at http://localhost:5000

## Notes
- Container names on the same user-defined bridge network resolve via embedded DNS.
- Only publish ports you need to access from outside the Docker host.

## Next Steps
- Do `LABS.md` and check `LABS-ANSWERS.md`.
- Practice interview questions in `INTERVIEW.md`.


# EP10 — Real-World Stack (Flask, Postgres, Nginx, cAdvisor)

Run a small production-like stack with reverse proxy, database, and monitoring.

## Objectives
- Use Compose to orchestrate multiple services with env files and restart policies.
- Route traffic through Nginx to Flask.
- Persist Postgres data and monitor containers with cAdvisor.

## Files
- `docker-compose.yml` — Defines `app`, `db`, `nginx`, `cadvisor`.
- `flask-app/` — Flask app and Dockerfile (non-root user).
- `.env` — DB credentials and name used by Compose.
- `nginx.conf` — Reverse proxy configuration.

## Quick Start
1. Ensure `.env` contains `DB_USER`, `DB_PASS`, `DB_NAME`.
2. From `EP10-Real-world`, run: `docker compose up --build -d`
3. Visit:
   - App via Nginx: http://localhost
   - cAdvisor: http://localhost:8080
4. Tear down: `docker compose down`

## Notes
- `depends_on` sets start order but not readiness; consider healthchecks.
- Use named volumes for Postgres data durability (`dbdata`).

## Next Steps
- Work through `LABS.md` then validate with `LABS-ANSWERS.md`.
- Practice interview Q&A.


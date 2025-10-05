# EP6 — Docker Compose (Flask, Postgres, Nginx)

Define and run a multi-container application with Docker Compose.

## Objectives
- Orchestrate Flask, Postgres, and Nginx with a single `docker compose` command.
- Pass environment variables and wire up services via networks.
- Persist database data with a named volume.

## Files
- `docker-compose.yml` — Defines `web`, `db`, and `nginx` services.
- `flask-app/` — Python app and Dockerfile.
- `nginx.conf` — Reverse proxy to `web`.

## Quick Start
1. From `EP6-Docker-compose`, run: `docker compose up --build`
2. Visit http://localhost to reach Nginx → Flask.
3. Stop: `docker compose down` (use `-v` to remove volumes if desired).

## Notes
- The Postgres data volume path should be `/var/lib/postgresql/data`. Typos will prevent persistence.
- Compose creates a project network; service names resolve via DNS.

## Next Steps
- Complete `LABS.md` and consult `LABS-ANSWERS.md`.
- Review interview Q&A.


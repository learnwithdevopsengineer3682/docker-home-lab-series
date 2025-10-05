# EP2 — Dockerizing a Flask App

Containerize a minimal Flask application and run it locally using Docker.

## Objectives
- Understand the `Dockerfile` for a Python/Flask app.
- Build an image and run it mapping container port 5000 to your host.
- Use `.dockerignore` to keep images small and builds fast.

## Files
- `Dockerfile` — Python 3.10 slim, installs requirements, runs `app.py`.
- `app.py` — Minimal Flask server (`/` returns a greeting).
- `requirements.txt` — Python dependencies.
- `.dockerignore` (empty) — Add patterns to exclude unnecessary files.
- `.env` (empty) — Placeholder for environment variables if needed.

## Quick Start
1. Build the image:
   - `docker build -t ep2-flask .`
2. Run the container:
   - `docker run -d --name ep2 -p 5000:5000 ep2-flask`
3. Verify:
   - Visit http://localhost:5000
   - `docker logs ep2`

## Key Notes
- `EXPOSE 5000` documents the intended container port; publishing requires `-p`.
- Use `.dockerignore` to exclude `__pycache__/`, `*.pyc`, `.git/`, large test data, etc.
- Tag images meaningfully (e.g., `ep2-flask:1.0`).

## Next Steps
- Complete `LABS.md` then consult `LABS-ANSWERS.md`.
- Practice explaining this `Dockerfile` using `INTERVIEW.md` and `INTERVIEW-ANSWERS.md`.


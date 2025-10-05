# EP5 — Crash Loops and Configuration

Explore how missing configuration and environment variables cause containers to crash, and how to fix and prevent crash loops.

## Objectives
- Reproduce a crash caused by missing `APP_SECRET`.
- Inspect logs and exit codes.
- Apply fixes using environment variables and restart policies.

## Files
- `Dockerfile`, `app.py`, `requirements.txt` — Flask app expects `APP_SECRET` to be set.

## Quick Start
1. Build: `docker build -t ep5-flask .`
2. Run without the env var (expected to crash): `docker run --name ep5 -p 5000:5000 ep5-flask`
3. Inspect logs: `docker logs ep5` (KeyError on `APP_SECRET`)
4. Fix by providing the env var: `docker rm -f ep5 && docker run -d --name ep5 -e APP_SECRET=supersecret -p 5000:5000 ep5-flask`

## Next Steps
- Labs in `LABS.md` with answers in `LABS-ANSWERS.md`.
- Interview prep in `INTERVIEW.md` and `INTERVIEW-ANSWERS.md`.


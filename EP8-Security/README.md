# EP8 — Container Security Basics

Harden container images and runtime: run as non-root, least privileges, smaller bases, and sensible port exposure.

## Objectives
- Build and run the Flask app with a non-root user.
- Practice runtime hardening flags.
- Understand port exposure implications.

## Files
- `Dockerfile`, `Dockerfilev2`, `Dockerfilev3` — Variations on `USER`, `EXPOSE` ports (5000/80/8080).
- `app.py`, `requirements.txt` — Sample app.

## Quick Start
1. Build: `docker build -t ep8-flask -f Dockerfile .`
2. Run as non-root: `docker run -d --name ep8 -p 5000:5000 ep8-flask`
3. Harden runtime (examples):
   - Drop capabilities: `--cap-drop=ALL --cap-add=NET_BIND_SERVICE`
   - Read-only rootfs: `--read-only -v ep8-tmp:/tmp`
   - No new privileges: `--security-opt no-new-privileges`

## Next Steps
- Try `Dockerfilev2`/`v3` with different exposed ports; adjust `-p` accordingly.
- Do the labs and interview prep.


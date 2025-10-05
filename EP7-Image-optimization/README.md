# EP7 — Docker Image Optimization

Contrast a bloated Dockerfile with an optimized multi-stage build to reduce size and attack surface.

## Objectives
- Identify anti-patterns that bloat images.
- Use multi-stage builds to separate build-time and run-time dependencies.
- Leverage `.dockerignore` and cache-friendly layering.

## Files
- `Dockerfilebloated` — Demonstrates common pitfalls (excess tools, no `.dockerignore`, broad packages).
- `Dockerfileoptimized` — Multi-stage build on `python:3.10-slim` with targeted dependencies.
- `.dockerignore` — Add entries to shrink build context.

## Quick Start
1. Build both images:
   - `docker build -f Dockerfilebloated -t ep7-bloated .`
   - `docker build -f Dockerfileoptimized -t ep7-optimized .`
2. Compare sizes and layers:
   - `docker images | findstr ep7-`
   - `docker history ep7-bloated`
   - `docker history ep7-optimized`

## Next Steps
- Complete labs (`LABS.md`) and review answers.
- Practice interview Q&A.


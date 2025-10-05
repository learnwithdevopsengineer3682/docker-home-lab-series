# EP9 — CI/CD: Build and Push with GitHub Actions

Automate Docker image builds and pushes using GitHub Actions.

## Objectives
- Understand the provided workflow that builds and pushes to Docker Hub on `main`.
- Configure repository secrets.
- Extend the workflow with tags and caching.

## Files
- `.github/workflows/docker.yml` (inside `EP9-CICD/EP9-CICD/`) — GitHub Actions workflow.
- `Dockerfile`, `app.py`, `requirements.txt` — Sample application.

## Quick Start
1. Fork the repo and enable Actions.
2. Add repository secrets:
   - `DOCKER_USERNAME`
   - `DOCKER_PASSWORD`
3. Push a commit to `main` to trigger build and push to `docker.io/<username>/flask-app:latest`.

## Enhancements (suggestions)
- Add `workflow_dispatch` to trigger on-demand.
- Tag images with Git SHA and branch names.
- Use Buildx and registry cache to speed builds.

## Next Steps
- Follow `LABS.md` and check `LABS-ANSWERS.md`.
- Review interview Q&A.


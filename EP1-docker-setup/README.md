# EP1 — Docker Setup and Basics

Learn how to install Docker, run your first containers, and get familiar with essential CLI commands.

## Objectives
- Install Docker Desktop and CLI.
- Run your first containers and understand images vs containers.
- Practice core commands: build, run, ps, logs, exec, stop, rm, rmi.

## Prerequisites
- Windows/macOS/Linux with admin rights.
- Internet access to pull images from Docker Hub.

## Quick Start
1. Verify installation:
   - `docker version`
   - `docker info`
2. Hello World:
   - `docker run --rm hello-world`
3. Run a shell in a small image:
   - Linux/macOS: `docker run --rm -it alpine:3.19 sh`
   - Windows PowerShell: `docker run --rm -it mcr.microsoft.com/powershell pwsh`

## Key Concepts
- Image: read-only filesystem (layers) used to instantiate containers.
- Container: a running process with an isolated filesystem, network, PID namespace, etc.
- Registry: a service that stores images (Docker Hub, GHCR, ECR, etc.).
- Tag: a mutable label for an image (e.g., `nginx:1.25-alpine`).

## Key Commands
- Inspect environment: `docker version`, `docker info`
- Images: `docker pull`, `docker images`, `docker image rm`
- Containers: `docker run`, `docker ps -a`, `docker logs`, `docker exec -it`, `docker stop`, `docker rm`

## Next Steps
- Do the labs in `LABS.md` then check `LABS-ANSWERS.md`.
- Review interview prep in `INTERVIEW.md` and `INTERVIEW-ANSWERS.md`.


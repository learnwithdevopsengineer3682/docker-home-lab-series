# Docker Full Course — 10 Episodes with Labs and Interview Q&A  

[![License: CC BY-NC 4.0](https://img.shields.io/badge/License-CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/)
[![Commercial Use](https://img.shields.io/badge/Commercial%20Use-Contact%20Us-blue.svg)](mailto:learnwithdevopsengineer07@gmail.com)
[![YouTube](https://img.shields.io/badge/YouTube-Learn%20With%20DevOps%20Engineer-red.svg)](https://www.youtube.com/@learnwithdevopsengineer)
[![Newsletter](https://img.shields.io/badge/Newsletter-Subscribe%20Free-orange.svg)](https://learnwithdevopsengineer.beehiiv.com/subscribe)

---

This repository contains a 10-episode, hands-on Docker course with practical labs and interview preparation. Every episode directory includes:
- `README.md` (overview, objectives, quick start)
- `LABS.md` (exercises to practice)
- `LABS-ANSWERS.md` (solutions)
- `INTERVIEW.md` (questions)
- `INTERVIEW-ANSWERS.md` (answers)

Stay in the loop and get new labs + answers and interview content:
- Newsletter (free): https://learnwithdevopsengineer.beehiiv.com/subscribe
- YouTube channel: https://www.youtube.com/@learnwithdevopsengineer

---

## Episodes Overview

1) **Episode 1 — Docker Setup and Basics**
- Folder: `EP1-docker-setup`
- Video: https://youtu.be/yAx17O6lHbw
- Highlights: Install Docker, run first containers, images vs containers, core CLI (`run`, `ps`, `logs`, `exec`, `stop`, `rm`). Includes a bind-mount lab.
- Labs & Q&A: `EP1-docker-setup/LABS.md`, `EP1-docker-setup/LABS-ANSWERS.md`, `EP1-docker-setup/INTERVIEW.md`, `EP1-docker-setup/INTERVIEW-ANSWERS.md`

2) **Episode 2 — Dockerizing a Flask App**
- Folder: `EP2-docker-flask`
- Video: https://youtu.be/PaUmQzT0ocs
- Highlights: Build a minimal Flask image (Python slim), `.dockerignore` best practices, port mapping, image tagging.
- Labs & Q&A: `EP2-docker-flask/LABS.md`, `EP2-docker-flask/LABS-ANSWERS.md`, `EP2-docker-flask/INTERVIEW.md`, `EP2-docker-flask/INTERVIEW-ANSWERS.md`

3) **Episode 3 — Docker Networking (Flask + Postgres)**
- Folder: `EP3-docker-networking`
- Video: https://youtu.be/DPhumZerj8Y
- Highlights: User-defined bridge networks, container DNS names, when to publish ports, debugging connectivity.
- Labs & Q&A: `EP3-docker-networking/LABS.md`, `EP3-docker-networking/LABS-ANSWERS.md`, `EP3-docker-networking/INTERVIEW.md`, `EP3-docker-networking/INTERVIEW-ANSWERS.md`

4) **Episode 4 — Persistent Volumes**
- Folder: `EP4-Persistent-Volumes`
- Video: https://youtu.be/V2HumY93lrM
- Highlights: Ephemeral container storage vs persistence, named volumes, bind mounts, common pitfalls. See `EP4-Persistent-Volumes/commands.sh` for a walkthrough.
- Labs & Q&A: `EP4-Persistent-Volumes/LABS.md`, `EP4-Persistent-Volumes/LABS-ANSWERS.md`, `EP4-Persistent-Volumes/INTERVIEW.md`, `EP4-Persistent-Volumes/INTERVIEW-ANSWERS.md`

5) **Episode 5 — Crash Loops and Configuration**
- Folder: `EP5-Crashloop`
- Video: https://youtu.be/V2HumY93lrM
- Highlights: Reproduce/fix crashes due to missing env vars, restart policies, healthchecks, secure configuration and secrets.
- Labs & Q&A: `EP5-Crashloop/LABS.md`, `EP5-Crashloop/LABS-ANSWERS.md`, `EP5-Crashloop/INTERVIEW.md`, `EP5-Crashloop/INTERVIEW-ANSWERS.md`

6) **Episode 6 — Docker Compose (Flask, Postgres, Nginx)**
- Folder: `EP6-Docker-compose`
- Video: https://youtu.be/ErXm01G3sCc
- Highlights: Define/run multi-container apps, service networking, environment variables, volumes, healthchecks, scaling.
- Labs & Q&A: `EP6-Docker-compose/LABS.md`, `EP6-Docker-compose/LABS-ANSWERS.md`, `EP6-Docker-compose/INTERVIEW.md`, `EP6-Docker-compose/INTERVIEW-ANSWERS.md`

7) **Episode 7 — Docker Image Optimization**
- Folder: `EP7-Image-optimization`
- Video: https://youtu.be/HBoOJgwA4Co
- Highlights: Anti-patterns (bloated images), multi-stage builds, cache-friendly layering, `.dockerignore`, base image trade-offs.
- Labs & Q&A: `EP7-Image-optimization/LABS.md`, `EP7-Image-optimization/LABS-ANSWERS.md`, `EP7-Image-optimization/INTERVIEW.md`, `EP7-Image-optimization/INTERVIEW-ANSWERS.md`

8) **Episode 8 — Container Security Basics**
- Folder: `EP8-Security`
- Video: https://youtu.be/klbgi1d1UpY
- Highlights: Non-root users, dropping capabilities, read-only rootfs, minimizing exposure and image surface area.
- Labs & Q&A: `EP8-Security/LABS.md`, `EP8-Security/LABS-ANSWERS.md`, `EP8-Security/INTERVIEW.md`, `EP8-Security/INTERVIEW-ANSWERS.md`

9) **Episode 9 — CI/CD with GitHub Actions (Build and Push)**
- Folder: `EP9-CICD`
- Video: https://youtu.be/uTMAaF_yLfM
- Highlights: Build and push to Docker Hub on `main`. Workflow lives at `EP9-CICD/.github/workflows/docker.yml`. Secrets required: `DOCKER_USERNAME`, `DOCKER_PASSWORD`.
- Labs & Q&A: `EP9-CICD/LABS.md`, `EP9-CICD/LABS-ANSWERS.md`, `EP9-CICD/INTERVIEW.md`, `EP9-CICD/INTERVIEW-ANSWERS.md`

10) **Episode 10 — Real-World Stack (Flask, Postgres, Nginx, cAdvisor)**
- Folder: `EP10-Real-world`
- Video: https://youtu.be/nWiy6eaS5FU
- Highlights: Production-like stack with reverse proxy, DB persistence, env files, restart policies, basic monitoring via cAdvisor.
- Labs & Q&A: `EP10-Real-world/LABS.md`, `EP10-Real-world/LABS-ANSWERS.md`, `EP10-Real-world/INTERVIEW.md`, `EP10-Real-world/INTERVIEW-ANSWERS.md`

---

## Getting Started
- Pick an episode folder and follow its `README.md` for setup.
- Do the exercises in `LABS.md`; check your work with `LABS-ANSWERS.md`.
- Practice interview topics via `INTERVIEW.md` and `INTERVIEW-ANSWERS.md`.

---

## 🧾 License & Usage

This repository is licensed under the **Creative Commons Attribution-NonCommercial 4.0 International License (CC BY-NC 4.0)**.

You are free to:
- ✅ Use, modify, and share this project for **personal learning or educational purposes**.
- 🚫 **Not allowed** to use it for **commercial, paid, or monetized** activities without prior permission.

For commercial usage — including paid courses, internal company training, consulting, or resale —  
please contact **[learnwithdevopsengineer07@gmail.com](mailto:learnwithdevopsengineer07@gmail.com)** to obtain a commercial license.  
See [`COMMERCIAL_LICENSE.txt`](./COMMERCIAL_LICENSE.txt) for details.

**Attribution Example:**
```text
Source: Learn With DevOps Engineer – Docker Home Lab Series
https://github.com/learnwithdevopsengineer3682/docker-home-lab
Licensed under CC BY-NC 4.0

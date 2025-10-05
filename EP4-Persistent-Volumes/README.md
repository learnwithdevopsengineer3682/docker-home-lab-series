## EP4 — Persistent Volumes

Persist stateful data beyond container lifecycle using Docker volumes and bind mounts.

## Objectives
- Understand ephemeral container filesystems vs persistent storage.
- Use named volumes for Postgres data durability.
- Avoid common pitfalls with incorrect mount paths and permissions.

## Reference
- See `commands.sh` for a runnable walkthrough showing data loss without volumes and persistence with volumes.

## Quick Start
1. Run Postgres without a volume; insert data; remove container; observe data loss.
2. Create a named volume (`docker volume create pgdata`).
3. Run Postgres with `-v pgdata:/var/lib/postgresql/data`; insert data; remove container; recreate; verify data persists.

## Next Steps
- Complete `LABS.md` and validate with `LABS-ANSWERS.md`.
- Prepare for interviews with `INTERVIEW.md` and `INTERVIEW-ANSWERS.md`.

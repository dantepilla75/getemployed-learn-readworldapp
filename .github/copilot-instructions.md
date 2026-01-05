# copilot-instructions for getemployed-learn-readworldapp

This file tells AI coding agents how to be productive in this repository. Keep changes minimal and only modify files that are necessary to achieve a requested task.

1. Repository snapshot
- Repo: getemployed-learn-readworldapp
- Current branch: `main`
- Top-level files: `README.md` (project currently contains only a title)

2. Big-picture guidance
- The repository currently has no source code beyond `README.md`; first tasks are discovery and lightweight scaffolding rather than feature work. Before implementing features, enumerate which platform (Node, Python, mobile, etc.) the user expects — do not assume.

3. Priorities for an AI agent
- If asked to "add a feature": (a) confirm the target language/framework; (b) propose a minimal runnable scaffold (package manifest + small entrypoint + README update); (c) create a branch and a single focused PR.  
- If asked to "fix tests/build": locate test/config files; if none exist, report that tests are absent and offer to add a simple test harness.

4. Files and locations to reference
- Project overview: `README.md`.
- New CI/automation should live under `.github/workflows/`.
- Agent instructions live at `.github/copilot-instructions.md` (this file).

5. Conventions and patterns to follow in this repo
- Small, atomic commits with descriptive messages (prefix with `feat:`, `fix:`, `chore:`).  
- Keep new scaffold code minimal and documented in `README.md` so humans can verify quickly.

6. Integration points & external dependencies
- No external integrations or dependency files are present. If adding dependencies, include a lockfile (`package-lock.json`, `poetry.lock`, etc.) and update `README.md` with setup commands.

7. When merging/creating PRs
- Open a descriptive PR against `main`. Include a short test or manual verification steps in the PR description. If you added scaffolding, include `How to run` commands in `README.md`.

8. When you are uncertain
- Ask clarifying questions before making large assumptions (framework, runtime, language, hosting). Provide 2–3 scaffold options if the user does not respond.

9. Examples (small, concrete)
- If asked to create a Node starter: add `package.json` with `npm run start`, a `src/index.js` that prints "hello", and update `README.md` with run steps.
- If asked to create a Python starter: add `pyproject.toml` or `requirements.txt`, `src/__main__.py`, and update `README.md` with `python -m src` usage.

10. Deliverables checklist for common requests
- New feature: source + tests + README snippet + PR.
- Scaffold project: manifest + minimal entrypoint + README + PR.
- Fix bug: failing test (if present) + code fix + regression test + PR.

If anything here is unclear or you want me to prefer a particular stack (Node/Python/other), tell me and I'll update these instructions and implement the chosen scaffold.

# Agent Instructions

This repository is a modern Python template. When making changes, prefer the repository's modern Python workflow over legacy Python tooling.

## Preferred Workflow

- Use `uv` for dependency management and environment execution.
- Use `ruff` for linting and formatting.
- Use `ty` for type checking.
- Use `pytest` for testing.
- Use `uv audit` for dependency vulnerability checks.
- Use `prek` for repository hooks and pre-commit-style checks.

## Dependency Management Rules

- Add and remove Python dependencies with `uv add` and `uv remove`.
- Do not use `pip install`, `uv pip install`, `requirements.txt`, Poetry, Pipenv, or manual virtualenv activation for normal project work.
- Keep development-only tools in `[dependency-groups]` in `pyproject.toml`, not in `[project.optional-dependencies]`.
- Commit `uv.lock` when dependency changes are made.

## Project Layout

- Source code lives in `src/`.
- Tests live in `tests/`.
- Tool configuration should stay centralized in `pyproject.toml` when practical.

## Build and Run Commands

- Sync dependencies: `uv sync --all-groups`
- Run the package: `uv run pytemplate`
- Format code: `uv run ruff format .`
- Lint code: `uv run ruff check .`
- Type check: `uv run ty check src tests`
- Test: `uv run pytest`
- Audit dependencies: `uv audit --locked`

## Editing Guidance

- Prefer `uv_build` as the build backend for this template.
- Prefer `src/` layout for packages.
- Avoid introducing legacy tool configuration such as `setup.py`, `setup.cfg`, `.flake8`, `mypy.ini`, or a standalone `ruff.toml` unless there is a strong repo-specific reason.
- If adding documentation or examples, keep them aligned with the commands above.

## If Your Environment Supports Skills

- If an agent/runtime supports reusable skills or slash-commands, prefer the `modern-python` skill for changes in this repository.
- If that skill is unavailable, follow the instructions in this file as the fallback source of truth.

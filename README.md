# pytemplate

This is a Python 3.14 package template called `pytemplate`. The project uses `uv` for dependency management, `ruff` for linting and formatting, `ty` for type checking, `pytest` with coverage for tests, `prek` for repository checks, `uv audit` for dependency vulnerability scanning, and Sphinx for docs.

The extremely fast Python package and project manager, [uv](https://docs.astral.sh/uv/#getting-started), is required.

<details>

<summary>Project Structure</summary>

## Project Structure

The source code lives in `src/pytemplate`, and the tests live in `tests`.

Project configuration is centralized in `pyproject.toml`.

The project includes Docker with a `Dockerfile` in the repository root.

The project includes `ty` for static type checking, `typos` for spell checking, `ruff` for linting and formatting, and `prek` for repository checks before commits and in CI. Tool configuration lives in `pyproject.toml` and `.pre-commit-config.yaml`.

The project includes Sphinx documentation in `docs`.

The project includes GitHub Actions CI in `.github/workflows/python-app.yml`.

</details>

## Template Setup

- Replace all mentions of `pytemplate` with your package name.
- Rename `src/pytemplate` to your package name and update imports in `tests/`.
- Update package metadata in `pyproject.toml`, including name, description, authors, and repository URL.
- Update the console script name in `pyproject.toml` if you do not want to keep `pytemplate`.
- Update Sphinx metadata in `docs/source/conf.py`, then run `make docs`.
- Review `.github/workflows/python-app.yml` and align it with your intended CI triggers and install commands.
- Agentic coding tools should follow the repository guidance in `AGENTS.md`.

## Installation

Install dependencies and tooling with:

```sh
uv sync --all-groups
uv run prek install
```

The package also exposes a console entry point:

```sh
uv run pytemplate
```

See `Makefile` for the common workflows.

## Testing

Use `make test` or `uv run pytest`.

## Linting and Type Checking

Use `make lint` to run `ruff`, `ty`, and `prek`.

## Dependency Audit

Use `make audit` or `uv audit --locked` to scan locked dependencies for known vulnerabilities. The template also configures uv with a 7-day dependency cooldown so routine dependency resolution avoids newly uploaded packages while the package ecosystem has time to discover and report supply-chain compromises.

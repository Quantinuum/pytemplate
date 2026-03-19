# pytemplate

This is a Python 3.14 package template called `pytemplate`. The project uses `uv` for dependency management, `ruff` for linting and formatting, `ty` for type checking, `pytest` with coverage for tests, `prek` for repository checks, and Sphinx for docs.

The extremely fast Python package and project manager, [uv](https://docs.astral.sh/uv/#getting-started), is required.

<details>

<summary>Project Structure</summary>

## Project Structure

The source code lives in `src/pytemplate`, and the tests live in `tests`.

Project configuration is centralized in `pyproject.toml`.

The project includes Docker with a `Dockerfile` in the repository root.

The project includes `ty` for static type checking, `typos` for spell checking, `ruff` for linting and formatting, and `prek` for repository checks before commits and in CI. Tool configuration lives in `pyproject.toml` and `.pre-commit-config.yaml`.

The project includes Sphinx documentation in `docs`.

The project is ready to be extended with CI automation.

</details>

## Usage Notes

- Replace all mentions of `pytemplate` with your package name.
- Update the metadata in `pyproject.toml` before publishing.
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

Use `make audit` or `uv run pip-audit` to scan the environment for known vulnerable packages.

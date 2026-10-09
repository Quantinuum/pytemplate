# pytemplate

This is a Python package template called `pytemplate`, supporting Python 3.12+ with Python 3.15 as the default. The project uses `uv` for dependency management, `ruff` for linting and formatting, `ty` for type checking, `pytest` with coverage for tests, `prek` for repository checks, `uv audit` for dependency vulnerability scanning, and Sphinx for docs.

The extremely fast Python package and project manager, [uv](https://docs.astral.sh/uv/#getting-started), is required.

## Python Support

Python 3.15 is the default development interpreter in `.python-version` and Docker. The package minimum is Python 3.12; CI checks CPython 3.12, 3.13, 3.14, and 3.15 with tests, linting, type checking, documentation builds, and package builds. Ruff and ty target Python 3.12 so code remains compatible with the minimum.

The package has no runtime dependencies. Review the support policy and dependency constraints when adapting this template for downstream users.

To use an older supported Python version, pin it and sync the environment:

```sh
uv python pin 3.12
uv sync --locked --all-groups
uv run pytest
uv run prek run --all-files
```

This updates `.python-version`; no dependency or tool configuration edits are needed to switch between Python 3.12 and 3.15. prek selects an available Python interpreter for its hooks, without requiring Python 3.15, and Refurb also targets Python 3.12 code. For a one-off check without changing the default, use `uv run --python 3.12 pytest`.

Docker uses the `PYTHON_VERSION` build argument:

```sh
docker build --build-arg PYTHON_VERSION=3.12 -t pytemplate:python312 .
```

Python 3.15.0 was [released on October 9, 2026](https://www.python.org/downloads/release/python-3150/). Until uv ships its updated interpreter catalog, `pyproject.toml` uses a pinned upstream catalog. Docker installs the selected managed Python version from the uv image. Remove the catalog override once uv includes the final release.

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

Use `make audit` or `uv audit --locked` to scan locked dependencies for known vulnerabilities.

If you want an extra supply-chain safeguard, consider enabling `uv`'s `exclude-newer` setting to avoid resolving to very recently uploaded packages until the ecosystem has had time to surface compromises or bad releases. This template leaves that policy disabled by default, but includes a commented example in `pyproject.toml`.

.PHONY: dev format lint test audit docs clean build

dev:
	uv sync --all-groups

format:
	uv run ruff format .

lint:
	uv run ruff format --check .
	uv run ruff check .
	uv run ty check src tests
	uv run prek run --all-files

test:
	uv run pytest

audit:
	uv audit --locked

docs:
	uv run sphinx-apidoc -f -o docs/source/ src/pytemplate
	uv run sphinx-build -M html docs/source/ docs/build/

clean:
	rm -rf *.egg-info .coverage .pytest_cache .ruff_cache .ty dist build docs/build

build: clean
	uv build

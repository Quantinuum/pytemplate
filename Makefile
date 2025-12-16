.PHONY: install dev tests lint docs clean build

install:
	uv pip install .

dev:
	uv pip install -e .

tests:
	uv run pytest .

lint:
	uv run prek run --all-files

docs:
	uv run sphinx-apidoc -f -o docs/source/ pytemplate
	uv run sphinx-build -M html docs/source/ docs/build/

clean:
	rm -rf *.egg-info dist build docs/build

build: clean
	uv build

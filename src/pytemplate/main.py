"""Entrypoint helpers for the pytemplate package."""


def hello_world() -> str:
    """Return a greeting string for the template package."""
    return "Hello, World!"


def main() -> None:
    """Run the package's console entry point."""
    print(hello_world())


if __name__ == "__main__":
    main()

"""Tests for pytemplate.main."""

from typing import TYPE_CHECKING

from pytemplate.main import hello_world, main

if TYPE_CHECKING:
    from _pytest.capture import CaptureFixture


def test_hello_world() -> None:
    """Return the expected greeting."""
    assert hello_world() == "Hello, World!"


def test_main(capsys: CaptureFixture[str]) -> None:
    """Write the greeting to stdout."""
    main()
    captured = capsys.readouterr()
    assert captured.out == "Hello, World!\n"

pytemplate
==========

Demo Sphinx site for the `CQCL pytemplate <https://github.com/CQCL/pytemplate>`_ project.

Python 3.12 or newer is supported, with Python 3.15 as the default.
CI checks CPython 3.12 through 3.15. To select an older supported interpreter,
run ``uv python pin 3.12`` before syncing dependencies.

----

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   modules

Installation
------------

From the repository checkout, install dependencies and tooling with:

.. code-block:: bash

   uv sync --all-groups

Usage
-----

To use pytemplate, import the main module:

.. code-block:: python

   from pytemplate import main

   main.main()

Utils
-----

The utils module contains various utility functions that can be used in conjunction with pytemplate. To use the utils module, import it like so:

.. code-block:: python

   from pytemplate import utils

   utils.add_numbers(2, 3)


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

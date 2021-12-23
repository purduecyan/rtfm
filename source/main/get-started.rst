Getting Started
===============

.. seealso::

   Part of the following information is reproduced from *Read the Docs* |get_started|

   .. |get_started| raw:: html

      <a target="_blank" href="https://docs.readthedocs.io/en/stable/intro/getting-started-with-sphinx.html">Getting Started with Sphinx</a>

.. meta::
   :description lang=en: Get started writing technical documentation with Sphinx.

Sphinx is a powerful documentation generator that
has many great features for writing technical documentation including:

* Generate web pages, printable PDFs, documents for e-readers (ePub),
  and more all from the same sources
* You can use reStructuredText or Markdown to write documentation
* An extensive system of cross-referencing code and documentation
* Syntax highlighted code samples
* A vibrant ecosystem of first and third-party extensions

If you want to learn more about how to create your first Sphinx project, read on.

Quick start
-----------

Assuming you have Python already:

.. prompt:: bash $

    pip install sphinx

Create a directory inside your project to hold your docs:

.. prompt:: bash $

    cd /path/to/project
    mkdir docs

Run ``sphinx-quickstart`` in there:

.. prompt:: bash $

    cd docs
    sphinx-quickstart

This quick start will walk you through creating the basic configuration; in most cases, you
can just accept the defaults. When it's done, you'll have an ``index.rst``, a
``conf.py`` and some other files. Add these to revision control.

Now, edit your ``index.rst`` and add some information about your project.
Include as much detail as you like. Build them to see how they look:

.. prompt:: bash $

    make html

Your ``index.rst`` has been built into ``index.html``
in your documentation output directory (typically ``_build/html/index.html``).
Open this file in your web browser to see your docs.


Building this documentation
---------------------------

To access this documentation offline, install the following python packages. We recommend using a python virtual
environment (i.e., *venv*).

.. prompt:: bash $

    pip install sphinx
    pip install sphinx-prompt
    pip install sphinx-rtd-theme

Clone the CYAN Lab documentation repository in your project directory to hold your docs:

.. prompt:: bash $

    cd /path/to/project
    git clone https://github.com/purduecyan/rtfm
    cd rtfm
    make html

The documentation will be built into your ``build/html/`` directory.
Open the ``index.html`` file in your web browser to see your docs.



External resources
------------------

Here are some external resources to help you learn more about Sphinx.

* |Sphinx documentation|
* |An introduction to Sphinx and Read the Docs for technical writers|

.. |Sphinx documentation| raw:: html

   <a target="_blank" href="https://www.sphinx-doc.org/">Sphinx documentation</a>

.. |An introduction to Sphinx and Read the Docs for technical writers| raw:: html

   <a target="_blank" href="https://www.ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/">An introduction to Sphinx and Read the Docs for technical writers</a>  

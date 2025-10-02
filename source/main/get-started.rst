Getting Started
===============

.. seealso::

   Part of the following information is reproduced from *Read the Docs* `Getting Started with Sphinx`_

   .. _Getting Started with Sphinx: https://docs.readthedocs.io/en/stable/intro/getting-started-with-sphinx.html

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

.. prompt:: console

    $ pip install sphinx

Create a directory inside your project to hold your docs:

.. prompt:: console

    $ cd /path/to/project
    $ mkdir docs

Run ``sphinx-quickstart`` in there:

.. prompt:: console

    $ cd docs
    $ sphinx-quickstart

This quick start will walk you through creating the basic configuration; in most cases, you
can just accept the defaults. When it's done, you'll have an ``index.rst``, a
``conf.py`` and some other files. Add these to revision control.

Now, edit your ``index.rst`` and add some information about your project.
Include as much detail as you like. Build them to see how they look:

.. prompt:: console

    $ make html

Your ``index.rst`` has been built into ``index.html``
in your documentation output directory (typically ``_build/html/index.html``).
Open this file in your web browser to see your docs.


Building Docsy
--------------

Assuming you have Python 3.13 (or newer), pip and virtual environment support installed, clone this repository:

.. prompt:: console

    $ git clone https://github.com/purduecyan/docsy
    $ cd docsy


Create a python virtual environment and install the package:
    
.. prompt:: console

    $ python3 -m venv .venv
    $ source .venv/bin/activate
    $ pip install .


This will install Sphinx and some other useful packages. You can now build the documentation
for this project by running:

.. prompt:: console

    $ cd docs
    $ make html


The documentation will be built into your ``build/html/`` directory.
Open the ``index.html`` file in your web browser to see your docs.


.. warning::

   For Python versions older than 3.13, you may encounter compatibility issues with some dependencies. You can install all deplendencies manually using:

    .. prompt:: console
    
         $ pip install sphinx sphinx-autoapi sphinx-code-tabs sphinx-copybutton sphinx-design sphinx-git sphinx-prompt sphinx-rtd-theme sphinxcontrib-jquery



Adding New Content
------------------

To add new content to your documentation, create a new reStructuredText file in the ``source/main`` folder. For example, to add a new page called "foo", create a file named ``foo.rst`` in the ``source/main`` folder. 

.. prompt:: console

    $ cd source/main
    $ touch foo.rst

Popoulate this new file with your content using reStructuredText syntax. As an example, you can start with:

.. prompt:: console

    Foo
    ===

    This is the foo page.

Then, add a reference to this new file in the ``index.rst`` file located in the ``source`` folder. You can do this by adding a line like the following under the appropriate section:

.. prompt:: console

    .. toctree::
       :maxdepth: 2
       :caption: Contents:
        
       main/foo

Make sure to adjust the indentation to match the existing entries in the toctree. Finally, rebuild your documentation to see the changes:

.. prompt:: console

    $ cd ..
    $ make html


The html documentation for your new page will be generated in the ``build/html`` directory. Open the ``index.html`` file in your web browser to see your updated docs.


Updating Git Submodules
-----------------------

To update all git submodule repositories in the source folder:

.. prompt:: console

    $ cd source
    $ git submodule update --remote


Next, add, commit and push the files to remote for changes to take effect.


External resources
------------------

Here are some external resources to help you learn more about Sphinx.

* `Sphinx Cheat Sheet`_
* `Sphinx reStructuredText Primer`_
* `Sphinx documentation`_
* `An introduction to Sphinx and Read the Docs for technical writers`_


.. _Sphinx Cheat Sheet: https://sphinx-tutorial.readthedocs.io/cheatsheet/

.. _Sphinx reStructuredText Primer: https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html

.. _Sphinx documentation: https://www.sphinx-doc.org/

.. _An introduction to Sphinx and Read the Docs for technical writers: https://www.ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/
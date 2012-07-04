########################
Vocab-Express Style Guide
########################

******************
Setup Instructions
******************

The Vocab Express (VE) style guide uses Sphinx to manage the documentation and
output to various formats. Pages are written in human-readable
`ReStructured Text <http://sphinx.pocoo.org/rest.html>`_ format.

Prerequisites
=============

Sphinx requires Python, which is already installed if you are running OS X.
You can confirm in a Terminal window by executing the ``python`` command
without any parameters.  It should load up and tell you which version you have
installed.  If you're not on 2.7+, go ahead and install 2.7.2 from
http://python.org/download/releases/2.7.2/

Installation
============

1. Install `easy_install <http://peak.telecommunity.com/DevCenter/EasyInstall#installing-easy-install>`_
2. ``easy_install sphinx``
3. ``easy_install sphinxcontrib-phpdomain``
4. Install the CI Lexer which allows PHP, HTML, CSS, and JavaScript syntax highlighting in code examples (see *cilexer/README*)
5. ``make html``

*****
Tests
*****

There is also a PHP coding standard for `PHP_Codesniffer <https://github.com/squizlabs/PHP_CodeSniffer/>`_

The standard allong with installation instruction and testing can be found here: `TBC <http://github.com/VocabExpress/>`_

#############
Compatibility
#############

PHP Version
===========

All PHP code must be compatible with `PHP <http://www.php.net/>`_ version **5.3** or newer.

The server currently runs version **5.3.3** *(as of 02/07/12)*.


PECL Extensions
===============

Do not use PHP functions that require non-default libraries to be installed unless
your code contains an alternative method when the function is not available. For any libraries
that are needed you **MUST** include the library and installation instructions in::

    ./repo/REQUIREMENTS.txt (to be decided)
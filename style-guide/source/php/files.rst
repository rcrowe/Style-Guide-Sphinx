#####
Files
#####

File Format
===========

Files should be saved with UTF-8 encoding and the BOM should not be used. We have already has casses
of the BOM causing issues between servers should should be avoided at all times.


Line Endings
============

Line endings should use Unix style LF.


Closing PHP tag
===============

Files containing only PHP code should always omit the closing PHP tag (?>).

The PHP closing tag on a PHP document is optional to the PHP parser. However, if used, any whitespace following
the closing tag, whether introduced by the developer, user, or an FTP application, can cause unwanted output,
PHP errors, or if the latter are suppressed, blank pages.

**Incorrect**::

    <?php

    echo "Here's my code!";

    ?>

**Correct**::

    <?php

    echo "Here's my code!";


File Naming
===========

All file names must be in lower case. If the file contains a PHP **class** then name of the file MUST reflect this. For example, given a class::

    <?php

    class Image
    {
        ...
    }

then the name of the file should be: **image.php**
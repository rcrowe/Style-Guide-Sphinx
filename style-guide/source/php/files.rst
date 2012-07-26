#####
Files
#####

File Format
===========

Files should be saved with UTF-8 encoding and the BOM should not be used. We have already had cases
of the BOM causing issues between servers.


Line Endings
============

- Line endings should use Unix style **LF**.


One file per class
==================

- Use separate files for each class.


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


Code Indenting
==============

When indenting and aligning code **4 spaces** should be used. While this has the disadvantage that some developers like to customise the indentation level, using spaces has a number of advantages:

- Some developers might use tabs for aligning as well as indentation. When displayed in SCM (for example) code might become misaligned.
- Most modern editors/IDEs can convert tabs to spaces, and treat a block of spaces as a tab. The developer can't tell the difference.


Whitespace
==========

- Make sure whitespace from the end of the line is stripped / removed. This helps when comparing the commit.

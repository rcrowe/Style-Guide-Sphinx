##########
Commenting
##########

Be as verbose as you can with commenting!

DocBlocks
=========

Use of `DocBlock <http://manual.phpdoc.org/HTMLSmartyConverter/HandS/phpDocumentor/tutorial_phpDocumentor.howto.pkg.html#basics.docblock/>`_ and how we use it.

Give an example here and link to a another one: `Sample File <http://pear.php.net/manual/en/standards.sample.php/>`_

More help can be found `here <http://en.wikipedia.org/wiki/PHPDoc/>`_


Within code
===========

Use single line comments within code, leaving a blank line between large comment blocks and code. Make sure to leave a space between // and the start
of the comment. For example::

    // break up the string by newlines
    $parts = explode("\n", $str);

    // A longer comment that needs to give greater detail on what is
    // occurring and why can use multiple single-line comments.  Try to
    // keep the width reasonable, around 70 characters is the easiest to
    // read.  Don't hesitate to link to permanent external resources
    // that may provide greater detail:
    //
    // http://example.com/information_about_something/in_particular/
    $parts = $this->foo($parts);
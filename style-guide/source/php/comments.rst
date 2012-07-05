##########
Commenting
##########

In general, code should be commented prolifically. It not only helps describe the flow and intent of the code for less experienced programmers, but can prove invaluable when returning to your own code months down the line.

DocBlocks
=========

A `DocBlock <http://manual.phpdoc.org/HTMLSmartyConverter/HandS/phpDocumentor/tutorial_phpDocumentor.howto.pkg.html>`_ or **documentation block** is a format of writing documentation for your classes and methods that give the developer a standard to follow and all the comments to be passed. To find out more information on DocBlocks you can read up on it `here <http://manual.phpdoc.org/HTMLSmartyConverter/HandS/phpDocumentor/tutorial_phpDocumentor.howto.pkg.html>`_. ::

    /**
     *
     */

To parse the DocBlocks we will use `Apigen <http://apigen.org/>`_ and example of the parsed DocBlocks cab be found `here <http://api.nette.org/2.0/>`_. An example of DocBlocks::

    <?php

    /**
     * Core Vocab file.
     *
     * @pacakage Vocab
     * @version  1.0
     * @author   Rob Crowe
     */

     namespace Vocab\Core;

    /**
     * Basic logging to disk.
     *
     * Will log any string you pass to the class, along with the log
     * level, date and where the log was made. Use the log files
     * to find whether something is broken or its working correctly.
     *
     * @package    Vocab
     * @subpackage Core
     */
    class Log
    {
        /**
         * @var string File name of the log file.
         */
        protected $file;

        /**
         * Save the log to file.
         *
         * Will save the contents of the log
         * to the log directory using the passed in
         * filename.
         *
         * @param string $file Filename
         * @throws FileException
         * @return bool Whether the file was successfully saved
         */
        public function save($file)
        {
            ...
        }
    }


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
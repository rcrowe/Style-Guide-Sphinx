#####
Style
#####

PHP code should use a variation on the `K&R <http://en.wikipedia.org/wiki/Indent_style#K.26R_style>`_ style of indenting. The
difference are highlighted below.

Classes & Methods
=================

- Opening & closing brace must go on its own line. This helps with readability & identifying a code block. ::

    // incorrect
    class File {
        public function save() {
            ...
        }
    }

    // correct
    class File
    {
        public function saveFile()
        {
            ...
        }
    }

Control Structures
==================

- Structure keywords such as **if**, **for**, **foreach**, **while**, **switch** should be followed by a space as should
  parameter/argument lists and values. ::

    // incorrect
    if($arg=TRUE)

    // correct
    if ($arg = TRUE)

- The opening brace should go on the same line as the control structure with a space before it. With the closing brace on
  its own line indented to the same level as the control structure. ::

    // incorrect
    if ($arg = TRUE)
    {
        ...
    }

    if ($arg = TRUE){
        ...
    }

    // correct
    if ($arg = TRUE) {
        ...
    }

    foreach ($arr as $key => $val) {
        ...
    }

- When using else statements, they are to be placed on the line below. ::

    // incorrect
    if($arg) {
        ...
    } elseif($arg2) {
        ...
    } else {
        ...
    }

    // correct
    if($arg) {
        ...
    }
    elseif($arg2) {

    }
    else {

    }


- Switch break statements go to the same level as your code so that you can visually see different blocks. ::

    switch ($item) {

        case 'Vocab':
            $file = 'vocab.txt';
            break;

        case 'Express':
            $file = 'vocab_express.csv';
            break;

        default:
            $file = 'error.txt';
    }

- Braces should always be used even with simple one line statements. ::

    // incorrect
    if ($arg = TRUE)
        echo 'Test';
    else
        echo 'nope';

    // correct
    if ($arg = TRUE) {
        echo 'Test';
    }
    else {
        echo 'nope';
    }
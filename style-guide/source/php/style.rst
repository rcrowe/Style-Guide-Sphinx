#####
Style
#####

PHP code should use the `Allman <http://en.wikipedia.org/wiki/Indent_style#Allman_style>`_ style of indenting,
where braces are placed on their own line by themselves and indented to the same level as the control statement.

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

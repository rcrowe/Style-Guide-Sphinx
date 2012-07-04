#####
Style
#####

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
    if($arg=true)

    // correct
    if ($arg = true)

- Opening and closing braces should go on their own line and be indented to the same level as the control structure. ::

    // incorrect
    if ($arg = true) {

    }

    // correct
    if ($arg = true)
    {
        ...
    }

    foreach($arr as $key => $val)
    {
        ...
    }

######
Naming
######

php keywords MUST be lower case
constants MUST be upper case

Classes
=======

- Should always start with an uppercase letter. ::

    // Incorrect
    class grass

    // Correct
    class Grass

- Named clearly to indicate their function, trying to avoid overly long verbose names.


Methods
=======

- Methods should use camel case and not snake case. They must also be descriptive. ::

    // incorrect
    function fileproperties()
    function file_properties()

    // correct
    function getFileProperties()

- They must include their visibility. ::

    // incorrect
    function getFileProperties()

    // correct
    public function getFileProperties()
    protected function saveFileProperties()

- If using the **static** keyword this must come after the *visibility*. ::

    // incorrect
    static public function makeToast()

    // correct
    public static function makeToast()


Variables
=========

- Should only contain lowercase letters and use underscores to seperate words. ::

    // incorrect
    $Str
    $bufferedText
    $groupid

    // correct
    $str
    $buffer
    $group_id

- Should be reasonably named to indicate their purpose and contents. Very short non-word variables
  should only be used as iterators in for() loops. ::

    // incorrect
    $j = 'foo'
    $name_of_last_user

    // correct
    for ($j = 0; $j < 10; $j++)
    $last_user


Constants
=========

Constants follow the same naming restrictions as variables apart from:

- Constants must be uppercase. ::

    TEMPLATE_PATH
    PUBLIC_ROOT


Keywords
========

- Keywords such as **true** & **false** should be lowercase as uppercase is reserved for constants. ::

    $var = true
    $var = false
    $var = null


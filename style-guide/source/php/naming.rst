######
Naming
######

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
    function file_properties()
    function fileproperties()
    function get_file_properties()

    // correct
    function getFileProperties()

- They must include their visibility. ::

    // incorrect
    function getFileProperties()

    // correct
    public function getFileProperties()
    protected function save()

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
    $parCls

    // correct
    $str
    $buffer
    $group_id
    $partial_class

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

- PHP keywords should be lowercase
- Keywords such as **true**, **false** & **null** should be uppercase. ::

    // incorrect
    if ($foo == true)
    $bar = false;
    function foo($bar = null)

    // correct
    if ($foo == TRUE)
    $bar = FALSE;
    function foo($bar = NULL)

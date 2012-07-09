##############################
Comparisons, Logical operators
##############################

Some PHP functions return FALSE on failure, but may also have a valid return value of "" or 0, which would evaluate to FALSE in loose comparisons. Be explicit by comparing the variable type when using these return values in conditionals to ensure the return value is indeed what you expect, and not a value that has an equivalent loose-type evaluation.

Use the same stringency in returning and checking your own variables. Use === and !== as necessary. ::

    // incorrect
    // If 'foo' is at the beginning of the string, strpos will return a 0,
    // resulting in this conditional evaluating as TRUE
    if (strpos($str, 'foo') == FALSE)

    // correct
    if (strpos($str, 'foo') === FALSE)


    // incorrect
    public function buildString($str = "")
    {
        // uh-oh!  What if FALSE or the integer 0 is passed as an argument?
        if ($str == "") {
            ...
        }
    }

    // correct
    public function buildString($str = "")
    {
        if ($str === "") {
            ...
        }
    }
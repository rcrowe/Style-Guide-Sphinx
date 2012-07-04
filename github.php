<?php

/**
 * server key for authentication
 **/
define('SERVER_KEY', '24hjo23jh4j32k4hk234hk234k234b234b234');

// check for payload and server key
if ( $_REQUEST['key'] == SERVER_KEY ) {
        exec('make update && make clean && make build', $output);
}

?>
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
"github.php" 15L, 271C written                                                                                                          11,24-31      All

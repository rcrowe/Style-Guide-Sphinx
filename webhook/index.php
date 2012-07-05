<?php

/**
 * server key for authentication
 */
define('SERVER_KEY', '24hjo23jh4j32k4hk234hk234k234b234b234');

// parse the json payload
$payload = json_decode($_REQUEST['payload']);

if (!$payload) exit();

// check for payload and server key
if ($payload->ref === 'refs/heads/master' and $_REQUEST['key'] == SERVER_KEY) {
    exec('make update');
    exec('make clean');
    exec('make build');
}

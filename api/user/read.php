<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 10/13/2018
 * Time: 11:34 AM
 */

require_once("../config/security.php");

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once("../config/mysql.class.php");
include_once("../objects/user.php");

// instantiate database and product object
$db = new MySQL();

// initialize object
$user = new user($db);

$users = $user->read();

if($users) {
    http_response_code(200);

    // Show user in json format
    echo json_encode(
        array("user" => $users)
    );
} else {
    http_response_code(404);

    // Feedback on error
    echo json_encode(
        array("message" => "No user found.")
    );
}

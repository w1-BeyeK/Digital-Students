<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 12:12 PM
 */

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// include database and object files
include_once("../config/mysql.class.php");
include_once("../objects/user.php");
include_once("../util/util.php");

// instantiate database and product object
$db = new MySQL();

// initialize object
$user = new user($db);

$tempPass = $db->SQLFix($_POST["password"]);

$user->email = $db->SQLFix($_POST["email"]);
$user->password = util::encrypt($tempPass);
$token = $user->login();

if($token) {
    http_response_code(200);

    echo json_encode(
        array("token" => $token)
    );
} else {
    http_response_code(404);

    echo json_encode(
        array("message" => "No user found with passed credentials.")
    );
}
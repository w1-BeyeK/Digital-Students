<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 9/19/2018
 * Time: 5:15 PM
 */
session_start();
require_once "../includes/mysql.class.php";
require_once "../includes/util.php";
$db = new MySQL();

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $action = $_POST["action"];
    if(empty($action)) {
        return;
    }

    if($action == "login") {
        $credentials = array("email" => $_POST["user"], "password" => $_POST["pass"]);

        $result = json_decode(util::call_api("POST", "http://localhost:999/project/api/user/login.php", $credentials));
        if(isset($result->token)) {
            if(session_status() == PHP_SESSION_NONE) {
                session_start();
            }

            // Empty all session variables
            session_unset();

            $_SESSION["token"] = $result->token;
            // Maybe get additional user info but for now token is enough

            $obj = new stdClass();
            $obj->success = 1;
            $obj->redirectUrl = "../dashboard/";
        } else {
            $obj = new stdClass();
            $obj->success = 0;
        }
        echo json_encode($obj);
    }
}

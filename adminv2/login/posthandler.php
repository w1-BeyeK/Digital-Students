<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 9/19/2018
 * Time: 5:15 PM
 */
session_start();
require_once "../includes/mysql.class.php";
$db = new MySQL();

if($_POST["action"] == "login") {
    $user = !empty($_POST["user"])? $_POST["user"] : "";
    $pass = !empty($_POST["pass"])? $_POST["pass"] : "";

    $password = htmlentities($db->SQLFix($_POST["pass"]), ENT_QUOTES);
    $salt = md5($password); // Create salt
    $hashedPass = pbkdf2($password, $salt); // Encrypt password

    $query = "select * from ds_users where email = '$user' and password = '$hashedPass' and active = 1";

    $result = $db->QuerySingleRow($query);

    if($result) {
        $_SESSION["user_id"] = $result->id;
        $_SESSION["user_code"] = $result->code;
        $_SESSION["user_name"] = $result->name;
        $_SESSION["user_role"] = $result->admin;
        echo json_encode("success");
    } else {
        echo json_encode("failed to login");
    }
}
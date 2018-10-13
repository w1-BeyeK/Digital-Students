<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 3:24 PM
 */

session_start();
require_once "../includes/mysql.class.php";
require_once "../includes/util.php";
$db = new MySQL();

if($_SERVER["REQUEST_METHOD"] == "GET") {
    $action = $_GET["action"];
    if(empty($action)) {
        return;
    }

    if($action == "getCustomers") {
        $result = json_decode(util::call_api("GET", "http://localhost:999/project/api/user/read.php"));

        $returnValue = new stdClass();
        $returnValue->data = $result->user;
        echo json_encode($returnValue);
    }
}
if($_SERVER["REQUEST_METHOD"] == "POST") {
    $action = $_POST["action"];
    if(empty($action)) {
        return;
    }


}
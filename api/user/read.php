<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 10/13/2018
 * Time: 11:34 AM
 */

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once("../config/mysql.class.php");
include_once("../objects/user.php");
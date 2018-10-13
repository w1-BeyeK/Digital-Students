<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 2:40 PM
 */

include_once("includes/pbkdf2.php");

$password1 = htmlentities("test12345", ENT_QUOTES);
$salt1 = md5($password); // Create salt
$hashedPass1 = pbkdf2($password1, $salt1); // Encrypt password

$password2 = htmlentities("4158GE", ENT_QUOTES);
$salt2 = md5($password2); // Create salt
$hashedPass2 = pbkdf2($password2, $salt2); // Encrypt password

echo $hashedPass1 . PHP_EOL;

echo $hashedPass2 . PHP_EOL;
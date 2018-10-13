<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 12:22 PM
 */
require_once("../includes/pbkdf2.php");

class util
{
    public static function encrypt($string) {
        $password = htmlentities($string, ENT_QUOTES);
        $salt = md5($password); // Create salt
        $hashedPass = pbkdf2($password, $salt); // Encrypt password

        return $hashedPass;
    }

    public static function create_token() {
        return bin2hex(openssl_random_pseudo_bytes(64));
    }
}
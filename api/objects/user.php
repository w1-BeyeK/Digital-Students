<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 10/13/2018
 * Time: 11:31 AM
 */

class user
{
    // Database connection and table name
    private $conn;
    private $table_name = "ds_users";

    // Properties
    public $id;
    public $email;
    public $name;
    public $password;
    public $last_login;
    public $code;
    public $active;
    public $admin;
    public $date_created;
    public $date_modified;

    public function __construct($db) {
        $this->conn = $db;
    }
}
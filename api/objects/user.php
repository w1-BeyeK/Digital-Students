<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 10/13/2018
 * Time: 11:31 AM
 */
include_once("../util/util.php");

class user
{
    // Database connection and table name
    /*
     * @var MySQL $conn
     */
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

    public function login() {
        // Find user with credentials
        $query = "select * from $this->table_name where email = '$this->email' AND password = '$this->password'";
        $user = $this->conn->QuerySingleRowArray($query);

        if($user) {
            // Find last token with user id
            $user_id = isset($user["id"])? $user["id"] : -1;

            // Get token lifetime
            $lifetime = $this->conn->QuerySingleValue("select token_lifetime from sec_config limit 1");
            $valid_token = $this->conn->QuerySingleValue("select token from sec_tokens where user_id = $user_id AND DATEDIFF(NOW(), starttime) < ($lifetime / 7) order by starttime desc LIMIT 1");

            // If valid return it
            if(!empty($valid_token)) {
                return $valid_token;
            } else {
                // Create new one
                $new_token = util::create_token();

                // Insert token to database
                $this->conn->Query("insert into sec_tokens(starttime, token, user_id) values(now(), '$new_token', $user_id)");

                // Return new token
                return $new_token;
            }
        }
    }

    public function read() {
        $query = "select * from $this->table_name";
        $result = $this->conn->QueryArray($query);

        return $result;
    }
}
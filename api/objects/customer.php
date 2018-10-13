<?php
/**
 * Created by PhpStorm.
 * User: Kevin
 * Date: 10/13/2018
 * Time: 4:52 PM
 */

class customer
{
// Database connection and table name
    /*
     * @var MySQL $conn
     */
    private $conn;
    private $table_name = "crm_customerse";

    // Properties
    public $id;
    public $name;
    public $email;
    public $country;
    public $zipcode;
    public $city;
    public $address;
    public $discount;
    public $mod_userid;
    public $date_modified;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function read() {
        $query = "select * from $this->table_name";
        $result = $this->conn->QueryArray($query);

        return $result;
    }
}
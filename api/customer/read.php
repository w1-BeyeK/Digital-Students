<?php

require_once("../config/security.php");

// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once("../config/mysql.class.php");
include_once("../objects/customer.php");

// instantiate database and product object
$db = new MySQL();

// initialize object
$customer = new customer($db);

$customers = $customer->read();

if($customers) {
    http_response_code(200);

    // Show user in json format
    echo json_encode(
        array("customer" => $customers)
    );
} else {
    http_response_code(404);

    // Feedback on error
    echo json_encode(
        array("message" => "No customers found.")
    );
}

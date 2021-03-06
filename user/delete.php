<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// include database and user file
include_once '../config/database.php';
include_once '../objects/user.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare event object
$event = new User($db);
  
// get user id
$json = file_get_contents("php://input");

$data = json_decode($json, true);
  
// set event id to be deleted
$event->userID = $data['userID'];
  
// delete the event
if($event->delete()){
  
    // set response code - 410 deleted
    http_response_code(410);
  
    // tell the user
    echo json_encode(array("message" => "user was deleted."));
}
  
// if unable to delete the event
else{
  
    // set response code - 503 service unavailable
    http_response_code(503);
  
    // tell the user
    echo json_encode(array("message" => "Unable to delete user."));
}
?>
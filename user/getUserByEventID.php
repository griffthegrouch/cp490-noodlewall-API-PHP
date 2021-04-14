<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/user.php';
  
// instantiate database and event object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$user = new User($db);
  
// get keywords
$keywords=isset($_GET["id"]) ? $_GET["id"] : "";

// query events
$stmt = $user->userByEventID($keywords);
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
    
    // events array
    $user_arr["record"] = array();

    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
  
        $user_item=array(
            "userID" => $userID,
            "userName" => $userName,
            "userFirstName" => $userFirstName,
            "userLastName" => $userLastName,
            "userRating" => $userRating,
            "userBio" => $userBio,
            "userBioLong" => html_entity_decode($userBioLong),
            "userImage" => $userImage,

        );

        array_push($user_arr["record"], $user_item);
    }
  
    // set response code - 200 OK
    http_response_code(200);
  
    // show events data
    echo json_encode($user_arr);
}
  
else{
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no events found
    echo json_encode(
        array("message" => "No user found.")
    );
}
?>
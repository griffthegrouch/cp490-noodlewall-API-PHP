<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
include_once '../config/database.php';
include_once '../objects/event.php';
  
// instantiate database and event object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$event = new Event($db);
  
// query events
$stmt = $event->read();
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
  
    // events array
    $events_arr=array();



    $events_arr["records"]=array();//specifying which object in the array to save new array (of events)
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
        $event_item=array(
            "noodleID" => $noodleID,
            "noodleTitle" => $noodleTitle,
            "userID" => $userID,
            "noodleStatus" => $noodleStatus,
            "noodleDescription" => html_entity_decode($noodleDescription),
            "noodleTags" => str_getcsv($noodleTags),
            "noodleImage" => $noodleImage,
            "noodleLocation" => $noodleLocation,
            "noodleDate" => $noodleDate,
            "noodleTime" => $noodleTime,
            "noodlePrice" => $noodlePrice,
            "noodleMinTickets" => $noodleMinTickets,
            "noodleMaxTickets" => $noodleMaxTickets,
            "noodleTicketsSold" => $noodleTicketsSold,
            "noodleCutoff" => $noodleCutoff
        );

        array_push($events_arr["records"], $event_item);
    }

    //dummy user data for db call
    
    $events_arr["users"]=array(//specifying which object in the array to save new array (of users)
        array(
            "userID" => 1,
            "userName" => "Pam's Fishing",
            "userFirstName" => "Pam",
            "userLastName" => "Poovey",
            "userRating" => 4,
            "userBio" => "Fishing Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.",
            "userBioLong" => "Fishing Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.",
            "userImage" => "pam"),

        array(
            "userID" => 2,
            "userName" => "Krieger's Bowling Team",
            "userFirstName" => "Krieger's",
            "userLastName" => "Bowling Team",
            "userRating" => 3,
            "userBio" => "Bowling Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum.",
            "userBioLong" => "Bowling Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id sodales ex. Quisque vitae ultricies ipsum. Suspendisse pulvinar in ex a posuere. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras varius arcu tellus, et eleifend turpis porta id. Aliquam commodo leo leo, eget rhoncus enim dictum nec. Morbi porta elementum ex sollicitudin porttitor.",
            "userImage" => "bowling")
    );


    // set response code - 200 OK
    http_response_code(200);
  
    // show events data in json format
    echo json_encode($events_arr);
}
  
else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no events found
    echo json_encode(
        array("message" => "No events found.")
    );
}


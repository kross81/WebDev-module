<?php

include("../dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $userid = $_POST["user"];
    $acctype = 'user';
    

    $stmt = $conn->prepare("UPDATE `user` SET account_type=?  WHERE `user_id` = $userid");
    $stmt->bind_param("s", $acctype);   
    $stmt->execute();
    $result = $stmt->get_result();

    if(!$result){
        echo "account type updated! go back: <a href='../../admintodo.php' class='pseudo button'><button id='button'>admin</Button></a>";
    }
    else{

        echo $conn->error;
    }

}
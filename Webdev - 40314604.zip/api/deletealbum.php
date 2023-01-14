<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

   $albumid = $_POST["album"];


    $sql = "DELETE FROM album WHERE album.album_id =?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $albumid);
    $stmt->execute();
    $result = $stmt->get_result(); 

    if(!$result){
        echo "album deleted go back: <a href='../admintodo.php' class='pseudo button'><button id='button'>logout</Button></a>";
    }
    else{

        echo $conn->error;
    }

}

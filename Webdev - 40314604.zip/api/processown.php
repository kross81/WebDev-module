<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $user = $_POST['user'];
    $albumid = $_POST['album'];
    
    $sql = "SELECT `user_id` FROM user WHERE email=?"; // SQL with parameters
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $result = $stmt->get_result(); 
    while ($row = $result->fetch_assoc()){
        $userid = $row['user_id'];
    }

    $stmt = $conn->prepare("INSERT INTO owned (`user_id`, album_id) VALUES (?, ?)");
    $stmt->bind_param("ii", $userid, $albumid);   
    $stmt->execute();
    $result = $stmt->get_result();

        if($result){
            echo $conn->error;
    }else{
        echo "You now own this album ";
        echo " go back <a href='javascript:history.back()' class='pseudo button'><button id='button'>back</Button></a>";
    }



}
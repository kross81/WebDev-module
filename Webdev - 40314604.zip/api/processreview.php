<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $user = $_POST['user'];
    $albumid = $_POST['album'];
    $review = $_POST['review'];


    $sql = "SELECT `user_id` FROM user WHERE first_name=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $result = $stmt->get_result(); 
    while ($row = $result->fetch_assoc()){
        $userid = $row['user_id'];
    }
    
    $stmt = $conn->prepare("INSERT INTO user_review (`user_id`, album_id, review) VALUES (?, ?, ?)");
    $stmt->bind_param("iis", $userid, $albumid, $review);   
    if($stmt->execute()){
    

        $sql = "SELECT approval_id FROM admin_review_approval WHERE `user_id` = $userid AND album_id = $albumid";

        $result = $conn->query($sql);
        while ($row = $result->fetch_assoc()){
         $apprrovalid = $row['approval_id'];
                }


        $sql = "DELETE FROM admin_review_approval WHERE approval_id = $apprrovalid;";
        $result = $conn->query($sql);
        if($result){
            echo "<div>insert successful</div>";
            echo "<div>Deleted from todo list</div>";
            echo " go back <a href='javascript:history.back()' class='pseudo button'><button id='button'>back</Button></a>";
        }
        else{
            echo "not deleted from to do list";
            echo " go back <a href='../admintodo.php' class='pseudo button'><button id='button'>admin</Button></a>";
        }
    
        
    } else {
        echo "something went wrong go back <a href='../admintodo.php' class='pseudo button'><button id='button'>admin</Button></a>";
    }

}


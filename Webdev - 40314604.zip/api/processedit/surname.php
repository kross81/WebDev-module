<?php

include("../dbconn.php");


if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $userid = $_POST['user_id'];
    $firstname = $_POST["first_name"];
    $surname = $conn->real_escape_string($_POST['surname']);
    $email = $_POST['email'];
    $userpass = $_POST['password'];
    $account_type = null;



 $stmt = $conn->prepare("UPDATE `user` SET `surname`=?  WHERE `user_id` = $userid");
    $stmt->bind_param("s", $surname);   
    $stmt->execute();
    $result = $stmt->get_result();

    if(!$result){
        echo "your information has been udated! go back: <a href='javascript:history.back()' class='pseudo button'><button id='button'>back</Button></a>";
        }
    else{

        echo $conn->error;
    }

}

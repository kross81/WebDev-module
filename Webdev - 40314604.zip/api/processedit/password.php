<?php

include("../dbconn.php");


if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $userid = $_POST['user_id'];
    $firstname = $_POST["first_name"];
    $surname = $_POST['surname'];
    $email = $_POST['email'];
    $userpass = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $account_type = null;



    $stmt = $conn->prepare("UPDATE `user` SET `password`=?  WHERE `user_id` = $userid");
    $stmt->bind_param("s", $userpass);   
    $stmt->execute();
    $result = $stmt->get_result();

    if(!$result){
        echo "your information has been udated! go back: <a href='javascript:history.back()' class='pseudo button'><button id='button'>back</Button></a>";
        }
    else{

        echo $conn->error;
    }
}
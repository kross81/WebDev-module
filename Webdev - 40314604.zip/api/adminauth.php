<?php

if (($_SERVER['REQUEST_METHOD']==="POST")) {

    session_start();

    include("dbconn.php");

    $uname = $_POST["email"];
    $upass = $_POST["password"];



    $stmt = $conn->prepare("SELECT * FROM user WHERE email = ? AND account_type = 'admin' ");
    $stmt->bind_param("s", $uname);
    $stmt->execute();
    $user = $stmt->get_result()->fetch_assoc();
    
    if ($user && password_verify($upass, $user['password']))
    {
        // credentials are OK, add user in a session etc...;
        $_SESSION['adminsession'] = $uname;
	    header('Location: ../admintodo.php');
    } else {
        // login failed;
        header('Location: ../home.php');
    }


}
    

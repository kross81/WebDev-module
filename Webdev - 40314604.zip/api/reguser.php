<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD']==="POST")) { 
        
     $firstname = $conn->real_escape_string($_POST["first_name"]);
     $surname = $conn->real_escape_string($_POST["surname"]);
     $email = $conn->real_escape_string($_POST["email"]);
     $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
     $usertype = null;

     $checkuser = "SELECT * FROM user WHERE email ='$email'";

     $result = $conn->query($checkuser);
    
     if (!$result) {
        echo $conn->error;
     }
 
     $num = $result->num_rows;
 
     if ($num > 0) {
        echo "An account already exists with this email address please go to login ";
        echo " <a href='../home.php' class='pseudo button'><button id='button'>home</Button></a>";
     }
     else{


   $stmt = $conn->prepare("INSERT INTO user (first_name, surname, email, `password`) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $firstname, $surname, $email, $password);   
    $stmt->execute();
    $result = $stmt->get_result();

     if (!$result) {
        echo "New account has been registered successfully !";
        echo "go to home page and sign in  <a href='../home.php' class='pseudo button'><button id='button'>home</Button></a>";
     } else {
        echo "Error: " . $sql . ":-" . mysqli_error($conn);
     }
   }
}
?>
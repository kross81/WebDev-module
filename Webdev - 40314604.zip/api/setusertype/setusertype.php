<?php

include("../dbconn.php");

$sql = "SELECT `user_id`, first_name, email, account_type from user WHERE account_type IS NULL";

$result = mysqli_query($conn, $sql);
    if ($result) {
        header("Content-Type: JSON");

        $i = 0;
        while ($row = mysqli_fetch_assoc($result)) {
            $response[$i]['user_id'] = $row['user_id'];
            $response[$i]['first_name'] = $row['first_name'];
            $response[$i]['email'] = $row['email'];
            $response[$i]['account_type'] = $row['account_type'];


            $i++;
        }
        
        echo json_encode($response, JSON_PRETTY_PRINT);
    
} else {
    echo "database connection failed";
}


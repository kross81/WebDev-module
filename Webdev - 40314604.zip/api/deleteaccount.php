<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $userid = $_POST["user_id"];

    $sql = "DELETE  FROM favourite WHERE `user_id` =?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $userid);
    if ($stmt->execute() || $stmt === false) {

        $sql = "DELETE  FROM owned WHERE `user_id` =?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $userid);
        if ($stmt->execute() || $stmt === false) {

            $sql = "DELETE FROM user_review WHERE `user_id` =?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("i", $userid);
            if ($stmt->execute() || $stmt === false) {

                $sql = "DELETE FROM rating  WHERE `user_id` =?";
                $stmt = $conn->prepare($sql);
                $stmt->bind_param("i", $userid);
                if ($stmt->execute() || $stmt === false) {

                    $sql = "DELETE FROM `user` WHERE `user_id` =?";
                    $stmt = $conn->prepare($sql);
                    $stmt->bind_param("i", $userid);
                    if ($stmt->execute()) {


                        echo "your account has been deleted ! go back: <a href='../logout.php' class='pseudo button'><button id='button'>logout</Button></a>";
                        
                    } else {

                        echo $conn->error;
                    }
                }
            }
        }
    }
}

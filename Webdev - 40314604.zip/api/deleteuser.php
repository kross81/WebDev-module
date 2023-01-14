<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

    $email = $_POST["email"];

    $sql = "SELECT `user_id` FROM user WHERE email=?"; // SQL with parameters
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            $userid = $row['user_id'];

        }

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


                            echo "the account has been deleted ! go back: <a href='../admintodo.php' class='pseudo button'><button id='button'>admin</Button></a>";
                        } else {


                            echo $conn->error;
                        }
                    }
                }
            }
        }
    }


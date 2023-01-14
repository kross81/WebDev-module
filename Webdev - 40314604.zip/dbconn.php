<?php
        $host = "jross18.webhosting6.eeecs.qub.ac.uk";
        $user = "jross18";
        $pw = "qQRM1d9PDj8kVpsY";
        $db = "jross18";
 
        $conn = new mysqli($host, $user, $pw, $db);
 
        if ($conn->connect_error) {
 
              $check = "Not connected ".$conn->connect_error;
 
        }
 ?>
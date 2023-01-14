<?php

include("dbconn.php");

if (($_SERVER['REQUEST_METHOD'] === "POST")) {

   $user = $conn->real_escape_string($_POST['user']);
  
   $albumid = $_POST['album'];
   
   $review = $conn->real_escape_string($_POST['review']);

   $query = "SELECT `user_id` FROM `user` WHERE email = '" . $user . "' ";
   $result = mysqli_query($conn, $query);

   while ($row = $result->fetch_assoc()) {
      $userid = $row['user_id'];

      if (!$result) {
         echo $conn->error;
      }

      $sql = "INSERT INTO admin_review_approval(`user_id`, album_id, review) VALUES(?, ?, ?)";
      $stmt = $conn->prepare($sql);
      $stmt->bind_param("iis", $userid, $albumid, $review);

      if ($stmt->execute()) {
         echo "Your review is now pending for approval by an administrator, please check back later !";
         echo " go back <a href='javascript:history.back()' class='pseudo button'><button id='button'>back</Button></a>";
      } else {
         echo "Error: " . $sql . ":-" . mysqli_error($conn);
      }
   }
}

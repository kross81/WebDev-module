<?php

session_start();
include("api/adminauth.php");
include("dbconn.php");
if (!isset($_SESSION["adminsession"])) {
  echo "your session is not running" . $_SESSION['adminsession'];
  header("Location: home.php");
  $showBtn = false;
} else {
  $showBtn = true;
  $currentUser = $_SESSION['adminsession'];
}

include("dbconn.php");

if ($conn) {
    $query = "SELECT user.first_name, album.album_name, admin_review_approval.review, album.album_id FROM admin_review_approval
    INNER JOIN user
    ON admin_review_approval.user_id = user.user_id
    INNER JOIN album
    ON admin_review_approval.album_id = album.album_id";

    $result = mysqli_query($conn, $query);

    if ($result) {
        $num = $result->num_rows;
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    } else {

        echo $conn->error;
    }
}

if ($conn) {

    $endpoint = "http://jross18.webhosting6.eeecs.qub.ac.uk/project/api/setusertype/setusertype.php";
    $result2 = file_get_contents($endpoint);
    $data2 = json_decode($result2, true);

    
  }



?>


<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/picnic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="ui.css">
</head>

<body id="container">
    <nav id="nav">

        <a href="home.php" class="brand">
            <img class="logo" src="img/500_albums.jpg" />
            <span>ALBUMS</span>
        </a>


        <input id="bmenub" type="checkbox" class="show">
        <label for="bmenub" class="burger success button">menu</label>

        <div class="menu">
        <a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
            <a href='logout.php' class='pseudo button'><button id='button'>LOGOUT</Button></a>
        </div>
    </nav>

    <div>

    
        <?php

            echo "<div>
                <p id='box'>
                <h1>Welcome to the admin homepage. you have $num reviews to approve</h1>
                </p>
                </div>";

        if($num>0){

     
            foreach ($data as $row) {
                $name = $row["first_name"];
                $album = $row["album_name"];
                $review = $row["review"];
                $albumid = $row["album_id"];

                echo "<div>
            <form action = 'api/processreview.php' method = 'POST'>
                <h2>
                <div> You have a pending review for $name for the album $album.</div>
                <div> The review says: $review .</div>
                <div>Would you like to approve?</div>
                <label><input type='hidden' name='user' value= '$name' ></label>
                <label><input type='hidden' name='album' value= '$albumid' ></label>
                <label><input type='hidden' name='review' value= '$review' ></label>
                <button class='pseudo button'><button id='button' value='SUBMIT'>YES</Button>
                <button class='pseudo button'><button id='button' value='SUBMIT'>NO</Button>
                </h2>
                </form> 
            </div>";
            }
        }else{
            echo "No tasks at the minute"; 
           }

           if($data2){

        
           foreach ($data2 as $row2) {
            $userid = $row2["user_id"];
            $fname = $row2["first_name"];
            $email = $row2["email"];
            $acctype = $row2["account_type"];

            echo "<div>
        
            <h2>
            <div> You need to allocate an account type to user $email</div>
            <div>Which role wold you like to assign </div>
            <form action = 'api/setusertype/setadmin.php' method = 'POST'>
            <label><input type='hidden' name='user' value= '$userid' ></label>
            <button class='pseudo button'><button id='button' value='SUBMIT'>ADMIN</Button>
            </form>
            <form action = 'api/setusertype/setuser.php' method = 'POST'>
            <label><input type='hidden' name='user' value= '$userid' ></label>
            <button class='pseudo button'><button id='button' value='SUBMIT'>USER</Button>
            </form>
            </h2>
             
        </div>";
           }   
    }else{
        echo "No new users at the minute"; 
       }
        
    
        ?>
    </div>

    <div id="box">
        <h2> Delete a user </h2>
        <h3> Enter the email address of the account you would like to delete</h3>
     <form action = "api/deleteuser.php" method = "POST">
        <label><input type="email" name="email" value= "email" ></label>
        <button class='pseudo button'><button id='button' value='SUBMIT'>SUBMIT</Button>
    </form>


    </div>


</body>

</html>
<?php

session_start();

include("api/processlogin.php");
include("dbconn.php");

if (isset($_SESSION["editpermission123"])) {
  $currentUser = $_SESSION["editpermission123"];
  $showBtn = true;
  $adminextra = false;

}
elseif (isset($_SESSION["adminsession"])) {
    $adminextra = true;
    $currentUser = $_SESSION['adminsession'];
    $showBtn = true;

}
else {
$showBtn = false;
$currentUser = null;
$adminextra = false;
}
?>

<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
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
        <?php

       echo "<a href='home.php' class='pseudo button'><button id='button'>HOME</Button></a></div>";
      ?>
        </div>
    </nav>

      <div>
      <h1></h1>
    <h1>YOUR LOGOUT HAS BEEN SUCCESSFULL</h1>
    <a href='home.php' class='pseudo button'><button id='button'>HOME</Button></a></div>
    </div>


    <?php

session_destroy();

?>

</body>

</html>
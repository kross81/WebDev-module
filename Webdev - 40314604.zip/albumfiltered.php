<?php
include("filter.php");
include("dbconn.php");

session_start();
include("api/processlogin.php");
include("api/adminauth.php");
include("dbconn.php");

if (isset($_SESSION["editpermission123"])) {
    $currentUser = $_SESSION["editpermission123"];
    $showBtn = true;
    $adminextra = false;
} elseif (isset($_SESSION["adminsession"])) {
    $adminextra = true;
    $currentUser = $_SESSION['adminsession'];
    $showBtn = true;
} else {
    $showBtn = false;
    $currentUser = null;
    $adminextra = false;
}

$filterdata = htmlentities($_GET['filter']);


$sql = "SELECT album_id, `rank`, album_name, artist, artwork_url, genre.genre_name, years.year FROM `album`
    INNER JOIN genre ON album.genre_id = genre.genre_id INNER JOIN
    years ON album.year_id = years.year_id  WHERE `year` BETWEEN $filterdata ORDER BY `rank`"; // SQL with parameters
$result = mysqli_query($conn, $sql);


?>

<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtered</title>
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

            if (!$showBtn) {
                echo "<a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
                <a href='signup.php' class='pseudo button'><button id='button'>SIGN UP</Button></a>
        <a href='home.php' class='pseudo button'><button id='button'>HOME</Button></a>";
            } else {
                echo "<a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
        <a href='mydetails.php' class='pseudo button'><button id='button'>MY PROFILE</Button></a>
        <a href='logout.php' class='pseudo button'><button id='button'>LOGOUT</Button></a>";
            }
            ?>
        </div>
    </nav>

    <h1></h1>

    <div id="containerb">
        <div id="containerb">
            <nav id="mynav">
                <ul id="mynav">
                    <?php

                    $navbar = displaynav();

                    ?>
                </ul>
            </nav>
        </div>
    </div>

    <?php

    echo

    "<div>   
<div id='dynamic'></div>   
<div class='flex two three-600 four-1200' id='newrows'>";

    // iterate and use the data
    while ($row = $result->fetch_assoc()) {

        $albumid = $row['album_id'];
        $rank = $row['rank'];
        $album = $row['album_name'];
        $artist = $row['artist'];
        $genre = $row['genre_name'];
        $year = $row['year'];
        $artwork = $row['artwork_url'];




        echo "<a href='albumdetails.php?album_id=$albumid'>
        <div><span> <article class='card myminheight'>
          <header><h4>{$album} by {$artist}</h4></header>
          <p><img id='thumbsize' src=\"$artwork\" alt=\"Album Cover\"></p>
          <footer class='myfooter'>
          <p>Year: {$year}</p>
          <p>Rank: {$rank}</p>
          </footer></article></span></div>";
    }

    echo "</div></div>";
    ?>

</body>

</html>
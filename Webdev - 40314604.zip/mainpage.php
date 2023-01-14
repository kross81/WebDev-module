<?php

include("dbconn.php");
include("filter.php");

session_start();
include("api/processlogin.php");
include("api/adminauth.php");
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

if ($conn) {

  $endpoint = "http://jross18.webhosting6.eeecs.qub.ac.uk/project/api/cardpop.php";
  $result = file_get_contents($endpoint);
  $data = json_decode($result, true);
}

?>

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ALBUMS</title>
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
        echo "<div><a href='signup.php' class='pseudo button'><button id='button'>SIGN UP</Button></a>
        <a href='home.php' class='pseudo button'><button id='button'>HOME</Button></a>";
      } else {
        echo "<a href='mydetails.php' class='pseudo button'><button id='button'>MY PROFILE</Button></a>
        <a href='logout.php' class='pseudo button'><button id='button'>LOGOUT</Button></a>";
      }

      if ($adminextra) {
        echo "<a href='admintodo.php' class='pseudo button'><button id='button'>ADMIN</Button></a>";
      }
      ?>
    </div>
  </nav>

  <div id="jumbo"></div>

  <div id="containerb">
  <nav id="mynav">
			<ul id="mynav">
				<?php

					$navbar = displaynav();

				?>
			</ul>
		</nav>
</div>


        
    <?php

    echo

    "<div>   
    <div id='dynamic'></div>   
    <div class='flex two three-600 four-1200' id='newrows'>";

// iterate and use the data
foreach($data as $row) {

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
              <p>Rank: {$rank}</p>
              </footer></article></span></div>";
}

echo "</div></div>";

    ?>

    </div>
    
</body>

</html>
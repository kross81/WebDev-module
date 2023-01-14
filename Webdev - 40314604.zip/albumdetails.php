<?php

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


$albumid = htmlentities($_GET['album_id']);

$currentid = $_GET['album_id'];

if ($conn) {
  $joinquery = "SELECT album.album_id, album.rank, album.album_name, album.artist, album.artwork_url, years.year, genre.genre_name
     FROM album INNER JOIN years ON album.year_id = years.year_id INNER JOIN genre ON album.genre_id = genre.genre_id
     WHERE album.album_id = '$currentid'";


  $result = mysqli_query($conn, $joinquery);

  if (!$result) {
    echo $conn->error;
  }
}

$reviewquery = "SELECT  user.first_name, review FROM user_review INNER JOIN user ON user_review.user_id = user.user_id 
INNER JOIN album ON user_review.album_id = album.album_id WHERE album.album_id = '$albumid'"; 

$result0 = mysqli_query($conn, $reviewquery);

if (!$result0) {
  echo $conn->error;
}

$checkreview = "SELECT * FROM user_review INNER JOIN user ON
user_review.user_id = user.user_id WHERE email = '$currentUser' AND album_id = '$currentid' ";


$result1 = $conn->query($checkreview);

if (!$result1) {
  echo $conn->error;
}

$num = $result1->num_rows;

if ($num > 0) {
  $reviewfound = true;
} else {
  $reviewfound = null;
}

$checkfav = "SELECT * FROM favourite INNER JOIN user ON
favourite.user_id = user.user_id WHERE email = '$currentUser' AND album_id = '$currentid' ";

$result2 = $conn->query($checkfav);
$num1 = $result2->num_rows;

if ($num1 > 0) {
  $favfound = true;
} else {
  $favfound = null;
}

$checkown = "SELECT * FROM owned INNER JOIN user ON
owned.user_id = user.user_id WHERE email = '$currentUser' AND album_id = '$currentid' ";

$result3 = $conn->query($checkown);
$num3 = $result3->num_rows;

if ($num3 > 0) {
  $ownfound = true;
} else {
  $ownfound = null;
}

$checkrating = "SELECT * FROM rating INNER JOIN user ON
rating.user_id = user.user_id WHERE email = '$currentUser' AND album_id = '$currentid' ";

$result4 = $conn->query($checkrating);
$num4 = $result4->num_rows;

while ($row = $result4->fetch_assoc()) {
  $rating = $row['rating'];
}
if ($num4 > 0) {
  $ratingfound = true;
} else {
  $ratingfound = null;
}

$averagerating = " SELECT AVG(rating) AS average from rating WHERE album_id = '$currentid';";
$result5 = $conn->query($averagerating);

while ($row = $result5->fetch_assoc()) {
  $avgrating = $row['average'];
}
if ($avgrating > 0) {
  $avgratingfound = true;
} else {
  $avgratingfound = null;
}
?>

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ALBUM DETAILS</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/picnic">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="ui.css">

  <script>
    function clicked(e) {
      if (!confirm('Are you sure?')) {
        e.preventDefault();
      }
    }
  </script>
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

      if (!$showBtn && !$adminextra) {
        echo "
        <a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
        <a href='signup.php' class='pseudo button'><button id='button'>SIGN UP</Button></a>
        <a href='home.php' class='pseudo button'><button id='button'>HOME</Button></a>";
      } else {
        echo "
        <a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
        <a href='mydetails.php' class='pseudo button'><button id='button'>MY PROFILE</Button></a>
        <a href='logout.php' class='pseudo button'><button id='button'>LOGOUT</Button></a>";
      }

      if ($adminextra) {
        echo "<a href='admintodo.php' class='pseudo button'><button id='button'>ADMIN</Button></a>";
      }
      ?>
    </div>
  </nav>

  <?php

  // iterate and use the data

  while ($row = $result->fetch_assoc()) {

    $albumid = $row['album_id'];
    $rank = $row['rank'];
    $album = $row['album_name'];
    $artist = $row['artist'];
    $year = $row['year'];
    $genre = $row['genre_name'];
    $artwork = $row['artwork_url'];

    echo "<div style='width: 35%; float: left'>
            <div>
            <h1></h1>
            <h1>$album</h1>
            <img  id='picsize' src=\"$artwork\" alt=\"Album Cover\">
            <h2>Artist: $artist</h2>
            <h3>Album: $album</h3>
            <p>Rank: $rank / 500</p>
            <p>Release Date: $year</p>
            <p>Genre: $genre</p>
            </div>
        </div>";
  }


  while ($row = $result1->fetch_assoc()) {
    $review = $row['review'];
  }
  if (!$showBtn && !$adminextra) {
    echo "<div id='box'><h1></h1>
    <h2>PLEASE LOGIN FOR FAVOURITES AND REVIEWS</h2>
        <div id='buttonposition'><a href='home.php' class='pseudo button'><button id='button'>HOME - LOGIN</Button></a>
        <a href='signup.php' class='pseudo button'><button id='button'>SIGN UP</Button></a></div>";
  } else {

    echo "<div id='box'><h2 class='center'>Your interaction with this album :</h2>";

    if ($favfound === true) {
      echo " <div id='box'><h2>&#10084This album is in your favourites&#10084</h2></div>";
    } else if ($favfound === null) {
      echo "<div id='box'>
    <form action= 'api/processlike.php' method = 'POST'>
    <h3>Check this box and click the button to add this album to your favourites</h3>
    <label style='display:none';><input type='text' name='user' placeholder='Current user: $currentUser' value= $currentUser ></label>
    <label style='display:none';><input type='text' name='album' placeholder=' Album id: $currentid' value= $currentid ></label>
    <input id='checkboxdemo' type='checkbox'>
    <label id='checkboxdemo' name='yes' for='checkboxdemo' class='checkable'>Click Here</label>
    <button class='pseudo button'><button id='button' value='SUBMIT'>FAV THIS</Button>
    </form></div>";
    }

    if ($ownfound === true) {
      echo " <div id='box'><h2>&#163You own this album&#163</h2></div>";
    } else if ($ownfound === null) {
      echo "<div id='box'>
<form action= 'api/processown.php' method = 'POST'>
<h3>Check this box and click the button to put this album in your owned list</h3>
<label style='display:none';><input type='text' name='user' placeholder='Current user: $currentUser' value= $currentUser ></label>
<label style='display:none';><input type='text' name='album' placeholder=' Album id: $currentid' value= $currentid ></label>
<input id='checkbox2' type='checkbox'>
<label id='checkboxdemo' name='own' for='checkbox2' class='checkable'>Click Here</label>
<button class='pseudo button' float: left;><button id='button' value='SUBMIT'>OWN THIS</Button>
</form></div>";
    }

    if ($ratingfound === true) {
      echo " <div id='box'><h2>&#9733You gave this album a rating of $rating/5 &#9733</h2></div>";
    } else if ($ratingfound === null) {
      echo "<div id='box'>
<form action= 'api/processrating.php' method = 'POST'>
<h3>Give this album a rating out of 5</h3>
<label style='display:none';><input type='text' name='user' placeholder='Current user: $currentUser' value= $currentUser ></label>
<label style='display:none';><input type='text' name='album' placeholder=' Album id: $currentid' value= $currentid ></label>
<label><input id='smallbox'; type='number' min='0' max='5' name='rating' placeholder='0-5'></label>
<button class='pseudo button' float: left;><button id='button' value='SUBMIT'>Rate</Button>
</form></div>";
    }

    if ($avgratingfound === true) {
      echo " <div><h2>This album has an average rating of $avgrating</h2></div>";
    } else if ($avgratingfound === null) {
      echo "<div><h2>not enough ratings for average rating yet</h2></div>";
    }
    
    echo "</div>";

    if ($reviewfound === true) {
      echo "<div id ='boxleft'></h1><h2> YOUR REVIEW FOR THIS ALBUM: </h2>
                      <div id='divborder'>$review</div></div>";
    } else if ($reviewfound === null) {
      echo "<div id>
    
      <form action = 'api/processtodo.php' method = 'POST'>
        <label style='display:none';><input type='text' name='user' placeholder='Current user: $currentUser' value= $currentUser ></label>
        <label style='display:none';><input type='text' name='album' placeholder=' Album id: $currentid' value= $currentid ></label>
        <textarea name='review' placeholder='Type your review' maxlength = '250'></textarea>
        <button class='pseudo button'><button id='button' value='SUBMIT'>SUBMIT</Button>
      </form>
      </div>";
    }


    if ($showBtn || $adminextra) {
      echo "<h3 id ='box'>reviews by all users : </h3>";
    while ($row = $result0->fetch_assoc()) {
          $reviewuser = $row['first_name'];
          $allreview = $row['review'];

     echo " <div>
     <ul><div> Review by $reviewuser :</div>
     $allreview</ul>
     </div>";
    }
    }



    echo "<h1></h1>";

    if ($adminextra) {
      echo "<div id='boxleft'> ADMIN ONLY / DELETE THIS ALBUM </div>
      <form action = 'api/deletealbum.php' method = 'POST'>
        <label><input type='hidden' name='album' placeholder=' Album id: $currentid' value= $currentid ></label>
        <button class='pseudo button'><button id='button'  onclick='return clicked(event)' value='SUBMIT'>SUBMIT</Button>
      </form></div>";;
    }
  }


  ?>

</body>

</html>
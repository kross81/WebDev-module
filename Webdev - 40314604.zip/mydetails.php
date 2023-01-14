<?php


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
  header('Location: home.php');
}

$sql = "SELECT * FROM `user` WHERE `email`=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $currentUser);
$stmt->execute();
$result1 = $stmt->get_result();

if (!$result1) {
  echo "0 results";
} else {
  // output data of each row
  while ($row = $result1->fetch_assoc()) {
    $userid = $row['user_id'];
    $firstname =  $row['first_name'];
    $surname =  $row['surname'];
    $email = $row['email'];
    $userpass = $row['password'];
  }
}

$favquery = "SELECT * FROM `favourite` INNER JOIN album ON favourite.album_id = album.album_id WHERE `user_id` = $userid";
$result2 = mysqli_query($conn, $favquery);

if (!$result2) {
  echo $conn->error;
}

$ownquery = "SELECT * FROM `owned` INNER JOIN album ON owned.album_id = album.album_id WHERE `user_id` = $userid";
$result3 = mysqli_query($conn, $ownquery);

if (!$result3) {
  echo $conn->error;
}

$reviewquery = "SELECT * FROM `user_review` INNER JOIN album ON user_review.album_id = album.album_id WHERE `user_id` = $userid";
$result4 = mysqli_query($conn, $reviewquery);

if (!$result4) {
  echo $conn->error;
}
?>

<!DOCTYPE html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profile</title>
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
     
        echo "<a href='mainpage.php' class='pseudo button'><button id='button'>MAIN</Button></a>
        <a href='logout.php' class='pseudo button'><button id='button'>LOGOUT</Button></a>";
      

      if ($adminextra) {
        echo "<a href='admintodo.php' class='pseudo button'><button id='button'>ADMIN</Button></a>";
      }


      ?>
    </div>
  </nav>


  <?php
  include("dbconn.php");


  echo "<div id='box'>
  <h1>Welcome Back $firstname </h1>
</div>"
  ?>

  <div>
    <h2>Your details</h2>
  </div>


  <div>
    <h3>First name : <?php echo "  $firstname   " ?><button id="smallbutton" onclick="document.getElementById('revealForm').style.display='flex'">EDIT</button></h3>
  </div>
  <fieldset id="revealForm" style="display:none;">
    <form action='api\processedit\first.php' form method="POST">
      <label><input type='hidden' name='user_id' value=<?php echo "  $userid  " ?>></label>
      <label><input type='hidden' name='surname' value=<?php echo "  $surname   " ?>></label>
      <label><input type='hidden' name='email' value=<?php echo "  $email   " ?>></label>
      <label><input type='hidden' name='password' value=<?php echo "  $userpass   " ?>></label>
      <label><input type='text' name='first_name' placeholder='Edit firstname'></label>
      <input type='submit' id='button' name='submit' value='Submit'>
    </form>
  </fieldset>

  <div>
    <h3>Surname : <?php echo "  $surname   " ?><button id="smallbutton" onclick="document.getElementById('revealForm2').style.display='flex'">EDIT</button></h3>
  </div>
  <fieldset id="revealForm2" style="display:none;">
    <form action='api\processedit\surname.php' form method="POST">
      <label><input type='hidden' name='user_id' value=<?php echo "  $userid  " ?>></label>
      <label><input type='hidden' name='first_name' value=<?php echo "  $firstname   " ?>></label>
      <label><input type='hidden' name='email' value=<?php echo "  $email   " ?>></label>
      <label><input type='hidden' name='password' value=<?php echo "  $userpass   " ?>></label>
      <label><input type='text' name='surname' value='submit' placeholder='surname'></label>
      <input id="button" type="submit" name="submit" value="Submit">
    </form>
  </fieldset>

  <div>
    <h3>Email : <?php echo "  $email   " ?></h3>
  </div>

  <div>
    <h3>Password : <?php echo "  $userpass   " ?><button id="smallbutton" onclick="document.getElementById('revealForm4').style.display='flex'">RESET</button></h3>
  </div>
  <fieldset id="revealForm4" style="display:none;">
    <form action='api\processedit\password.php' form method="POST">
      <label><input type='hidden' name='user_id' value=<?php echo "  $userid  " ?>></label>
      <label><input type='hidden' name='first_name' value=<?php echo "  $firstname   " ?>></label>
      <label><input type='hidden' name='email' value=<?php echo "  $email   " ?>></label>
      <label><input type='hidden' name='surname' value=<?php echo "  $surname   " ?>></label>
      <div id="myForm">
                    <label for="password" id="passwordLabel">* Password:</label>
                    <input type="password" name="password" id="password" minlength=1 required />
            
                    <label for="passwordConfirm" id="passwordLabelConfirm">* Password Confirmation:</label>
                    <input type="password" name="passwordConfirm" id="passwordConfirm" minlength=1 required />
                    <span id="message"></span>
    
                    <input id="submit" type="submit" name="submit" value="Submit" />
                </div>
    </form>
  </fieldset>


  <div>
    <h2>Albums youve interacted with :</h2>
  </div>

  <div style="display:flex">
  <div id="divborder">

    <?php
    echo "Favourited albums";
    while ($row2 = $result2->fetch_assoc()) {
      $album = $row2['album_name'];
      $artist = $row2['artist'];


      echo "<li> $album by $artist </li>";
    }
    ?>
  </div>


  <div id="divborder">
    <?php
    echo "Owned albums";
    while ($row3 = $result3->fetch_assoc()) {
      $album = $row3['album_name'];
      $artist = $row3['artist'];


      echo "<li> $album by $artist </li>";
    }
    ?>
  </div>

  <div id="divborder">
    <?php
    echo "Reviewed albums";
    while ($row4 = $result4->fetch_assoc()) {
      $album = $row4['album_name'];
      $artist = $row4['artist'];


      echo "<li> $album by $artist </li>";
    }
    ?>
  </div>

  </div>

    
    <div id="boxleft">
    <div id="boxleft">
      <h2> Permanantly delete account</h2>
      <h3> Click here to permanantly delete account</h3>
      <div>
        <fieldset">
          <form action='api\deleteaccount.php' form method="POST">
            <label><input type='hidden' name='user_id' value=<?php echo "  $userid  " ?>></label>
            <input type="submit" id="button" onclick="return clicked(event)" value="Submit">
          </form>
          </fieldset>
      </div>
      </div>
  
</body>


</html>

<script>
  $('form').validate();
  </script>

  <script>

$('#password, #passwordConfirm').on('keyup', function() {
  if ($('#password').val() == $('#passwordConfirm').val()) {
    $('#message').html('Matching').css('color', 'green');
    $('#submit').prop('disabled', false);
  } else {
    $('#message').html('Not Matching').css('color', 'red');
    $('#submit').prop('disabled', true);
  }
});
</script>
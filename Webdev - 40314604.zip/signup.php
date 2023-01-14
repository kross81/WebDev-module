<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGN UP</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/picnic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>
    </script>
    <script src='//cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.js'>
    </script>
    <script src="//cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js">
    </script>
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
            <a href="home.php" class="pseudo button"><button id="button">HOME</Button></a>
            <a href="signup.php" class="pseudo button"><button id="button">SIGN UP</Button></a>
        </div>
    </nav>

    <h1></h1>

    <h1 text-align: center> To register for an account, Enter your details and press submit</h1>

    <fieldset id="myForm" class="flex two-300">
        <form action='api/reguser.php' form method="POST">
            <ul>
                <div>
                    <label><input type="text" name="first_name" placeholder="Name" minlength=1 required></label>
                </div>
                <div>
                    <label><input type="text" name="surname" placeholder="Surname" minlength=1 required></label>
                </div>
                <div>
                    <label><input type="email" name="email" placeholder="Email" minlength=1 required></label>
                </div>
                <div>
                    <label for="password" id="passwordLabel">* Password:</label>
                    <input type="password" name="password" id="password" minlength=1 required />
            
                    <label for="passwordConfirm" id="passwordLabelConfirm">* Password Confirmation:</label>
                    <input type="password" name="passwordConfirm" id="passwordConfirm" minlength=1 required />
                    <span id="message"></span>
    
                    <input id="submit" type="submit" name="submit" value="Submit" />
                </div>
            </ul>
        </form>
    </fieldset>




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
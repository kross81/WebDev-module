<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/picnic">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="ui.css">
</head>

<script>
    function openForm() {
        document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
        document.getElementById("myForm").style.display = "none";
    }
</script>

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

    <div id="jumbo"></div>


    <div id="sidebar">
        <div id="centre">
            <div><a href="mainpage.php"><button id="button" title="view site with limited functions">GUEST</Button></a></div>
            <div><button id="button" onclick="document.getElementById('revealForm').style.display='flex'" title="login for full functionality">LOGIN</button></div>
            <div><button id="button" onclick="document.getElementById('revealForm2').style.display='flex'" title="for admin only">ADMIN LOGIN</button></div>

        </div>
    </div>


    <fieldset id="revealForm" style="display:none;">
        <form action='api/processlogin.php' form method="POST">
            <div id="justifydiv">
                <div>User</div>
                <div id="justifydiv">
                    <label id="labelfloat"><input type="email" name="email" placeholder="Email"></label>
                    <label id="labelfloat"><input type="password" name="password" placeholder="Password"></label>
                    <div>
                        <input type="submit" id="button" name="submit" value="Submit">
                    </div>
                </div>
            </div>
        </form>
    </fieldset>

    <div>
        <fieldset id="revealForm2" style="display:none;">
            <form action='api/adminauth.php' form method="POST">
                <div id="justifydiv">
                    <div>Admin</div>
                    <div id="justifydiv">
                        <label id="labelfloat"><input type="email" name="email" placeholder="Email"></label>
                        <label id="labelfloat"><input type="password" name="password" placeholder="Password"></label>
                    </div>
                    <div>
                        <input type="submit" id="button" name="submit" value="Submit">
                    </div>
                </div>
            </form>
        </fieldset>
    </div>


</body>

</html>
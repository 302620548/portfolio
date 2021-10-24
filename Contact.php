<?php
$message_sent = false;
if(isset($_POST['email']) && $_POST['email'] != ''){

    if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
        $userName = $_POST['name'];
        $userEmail = $_POST['email'];
        $messageSubject = $_POST['subject'];
        $message = $_POST['message'];

        $to = "302620548@student.rocmondriaan.nl";
        $body = " ";

        $body .= "From: ".$userName. "\r\n";
        $body .= "Email: ".$userEmail. "\r\n";
        $body .= "Message: ".$message. "\r\n";

        mail($to,$messageSubject,$body);

    }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/contact.css" media="all">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/body.css">
    <script src="js/contact.js"></script>

</head>
  <div class="jumbotron text-center">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <a href="Home.HTML">
                    <img class="logo" src="Pictures/profile pic.png" alt="showing Logo" width="100" height="auto">
                </a>
            </div>
            <div class="col-sm-6">
                <ul class="NavLinks">
                    <li><a href="Home.HTML">Home</a></li>
                    <li><a href="projects.php">Projects</a></li>
                    <li><a href="about.HTML">About</a></li>
                    <li><a href="Contact.php">Contact</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <button class="themeToggle">Themes Toggle</button>
            </div>
        </div>
    </div>
</div>

    <div class="container">
        <h1>Contact</h1>
        <img src="Pictures/Gmail icon.png" alt="Mail icon" height="30px">
        <p>
            U kunt mij e-mailen op 302620548@student.rocmondriaan.nl
        </p>
    </div>

  <div class="container email-container">
      <form action="email.php" method="POST" class="form">
          <div class="form-group">
              <label for="name" class="form-label">Your Name</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Naam" dex="1" required>
          </div>
          <div class="form-group">
              <label for="email" class="form-label">Your Email</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="naam@mail.com" tabindex="2" required>
          </div>
          <div class="form-group">
              <label for="subject" class="form-label">Subject</label>
              <input type="text" class="form-control" id="subject" name="subject" placeholder="Onderwerp" tabindex="3" required>
          </div>
          <div class="form-group">
              <label for="message" class="form-label">Message</label>
              <textarea class="form-control" rows="5" cols="50" id="message" name="message" placeholder="Bericht..." tabindex="4"></textarea>
          </div>
          <div>
              <button type="submit" class="btn">VERZEND</button>
          </div>
      </form>
  </div>
    







    <footer class="text-center text-lg-start">
        <div class="text-center">
        <p>Daniel Möller</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
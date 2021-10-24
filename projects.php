<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/body.css">

    <title>Mijn portfolio! - Projecten</title>

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
        <h1>Projecten</h1>
        <p>
            Dit zijn bijna alle projected waar it tot nu toe aan heb gewerkt:
        </p>

        <?php
        try {
            $db= new PDO ("mysql:host=localhost;dbname=portfolio", "root","");
            $query = $db ->prepare("SELECT * FROM projects");
            $query-> execute();
            $result = $query-> fetchAll(PDO::FETCH_ASSOC);
            $i = 0;
            foreach ($result as $data):
                if ($i === 0 || $i === 3) {
                    echo '<div class="row">';
                }
                ?>
            <div class="col-md-4">
                <div class="card h-100">
                    <img class="card-img-top img-fluid" src="<?php echo $data["picture"]?>" width="400" height="auto" alt="Photo van kaarten">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $data["name"]?></h5>
                        <p class="card-text"><?php echo $data["description"]?></p>
                        <br>
                        <a href="<?php echo $data["project_link"]?>" class="btn btn-dark">Het Project:</a>
                    </div>
                </div>
            </div>

            <?php
                if ($i == 2 || $i == 5) {
                    echo '</div> <br>';

                }
                $i++;
            endforeach;
        } catch (PDOException $e){
            die("ERROR!:" . $e->getMessage());
        }
        ?>

    </div>
    
    
    <footer class="text-center text-lg-start">
        <div class="text-center">
        <p>Daniel Möller</p>
        </div>
    </footer>  

    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
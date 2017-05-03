<?php
  session_start();

  // CREATE USER 'parkir'@'localhost' IDENTIFIED BY 'parkir';
  // CREATE DATBASE parkir;
  // GRANT ALL PRIVILEGES ON parkir.* TO 'parkir'@'localhost' WITH GRANT OPTION;
  $servername = "localhost";
  $username = "parkir";
  $password = "parkir";
  $dbname = "parkir";
  $conn = new mysqli($servername, $username, $password, $dbname);

  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }


?>

<!-- html section -->
<DOCTYPE! html>
<html>
  <header>
    <title> xxx | Parkir Kendaraan </title>
    <meta charset = "UTF-8">
		<meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
  </header>
  <body>
    <!-- nav header -->
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#"><img src="logo.png"></a>
        </div>
        <ul class="nav navbar-nav" id="logout">
          <li><a href="index.php">Logout</a></li>
        </ul>
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Parkir</a></li>
          <li><a href="pelanggaran.php">Pelanggaran</a></li>
        </ul>
      </div>
    </nav>

    <!-- masuk parkir -->
    <div class="row">
      <div class="form-input col-md-12">
        <h2>Masuk Parkir</h2>
        <br>
        <div class="form-parkir">
          <form>
            <div class="form-group">
              <label for="tempat-parkir">Tempat Parkir</label>
              <select class="form-control" name="tempat-parkir" id="tempat-parkir">
                <?php
                  $result = $conn->query("SELECT Lokasi FROM lokasi ORDER BY Lokasi");

                  if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                      echo "<option value=" . $row['Lokasi'] . ">" . $row['Lokasi'] . "</option>";
                    }
                  }
                ?>
              </select>
            </div>
            <div class="form-group">
              <label class="radio-inline"><input type="radio" name="type">Datang</label>
              <label class="radio-inline"><input type="radio" name="type">Keluar</label>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>

<!-- style section -->
<style type="text/css">
  body {
    background-color: rgba(0,0,0,0.35);
  }
  nav h1 {
    text-align: center;
    color: white;
  }
  img {
    height: 25px;
  }
  .row {
    margin: 0 50px;
  }
  .form-input {
    border: 2px solid black;
    border-radius: 10px;
  }
  button {
    width: 100px;
  }
  #logout {
    float: right;
    background-color: rgba(255,255,255,0.05);
  }
</style>

<!-- script section -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

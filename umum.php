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

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($_POST['type'] == "datang") {
    	date_default_timezone_set('Asia/Jakarta');
    	$datex = date('d-m-Y H:i:s');
      $noplat = $_POST['no-kendaraan'];
      $result = $conn->query("
        INSERT INTO transaksimahasiswaumum(JamMasuk, NomorPlat)
        VALUES ('$datex', '$noplat')
      ")
    } else if ($_POST['type'] == "keluar") {

    }

    $user_id = $conn->query("
      SELECT UserID FROM Users
      WHERE Username = '$username' AND Password = '$password'
    ")->fetch_array(MYSQLI_ASSOC)['UserID'];

    if ($user_id) { // logged in
      $_SESSION['username'] = $username;
      header("Location: parkir.php");
      $conn->close();
      die();
    } else {
      $error = true;
    }
    $conn->close();
  }
?>

<!-- html section -->
<DOCTYPE! html>
<html>
  <header>
    <title> xxx | Parkir Umum </title>
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
          <li class="active"><a href="#">Umum</a></li>
          <li><a href="staff.php">Staff</a></li>
          <li><a href="tamu.php">Tamu</a></li>
        </ul>
      </div>
    </nav>

    <div class="row">
      <div class="col-md-6">
        <div class="form-input col-md-12">
          <h2>Datang</h2>
          <br>
          <div class="form-datang">
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
              <div class="form-group">
                <label for="no-kendaraan">No. Kendaraan</label>
                <input type="text" class="form-control" id="no-kendaraan" name="no-kendaraan">
              </div>
              <div class="form-group">
                <label for="jam-datang">Waktu Kedatangan</label><br>
                <div class="row waktu-input">
                  <div class="col-md-6">
                    <input type="number" class="form-control" id="jam-datang" name="jam-datang" min="0" max="23" placeholder="Jam">
                  </div>
                  <div class="col-md-6">
                    <input type="number" class="form-control" id="menit-datang" name="menit-datang" min="0" max="59" placeholder="Menit">
                  </div>
                </div>
              </div>
              <br>
              <input type="hidden" name="type" value="datang">
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-input col-md-12">
          <h2>Keluar</h2><br>
          <div class="form-datang">
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
              <div class="form-group">
                <label for="no-kendaraan">No. Kendaraan</label>
                <input type="text" class="form-control" id="no-kendaraan" name="no-kendaraan">
              </div>
              <div class="form-group">
                <label for="jam-keluar">Waktu Keluar</label><br>
                <div class="row waktu-input">
                  <div class="col-md-6">
                    <input type="number" class="form-control" id="jam-datang" name="jam-keluar" min="0" max="23" placeholder="Jam">
                  </div>
                  <div class="col-md-6">
                    <input type="number" class="form-control" id="menit-datang" name="menit-keluar" min="0" max="59" placeholder="Menit">
                  </div>
                </div>
              </div>
              <br>
              <input type="hidden" name="type" value="keluar">
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
          </div>
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
  .waktu-input {
    width: 100%;
    margin-left: -15px;
  }
  #logout {
    float: right;
    background-color: rgba(255,255,255,0.05);
  }
</style>

<!-- script section -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

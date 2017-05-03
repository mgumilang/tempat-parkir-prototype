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
      echo 'tlol';
    	date_default_timezone_set('Asia/Jakarta');
    	$datex = date('Y-m-d H:i:s');
      $staff_id = $_POST['id-staff'];
      $kepentingan = $_POST['kepentingan'];

      $res_tamu_transaksi = $conn->query("
        INSERT INTO TransaksiStaffTamu(JamMasuk, StaffID, Kepentingan, PetugasID)
        VALUES ('$datex', $staff_id, '$kepentingan', 1)
      ");
      echo 'horre';
    } else if ($_POST['type'] == "keluar") {
    	date_default_timezone_set('Asia/Jakarta');
      $datex = date('Y-m-d H:i:s');
      $staff_id = $_POST['id-staff'];

      $sql = "
        UPDATE TransaksiStaffTamu
        SET JamKeluar = '$datex'
        WHERE StaffID = $staff_id
      ";
      if (mysqli_query($conn, $sql)) {

      } else {
        echo "Error updating record: " . mysqli_error($conn);
      }
    }
    $conn->close();
  }
?>
<!-- html section -->
<DOCTYPE! html>
<html>
  <header>
    <title> xxx | Parkir Staff </title>
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
          <li><a href="umum.php">Umum</a></li>
          <li class="active"><a href="#">Staff</a></li>
          <li><a href="tamu.php">Tamu</a></li>
          <li><a href="daftarpelanggaran.php">Pelanggaran</a></li>
        </ul>
      </div>
    </nav>

    <div class="row">
      <div class="col-md-6">
        <div class="form-input col-md-12">
          <h2>Datang</h2>
          <br>
          <div class="form-datang">
            <form method="POST" action="staff.php">
              <div class="form-group">
                <label for="id-staff">ID Staff</label>
                <input type="text" class="form-control" id="id-staff" name="id-staff">
              </div>
              <div class="form-group">
                <label for="kepentingan">Kepentingan</label>
                <input type="text" class="form-control" id="kepentingan" name="kepentingan">
              </div>
              <input type="hidden" name="type" value="datang">
              <br>
              <button type="submit" class="btn btn-default">Submit</button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-input col-md-12">
          <h2>Keluar</h2><br>
          <div class="form-datang">
            <form method="POST" action="staff.php">
              <div class="form-group">
                <label for="no-kendaraan">ID Staff</label>
                <input type="text" class="form-control" id="id-staff" name="id-staff">
              </div>
              <input type="hidden" name="type" value="keluar">
              <br>
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

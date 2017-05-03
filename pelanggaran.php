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
    <title> xxx | Pelanggaran Kendaraan </title>
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
          <li><a href="parkir.php">Parkir</a></li>
          <li class="active"><a href="#">Pelanggaran</a></li>
        </ul>
      </div>
    </nav>

    <!-- masuk parkir -->
    <div class="row">
      <div class="form-input col-md-12">
        <h2>Pelanggaran</h2>
        <br>
        <div class="form-parkir">
          <form>
            <div class="form-group">
              <label for="no-kendaraan">ID</label>
              <input type="text" class="form-control" id="no-kendaraan" name="no-kendaraan">
            </div>
            <div class="form-group">
              <label for="pelanggaran">Status Pelanggaran</label>
              <select class="form-control" id="status" name="status">
                <option value="Melanggar, belum ditelepon">Melanggar, belum ditelepon</option>
                <option value="Melanggar, sudah ditelepon">Melanggar, sudah ditelepon</option>
                <option value="Perlu dikunci">Perlu dikunci</option>
                <option value="Sudah dikunci">Sudah dikunci</option>
                <option value="Masalah selesai">Masalah selesai</option>
              </select>
            </div>
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>

    <br>
    <br>

    <!-- Daftar pelanggaran -->
    <div class="row">
      <div class="form-input col-md-12">
        <h2>Daftar Pelru Dikunci</h2>
        <br>
        <div class="container-fluid">
          <table>
            <thead>
              <tr>
                <th>ID</th>
                <th>No. Telepon</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $result = $conn->query("SELECT * FROM transaksistafftamu NATURAL JOIN pelanggaran WHERE Status = 'Perlu dikunci'");
                while ($row = $result->fetch_assoc()) {
                  echo "<tr>";
                  echo "<td>" . $row['TransaksiStaffTamuID'] . "</td>";
                  echo "<td>" . $row['StaffID'] . "</td>";
                  echo "</tr>";
                }
              ?>
            </tbody>
          </table>
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

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
              <label for="no-kendaraan">No. Kendaraan</label>
              <input type="text" class="form-control" id="no-kendaraan" name="no-kendaraan">
            </div>
            <div class="form-group">
              <label for="tempat-parkir">Tempat Parkir</label>
              <select class="form-control" name="tempat-parkir" id="tempat-parkir">
                <option value="a"></option>
                <option value="b"></option>
                <option value="c"></option>
                <option value="d">Gubuk Azka</option>
                <option value="e">Rumah Rangga</option>
                <option value="f">Rumah Gumi</option>
              </select>
            </div>
            <br>
            <input type="hidden" value="checkin">
            <button type="submit" class="btn btn-primary">Check In</button>
          </form>
        </div>
      </div>
    </div>
    <br>
    <!-- keluar parkir -->
    <div class="row">
      <div class="form-input col-md-12">
        <h2>Keluar Parkir</h2>
        <br>
        <div class="form-parkir">
          <form>
            <div class="form-group">
              <label for="no-kendaraan">No. Kendaraan</label>
              <input type="text" class="form-control" id="no-kendaraan" name="no-kendaraan">
            </div>
            <br>
            <input type="hidden" value="checkout">
            <button type="submit" class="btn btn-primary">Check Out</button>
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
</style>

<!-- script section -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

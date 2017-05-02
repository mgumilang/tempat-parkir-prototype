<!-- html section -->
<DOCTYPE! html>
<html>
  <header>
    <title> xxx | Parkir Tamu </title>
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
          <li><a href="staff.php">Staff</a></li>
          <li class="active"><a href="#">Tamu</a></li>
        </ul>
      </div>
    </nav>

    <div class="row">
      <div class="col-md-6">
        <div class="form-input col-md-12">
          <h2>Datang</h2>
          <br>
          <div class="form-datang">
            <form>
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
              <div class="form-group">
                <label for="id-tamu">ID</label>
                <input type="text" class="form-control" id="id-tamu" name="id-tamu">
              </div>
              <div class="form-group">
                <label for="instansi">Instansi</label>
                <input type="text" class="form-control" id="instansi" name="instansi">
              </div>
              <div class="form-group">
                <label for="kepentingan">Kepentingan</label>
                <input type="text" class="form-control" id="kepentingan" name="kepentingan">
              </div>
              <div class="form-group">
                <label for="no-telp">No. Telp</label>
                <input type="text" class="form-control" id="no-telp" name="no-telp">
              </div>
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
            <form>
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

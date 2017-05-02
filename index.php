<!-- html section -->
<DOCTYPE! html>
<html>
  <header>
    <title> xxx | Login </title>
    <meta charset = "UTF-8">
		<meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
  </header>
  <body>
    <!-- nav header -->
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <h1>WELCOME</h1>
      </div>
    </nav>

    <!-- logo -->
    <img src="img/logo-tercintah.jpg">

    <!-- login -->
    <div class="login">
      <form>
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>
      </form>
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
    display: block;
    margin: 2em auto 0 auto;
    width: 250px;
    height: 250px;
  }
  .login {
    margin: 2.5em 25em 0 25em;
  }
  .form-group {
    padding: 0.5em 0 0.5em 0;
  }
  form label {
    display: block;
    text-align: center;
    font-size: 1.5em;
  }
  form input {
    text-align: center;
  }
</style>

<!-- script section -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>

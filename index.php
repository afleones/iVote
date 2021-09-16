<?php
  require_once 'model/reloj.php';
  require_once 'model/datosGraf_3.php';
  require_once 'model/datosGraf_4.php';
  require_once 'model/datosGraf_5.php';
  require_once 'model/datosGraf_6.php';
?>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style_login.css">
    <link rel="stylesheet" href="assets/css/style.css">
  	<link rel="icon" type="image/png" href="assets/img/favicon.ico"/>
  	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"> <!--en css font-family: 'Ubuntu', sans-serif;-->
  	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="assets/js/Chart.js"></script>
    <script type="text/javascript" src="assets/js/Chart.min.js"></script>
    <script type="text/javascript" src="assets/js/Chart.bundle.js"></script>
    <script type="text/javascript" src="assets/js/Chart.bundle.min.js"></script><!--GRAFICA-->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
      </script>

  <style type="text/css">
    *{
      font-family: 'Ubuntu', sans-serif;
    }
  </style>

    <title>Elecciones</title>
  </head>
  <body class="" style="background-image: url('assets/img/santillana.jpg');">
	<div class="container contenido">
    <div class="col-md-12" style="float: left;background-image: url('assets/img/.png');height: 730px;">
    <section id="login">
    <span><h1 style="font-size: 40px; color:black; ">Acceso a usuarios</h1></span>
    <div class="container text-center">
      <div class="row" style="width:auto;">
        <div class="col-md-4">

        </div>
        <div class="col-md-4 modal-content animate" style="width: auto;margin-left:33px; border-color: red;">
          <div class="login" style="width: auto;height:auto;">
            <br><br>
            <img class="img_login" src="assets/img/section_login.png" style="height: 200px;width: 200px;" alt="">
              <!-- formulario -->
              <form class="form-group" role="form" action="model/acceder.php" method="post" >
                <div class="form-group">
                  <label for="codigo" class="sr-only">Código</label>
                  <input type="text" name="codigo"  class="form-control" placeholder="Código Estudiantil" required="true">
                </div>

                <div class="form-group">
                  <label for="password" class="sr-only">Contraseña</label>
                  <input type="password" name="password"  class="form-control" placeholder="Contraseña(Documento)" required="true">
                </div>

                <button type="submit" name="button" class="btn btn-danger">Ingresar</button>
          </div> <!-- /.col-md-12 -->
        </div>
        <div class="col-md-4">

        </div>
      </div> <!-- /.row -->
    </div> <!-- /.container -->
  </section>
  </div>
  </div> <!-- /.container -->

  <div class="row">
    <div class="col-xs-2">
      <hr />
      <footer class="footer-distributed"></footer>
    </div>
  </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/funcionlogin.js"></script>

	</div>

  </body>
</html>

<body>
  <!-- INICIO DIV container mt-4 -->

  <div class="container mt-4">
    <div class="row">
      <div class="col-sm-12 mt-4">
        <h2 class="text-center ml-4">
            <img class="img-responsive" src="../../assets/img/banner.jpg" alt="banner Unisinu">
        </h2>
      </div>
    </div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
              <a style="font-size: 20px;" class="navbar-brand" href="">  <?php
                  echo $_SESSION["name"] . "  " . $_SESSION["name2"] . "  " . $_SESSION["ape1"] . "  " . $_SESSION["ape2"] . " - " . $_SESSION["id_usuario"];
                ?></a>
                <a style="font-size: 20px;" class="navbar-brand" href="#"><button onclick="sessionVot();" style="margin-top: -7px;" class="btn btn-danger" id="cerrar">
                  Cerrar Sesión
                </button></a>
          </div>
          <ul class="nav navbar-nav">
              <li style="font-size: 16px;" class="active"><a href="consejoFacultad.php">Consejos de Facultad</a></li>
          </ul>
        </div>
    </nav>

    <div class="panel" style="text-align: left; font-size: 16px;">
    <?php
        echo $time2 . ', '; echo date("g:i a", strtotime($time1));
    ?>
    </div>

    <div class="panel panel-default " style="font-family: 'Ubuntu', sans-serif;font-size: 18px;height: 490px;">
    <div class="panel-heading" style="height: 130px;">
      <br><center><h1 style="font-family: 'Ubuntu', sans-serif;font-size: 45px;">Bienvenido <?php echo $_SESSION["name"], " ", $_SESSION["ape1"]; ?> </h1></center><br><br><br>
    </div>

    <br><br>

    <div class="alert alert-danger">
      <strong>Recuerda! </strong>Este proceso solo puede ser realizado una vez.
    </div>

    <div class="alert alert-danger">
      <strong>No olvides!</strong> Escoge el candidato de tu preferencia.
    </div>

    <div class="alert alert-danger">
      <strong>Por último, </strong> Haz tu proceso de votación a conciencia
    </div>

    <center><button class="btn btn-danger center" style="font-family: 'Ubuntu', sans-serif;font-size: 22px;" onclick="window.location.href='consejoFacultad.php'">Siguiente</button></center>

    <ul>
    </ul>

  </div>

  </div>
  <!-- FIN DIV container mt-4-- ><br/>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../../assets/js/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/alertas.js"></script>
    <script src="../../assets/js/funcionvoto.js"></script>
  </body>
</html>

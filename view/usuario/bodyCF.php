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
              <a style="font-size: 20px;" class="navbar-brand" href="">
                <?php
                  echo $_SESSION["name"] . "  " . $_SESSION["name2"] . "  " . $_SESSION["ape1"] . "  " . $_SESSION["ape2"] . " - " . $_SESSION["id_usuario"];
                ?></a>
                <a style="font-size: 20px;" class="navbar-brand" href="#"><button onclick="cerrarSUS();" style="margin-top: -7px;" class="btn btn-danger" id="cerrar">
                  Cerrar Sesión
                </button></a>
          </div>
          <ul class="nav navbar-nav">
              <li style="font-size: 16px;" class="active"><a href="consejoFacultad.php">Consejos de Facultad</a></li>
          </ul>
        </div>
    </nav>

    <div class="panel" style="text-align: left; font-size: 16px;">

    </div>

    <div class="panel" style="text-align: left; font-size: 16px;">
      <?php
      echo $time2 . ', '; echo date("g:i a", strtotime($time1));
      ?>
    </div>

    <div class="panel panel-default panel-danger" style="font-size: auto; height: auto;">
    <div class="panel-heading" style="height: auto;">
        <br><center><h1 style="font-size: auto;">Consejo de Facultad <?php echo "'$nombreFacultad'"; ?></h1></center><br><br><br>
    </div>
    <ul>
      <?php
        for ($k=0;$k<$j;$k++){
          echo "<ul class='col-md-4 list-group list-group-horizontal-xl text-center'>";
          echo "<input class='chk' id='cb$k' name='chk[]' value='$idcandidato[$k]' type='radio' style='visibility:hidden';/>";
          echo "<label style=' border: 10px solid gray' for='cb$k' >";
          echo "<img style='width: auto;height: auto;' src='../../assets/img/candidatos/$foto[$k]'/>";
          echo  "<li class='list-group-item text-center'>$nom1[$k] $nom2[$k] <br>";
          echo  "$ape1[$k] $ape2[$k]<br><br>";
            if(empty($prog[$k])) {
              echo "<br><br><br><br>";
            }else {
              echo  "Programa:<br>$prog[$k]</li><br>";
            };
          echo "</ul>";
        }
      ?>
    </ul>
  </div>
  </div>
  <!--Boton votar-->
  <div class="d-flex justify-content-center mt-4">
    <center><button type="button" class="btn btn-danger" id="btn_id" name="boton" style="font-size: 20px;">VOTAR</button></center><br><br><br>
  </div>
  <!-- FIN DIV container mt-4-- >
  <!-- Modal -->
  <div class="modal fade" id="confirmarvoto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Confirmar Voto</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <span id="mensaje_confirm"></span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" onclick="window.location.reload()"> NO </button>
          <button type="button" class="btn btn-success" id="btn_aceptar_voto" onclick="registraVO(<?php echo $_SESSION['mesa'];?>)"> SI </button>
        </div>
      </div>
    </div>
  </div>
    <!-- Modal -->
  <div class="modal fade" id="voto_error" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Error</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <h2>Incorrecto</h2>
          <span id="">
            Debe seleccionar máximo un (1) candidato.
          </span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" onclick="window.location.reload()"> ACEPTAR </button>
        </div>
      </div>
    </div>
  </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../../assets/js/jquery-3.3.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/funcionvoto.js"></script>
    <script src="../../assets/js/cerrarVot.js"></script>
  </body>
</html>

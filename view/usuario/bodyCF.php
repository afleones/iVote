<body>
  <!-- INICIO DIV container mt-4 -->
  <div class="container mt-4">
    <div class="row">
      <div class="col-sm-2">
        <img class="logo" src="../../assets/img/logo_izquierda.png"/>
      </div>
      <div class="col-sm-8 mt-4">
        <h2 class="text-center ml-4">
          <b>
            ELECCIONES PARA EL CONSEJO DE FACULTAD UNISINU CARTAGENA
          </b>
        </h2>
      </div>
      <div class="col-sm-2">
        <img class="logo" src="../../assets/img/logo_derecha.jpg" style="width: 80px;height: 50px;" />
      </div>
    </div>

    <br>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
              <a style="font-size: 20px;" class="navbar-brand" href="">Votante</a>
          </div>
          <ul class="nav navbar-nav">
              <li style="font-size: 16px;" class="active"><a href="consejoFacultad.php">Consejos de Facultad</a></li>
              <li style="font-size: 16px;"><a href=""></a></li>
          </ul>
        </div>
    </nav>

    <div class="panel" style="text-align: left; font-size: 16px;">
      <?php
        echo $_SESSION["name"] . "  " . $_SESSION["name2"] . "  " . $_SESSION["ape1"] . "  " . $_SESSION["ape2"] . " - " . $_SESSION["id_usuario"];
      ?>
      <!--OPCIÓN a implementar despues
      <button onclick="" style="object-position: left;position: relative;left:665px;margin-top: 7px;" class="btn btn-secundary" id="cerrar">
        Cerrar Sesión
      </button>
      -->
    </div>

    <div class="panel" style="text-align: left; font-size: 16px;">
      <?php
      echo $time2 . ', '; echo date("g:i a", strtotime($time1));
      ?>
    </div>

    <div class="panel panel-default panel-danger" style="font-size: 18px; height: 450px;">
    <div class="panel-heading" style="height: 130px;">
      <br><center><h1 style="font-size: 45px;"><?php echo $nombreOrgano; ?></h1></center><br><br><br>
    </div>
    <ul>
      <?php
        for ($k=0;$k<$j;$k++){
          echo "<ul class='col-md-4 list-group list-group-horizontal-xl text-center'>";
          echo "<input class='chk' id='cb$k' name='chk[]' value='$idcandidato[$k]' type='radio' style='visibility:hidden';/>";
          echo "<label style=' border: 2px solid gray' for='cb$k' >";
          echo "<img style='width: auto;height: auto;' src='../../assets/img/candidatos/$foto[$k]'/>";
          echo  "<li class='list-group-item text-center'>$nom1[$k] $ape1[$k]</li>";
          echo "</ul>";
        }
      ?>

      <!-- <?php
        // for ($k=0;$k<$j;$k++){
        //   echo "<li class='col-md-4 card'>";
        //   echo "<input class='chk' id='cb$k' name='chk[]' value='$idcandidato[$k]' type='radio' style='visibility:hidden'/>";
        //   echo "<label for='cb$k'>";
        //   echo "<img style='width: auto;height: auto; border: 5px solid black; align:center; ' src='../../assets/img/candidatos/$foto[$k]'/>";
        //   echo "<h4 class='text-center'>";
        //   echo $nom1[$k] . "<br>";
        //   echo $ape1[$k] . "<br>";
        //   echo "</h6></label></li>";

      ?> -->
      <!--
      <li class="col-xs-2 list-group-item">
        <input class="chk" id="cb102" name="chk[]" value="2013213033" type="checkbox" />
        <label for="cb102">
          <img style="width: 100%;height: 150px" src="../../assets/img/candidatos/img9.jpg"/>
          <h6 class="text-center">Voto en blanco</h6>
        </label>
      </li>
      -->
    </ul>
    <!--Boton votar-->
    <div class="d-flex justify-content-center mt-4">
      <center><button type="button" class="btn btn-danger" id="btn_id" style="font-size: 20px;">VOTAR</button></center>
    </div>
  </div>



  </div>
  <!-- FIN DIV container mt-4-- >

  <!-- Modal -->
  <div class="modal fade" id="confirmarvoto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">UNIVERSIDAD DEL SINU</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <span id="mensaje_confirm"></span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" onclick="window.location.reload()"> NO </button>
          <button type="button" class="btn btn-primary" id="btn_aceptar_voto" onclick="registraVO(<?php echo $_SESSION['mesa']; ?>)"> SI </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="voto_realizado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">UNIVERSIDAD DEL SINU</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <h2>Voto exitoso!</h2>
          <span id="">
            <!--
            <img src="../../assets/img/candidatos/logo_unisinu.png" alt="">
            Siga a la mesa para reclamar su certificado electoral.
            -->
            Selección correcta
          </span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary"  data-dismiss="modal" onclick="window.location.href='ciarp.php'"> ACEPTAR </button>
        </div>
      </div>
    </div>
  </div>

    <!-- Modal -->
  <div class="modal fade" id="voto_error" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">UNIVERSIDAD DEL SINU</h5>
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
          <button type="button" class="btn btn-secondary" onclick="window.location.reload()"> ACEPTAR </button>
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

  </body>
</html>

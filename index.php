<?php
  require_once 'model/reloj.php';
  require_once 'model/datosGraf_3.php';
  require_once 'model/datosGraf_4.php';
  require_once 'model/datosGraf_5.php';
  require_once 'model/datosGraf_6.php';
	$mysqli = getConn();
?>
<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/estiloLogin.css">
    <link rel="stylesheet" href="assets/css/style.css">
  	<link rel="icon" type="image/png" href="assets/img/favicon.ico"/>
  	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"> <!--en css font-family: 'Ubuntu', sans-serif;-->
    <title>Elecciones</title>
  </head>
  <body>
        <div class="container-fluid ps-md-0">
          <div class="row g-0">
            <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
            <div class="col-md-8 col-lg-6">
              <div class="login d-flex align-items-center">
                <div class="container">
                  <div class="row">
                    <div class="col-md-9 col-lg-8 mx-auto">
                      <img class="logo-unisinu" src="assets/img/logo_izquierda.png" alt="logo Unisinu">
                      <!-- Sign In Form -->
                      <form role="form" action="model/acceder.php" method="post" id="form-login">
                        <div class="form-floating mb-1">
                          <input type="codigo" name="codigo" class="form-control" id="floatingInput" placeholder="Codigo">
                          <label for="floatingInput">Usuario</label>
                        </div>
                        <div class="form-floating mb-1">
                          <input type="password" name ="password" class="form-control" id="password" placeholder="Contraseña">
                          <label for="password">Contraseña</label>
                          <img src="assets/img/eyegray.png" class="ma mt8 outlinenone ng-scope"
                           onclick="verPassword()" ng-if="PassTexVar == 0" role="button" tabindex="0" style="" id="eye"><a onclick="verPassword()"> Mostrar Contraseña</a>
                        </div>
                        <div class="form-floating mb-1">
                          <select class="form-select" aria-label="Default select example" name="id_tipo_usuario" id="id_tipo_usuario">
                              <option value="" style="display:none;">Estudiante, Docente o Egresado</option>
                              <?php
                              $consultatipousuario = "SELECT * FROM tipo_usuario";
                              $resultadotipousuario = mysqli_query($mysqli,$consultatipousuario);
                              while($mostrar=mysqli_fetch_object($resultadotipousuario)){
                                $id = $mostrar->id_tipo_usuario;
                          			$nombretipousuario = $mostrar->nombre;
                                if (empty($nombretipousuario)) {
                                }else {
                                  echo "<option value='$id'>$nombretipousuario</option>";
                                }
                          		}
                               ?>
                          </select>
                          <label for="floatingInput">Tipo de Usuario</label>
                        </div>
                        <div class="form-floating mb-1">
                          <select class="form-select" aria-label="Default select example" name="id_prog" id="id_programa">
                              <option value="" style="display:none;">Seleccione Programa</option>
                              <?php
                              $consultaprog = "SELECT * FROM programa";
                              $resultadoprog = mysqli_query($mysqli,$consultaprog);
                              while($mostrar=mysqli_fetch_object($resultadoprog)){
                                $id = $mostrar->id_programa;
                          			$nombreprograma = $mostrar->nombre;
                                if (empty($nombreprograma)) {
                                }else {
                                  echo "<option value='$id'>$nombreprograma</option>";
                                }
                          		}
                               ?>
                          </select>
                          <label for="floatingInput">Programa</label>
                        </div>
                        <div class="d-grid mb-1">
                          <button type="submit">Iniciar Sesion</button>
                        </div>
                      </form>
                      <div class="d-grid mb-1">
                        <a href="consulta.php" class="btn btn-primary">consultar mi Código</a>
                      </div>

                    <!-- Footer -->
                  <footer class="text-center text-lg-start bg-light text-muted">


                    <!-- Copyright -->
                    <div class="text-center p-4">
                      © 2021 Desarrollado por:
                      <a class="text-reset fw-bold" href="https://www.unisinucartagena.edu.co/">Dirección Académica</a>
                    </div>
                    <!-- Copyright -->
                  </footer>
                  <!-- Footer -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/verPassword.js"></script>
    <script type="text/javascript" src="assets/js/validarCampos.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript" src="assets/js/Chart.js"></script>
    <script type="text/javascript" src="assets/js/Chart.min.js"></script>
    <script type="text/javascript" src="assets/js/Chart.bundle.js"></script>
    <script type="text/javascript" src="assets/js/Chart.bundle.min.js"></script><!--GRAFICA-->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
	</div>
  </body>
</html>

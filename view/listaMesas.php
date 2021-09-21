<?php
	require_once '../model/reloj.php';
	require_once '../model/consultMesa.php';
	require_once '../model/datosGraf.php';
	require_once '../model/datosGraf_2.php';
	session_start();
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Reporte parcial</title>

    <!--I     N      H      A      B      I     L      I      T      A         FLECHA ATRAS----------------->
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <script type="text/javascript">
     if(history.forward(1)){
       location.replace( history.forward(1) );
     }
   </script>
   <!--I     N      H      A      B      I     L      I      T      A         FLECHA ATRAS----------------->

   <meta charset="utf-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
   <link rel="stylesheet" href="../assets/css/bootstrap-theme.min.css" />
   <!-- <link rel="stylesheet" href="../assets/css/jquery-ui/jquery-ui.min.css" /> -->
   <link rel="stylesheet" href="../assets/css/dataTables.bootstrap.min.css">
   <link rel="stylesheet" href="../assets/css/style.css" />
   <link rel="stylesheet" href="../assets/css/demo.css">
   <link rel="stylesheet" href="../assets/css/footer-distributed.css">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
   <link rel="icon" type="image/png" href="../assets/img/listaMesas.png"/>
   <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"> <!--en css font-family: 'Ubuntu', sans-serif;-->
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script type="text/javascript" src="assets/js/Chart.js"></script>
   <script type="text/javascript" src="assets/js/Chart.min.js"></script>
   <script type="text/javascript" src="assets/js/Chart.bundle.js"></script>
   <script type="text/javascript" src="../assets/js/Chart.bundle.min.js"></script><!--GRAFICA-->
   <script type="text/javascript" src="../assets/js/graficaBar.js"></script>

    <style type="text/css">
      *{
        font-family: 'Ubuntu', sans-serif;
      }
    </style>


</head>
    <body>
    <div class="container contenido">
    	<br>
		<nav class="navbar navbar-default">
  			<div class="container-fluid">
    			<div class="navbar-header">
      				<a class="navbar-brand" style="font-size: 20px;">Jurado</a>
    			</div>
    			<ul class="nav navbar-nav">
      				<li style="font-size: 16px;"><a href="../view/listaMesas.php" class="btn active">Reporte de votos</a></li><!--Elimine class active del <li>-->
      				<!--<li><a href="#">Page 3</a></li>-->
    			</ul>
  			</div>
		</nav>
		<div class="panel" style="text-align: left; font-size: 16px;">
		        <img src="../assets/img/jurado.png">
		      <?php
		        echo $_SESSION["name"] . "  " . $_SESSION["name2"] . "  " . $_SESSION["ape1"] . "  " . $_SESSION["ape2"] . " - " . $_SESSION["id_usuario"];
		      ?>
		</div>

		<div class="panel" style="text-align: left; font-size: 16px;">
		    <?php
		        echo $time2 . ', '; echo date("g:i a", strtotime($time1));
		    ?>
		    <div style="float: right;margin-top: -15px;">
		        <button class="btn btn-danger" onClick="cerrarSJU();" style="font-size: 16px;"><i class="fa fa-power-off" aria-hidden="true"></i>   Cerrar Sesión
		        </button>
		    </div>
		</div>
<h1 class="page-header"><span class="glyphicon glyphicon-zoom-in"></span> Reporte de Votaciones</h1>

<div class="row"><!--PARA PAGINACIÓN-->
	<div class="col-md-12"><!--PARA PAGINACIÓN-->
		<center><table id="example" class="table table-striped table-bordered table-hover " cellspacing="0" width="100%">
		<!---<table class="table table-hover">--><!-- TABLE ORIGINAL table-striped -->
    		<thead>
        		<tr>
								<th style="width:auto;">Facultad</th>
								<th style="width:auto;">Programa</th>
								<th style="width:auto;">Tipo Usuario</th>
								<th style="width:auto;">Candidato</th>
            		<th style="width:auto;">Cantidad de votos</th>
        		</tr>
    		</thead>
    		<tbody>
				<!--INICIO DEL CICLO PARA LISTAR LA TABLA MESAS-->
				<?php
					while($mostrar=mysqli_fetch_object($resultado)){
						$mesas[$i] = $mostrar->facultad;
						$mesas1[$i] = $mostrar->programa;
						$mesas4[$i] = $mostrar->tipo_usu;
						$mesas2[$i] = $mostrar->nombre;
						$mesas3[$i] = $mostrar->num_votos;
        		?>
						<?php if ($mesas3[$i] == 0): ?>

						<?php else: ?>
							<tr>
									<td><?php echo $mesas[$i]; ?></td>
									<td><?php echo $mesas1[$i]; ?></td>
									<td><?php echo $mesas4[$i]; ?></td>
									<td><?php echo $mesas2[$i]; ?></td>
									<td><?php echo $mesas3[$i]; ?></td>

							</tr>
						<?php endif; ?>

        		<?php $i++;} ?>
        		<!--FIN DEL CICLO PARA LISTAR LA TABLA MESAS-->
    		</tbody>
		</table></center>
	</div>
</div>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/jquery-1.11.2.min.js"></script>
<!-- SCRIPTS DE PAGINACION-->
<script src="../assets/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/dataTables.bootstrap.min.js"></script>
<script src="../assets/js/script.js"></script>
<!-- SCRIPTS DE PAGINACION-->
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery-ui/jquery-ui.min.js"></script>
<script src="../assets/js/ini.js"></script>
<script src="../assets/js/jquery.anexsoft-validator.js"></script>
<script src="../assets/js/cerrarSJU.js"></script>

<div class="row">
    <div class="col-xs-12">
        <hr />

    <footer class="footer-distributed">
		<div class="footer-left">
			<p class="footer-links">
				<a href="../view/listaMesas.php">Inicio</a>
			</p>
			<p>Elecciones UniSinu 2021</p>
	 	</div>
	</footer>
    </div>
</div>

</div> <!--se cierra div container-->
</body>
</html>

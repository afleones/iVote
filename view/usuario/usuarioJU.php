<?php
    //echo "codig del usuario logueado: " . $_SESSION["mesa"];
   if(!isset($_SESSION["name"])){
    session_start();
    require_once "error_usuarioJU.php";
    //header("location: ../../view/usuario/error_usuarioUSJU.php");
    }else{//esta opcion si se necesita para cuando el jurado ya tenga una sesion activa
        require_once '../model/reloj.php';
?>
<?php
require_once '../model/reloj.php';
require_once '../model/consultMesa.php';
require_once '../model/datosGraf.php';
require_once '../model/datosGraf_2.php';
 ?>

<div class="panel" style="text-align: left; font-size: 16px;">
    <img src="../assets/img/jurado.png">
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
<?php } ?>
<script src="../assets/js/cerrarSJU.js"></script>

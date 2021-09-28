<?php
	session_start();
  error_reporting(0);
	include '../model/conexion.php';
	require_once '../model/reloj.php';
	$mysqli = getConn();
	$identificacion = $_POST["codigo"];
	$type = $_POST["id_tipo_usuario"];
	$programa_id = $_POST["id_prog"];

	$consulta = "SELECT * FROM usuario WHERE codigo = '$identificacion'
                        AND id_programa = $programa_id
                        AND id_tipo_usuario = '$type'";
	$resultado = mysqli_query($mysqli,$consulta);
	$filas =  mysqli_fetch_array($resultado);
	//variables que me almacenan campos de la tabla usuario
  $id_usuario = $filas["codigo"];
	$codigo_usuario = $filas["password"];



  if ($identificacion == $id_usuario) {
    require_once("../view/error_sesion.php");
		echo '<script type="text/javascript">
		swal("Su Código es:", "'.$codigo_usuario.'", "success");
              </script>';
        require_once("salir.php");
  }else {
    require_once("../view/error_sesion.php");
    echo '<script type="text/javascript">
    swal("Datos Incorrectos", "Verifique: Identificacion, Tipo de Usuario y Programa", "error");
              </script>';
        require_once("salir.php");
  }

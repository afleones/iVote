<?php
	include '../../model/conexion.php';
  	$mysqli = getConn();
  	session_start();
		$id_usu = $_SESSION["id_usu"];
		$codigo = $_SESSION["id_usuario"];
  	$mesaUSvoto = $_SESSION['mesa'];
		$facultad = $_SESSION["fac"];
		$programa = $_SESSION["prog"];
		$tipo_usuario = $_SESSION["tipouser"];

  	$sql = "UPDATE usuario SET usuario.id_estado_usuario = 4
													 WHERE codigo = '$codigo' AND id_tipo_usuario = '$tipo_usuario'
													 AND usuario.id_programa
													 IN (SELECT id_programa FROM programa INNER JOIN facultad
													 ON facultad.id_facultad = programa.id_facultad
													 WHERE facultad.id_facultad = $facultad)";
    mysqli_query($mysqli,$sql);

    //$insertarVOTO = "INSERT INTO voto (id_mesa,id_candidato) VALUES ($mesaUSvoto,)";

	//$consulta = "SELECT id_candidato FROM candidato WHERE id_organo = '$organo'";
	//$resultado = mysqli_query($mysqli,$consulta);

	//$j=0;
	//while($mostrar=mysqli_fetch_object($resultado)){
	//	$miarray[$j] = $mostrar->id_candidato;
	//	$j++;
	//}
	//echo $miarray[0];
	//echo "<br>";
	//echo $miarray[1];
	//var_dump($miarray);
 ?>

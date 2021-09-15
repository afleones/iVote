<?php
	include "conexion.php";
	$mysqli = getConn();

	$consulta = "SELECT facultad.nombre AS facultad,
											tipo_usuario.nombre AS tipo_usu,
											programa.nombre AS programa,
											concat(usuario.apellido1, ' ',
												usuario.apellido2, ' ',
												usuario.nombre1, ' ',
												usuario.nombre2) AS nombre,
												(SELECT COUNT(num_votos.id_candidato) FROM voto AS num_votos
												WHERE num_votos.id_candidato = candidato.id_candidato) AS num_votos FROM usuario
												INNER JOIN tipo_usuario ON usuario.id_tipo_usuario = tipo_usuario.id_tipo_usuario
												INNER JOIN candidato ON candidato.id_candidato = usuario.codigo
												INNER JOIN programa ON programa.id_programa = usuario.id_programa
												INNER JOIN facultad ON facultad.id_facultad = programa.id_facultad ORDER BY 1, 5 DESC";

	$resultado = mysqli_query($mysqli,$consulta); $i=0; $j=0;
?>

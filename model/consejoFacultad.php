<?php
// Desactivar toda las notificaciónes del PHP
error_reporting(0);
?>
<?php
	session_start();
	include "conexion.php";
	$mysqli = getConn();

/*
	$organo = '3';
	$consulta = "SELECT id_candidato, foto FROM candidato WHERE id_organo = '$organo'";
	$resultado = mysqli_query($mysqli,$consulta); $j=0;
  		while($mostrar=mysqli_fetch_object($resultado)){
    		$idcandidato[$j] = $mostrar->id_candidato;
    		$foto[$j] = $mostrar->foto;
    		$j++;
  		}
  		*/

			// Variable de Session para Facultad
			$consultaFac = "SELECT programa.id_facultad
											FROM facultad INNER JOIN programa
											ON facultad.id_facultad = programa.id_facultad
											WHERE programa.id_programa = '".$_SESSION["prog"]."'";

			$resultadoFac = mysqli_query($mysqli,$consultaFac);
			$filaFac =  mysqli_fetch_array($resultadoFac);
			$_SESSION["fac"] = $filaFac["id_facultad"];

  	$consulta = "SELECT candidato.id_candidato,
												candidato.foto,
												candidato.id_organo,
												candidato.numero,
												usuario.nombre1,
												usuario.nombre2,
												usuario.apellido1,
												usuario.apellido2,
												programa.nombre AS prog,
												facultad.nombre FROM usuario
												INNER JOIN tipo_usuario ON usuario.id_tipo_usuario = tipo_usuario.id_tipo_usuario
												INNER JOIN candidato ON candidato.id_candidato = usuario.codigo
												INNER JOIN programa ON programa.id_programa = usuario.id_programa
												INNER JOIN facultad ON facultad.id_facultad = programa.id_facultad
												WHERE usuario.id_tipo_usuario = '".$_SESSION["tipouser"]."' AND facultad.id_facultad = ".$_SESSION["fac"]." ";

  	$resultado = mysqli_query($mysqli,$consulta); $j=0;
  		while($mostrar=mysqli_fetch_object($resultado)){
    		$idcandidato[$j] = $mostrar->id_candidato;
    		$foto[$j] = $mostrar->foto;
    		$nom1[$j] = $mostrar->nombre1;
    		$nom2[$j] = $mostrar->nombre2;
    		$ape1[$j] = $mostrar->apellido1;
    		$ape2[$j] = $mostrar->apellido2;
				$prog[$j] = $mostrar->prog;
    		$num[$j] = $mostrar->numero;
    		$j++;
  		}

    $consulta2 = "SELECT nombre FROM organo WHERE id_organo = '3'";
    $resultado2 = mysqli_query($mysqli,$consulta2); $a=0;
    while($mostrar2=mysqli_fetch_object($resultado2)){
      $nombreOrgano = $mostrar2->nombre;
    }
	//echo "<br>Numero de candidatos: " . $j;
	//echo $miarray[0];
	//echo "<br>";
	//echo $miarray[1];
	//var_dump($miarray);
 ?>

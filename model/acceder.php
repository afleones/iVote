<?php
	session_start();
  error_reporting(0);
	include '../model/conexion.php';
	require_once '../model/reloj.php';
	$mysqli = getConn();
	$codigo1 = $_POST["codigo"];
	$pass = $_POST["password"];
	$type = $_POST["id_tipo_usuario"];
	//variable traida a travez de $_POST desde el form-login (Select-> Programa)
	// $id_prog = Nombre del Select
	// $programa_id = Variable a la que se le asigna el Valor POST
	$programa_id = $_POST["id_prog"];

	$consulta = "SELECT * FROM usuario WHERE codigo = '$codigo1' AND id_programa = $programa_id AND id_tipo_usuario = '$type'";
	$resultado = mysqli_query($mysqli,$consulta);
	$filas =  mysqli_fetch_array($resultado);
	//variables que me almacenan campos de la tabla usuario
	$identificacion = $filas["identificacion"];
	$password = $filas["password"];
	$estadoActual = $filas["id_estado_usuario"];
	$rolActual = $filas["id_rol"];
	$code = $filas["codigo"];
	$id_p = $filas["id_programa"];

	$consulta2 = "SELECT id_tipo_usuario FROM tipo_usuario WHERE id_tipo_usuario = '$type'";
	$resultado2 = mysqli_query($mysqli,$consulta2);
	$filas2 =  mysqli_fetch_array($resultado2);
	$id_tipo_usuario = $filas["id_tipo_usuario"];

	if($password == $pass && $rolActual === 'J' && $estadoActual != '2') {
		if ($id_tipo_usuario == $type) {
			$_SESSION["id_usu"] = $filas["identificacion"];
			$_SESSION["name"] = $filas["nombre1"];
			$_SESSION["name2"] = $filas["nombre2"];
			$_SESSION["ape1"] = $filas["apellido1"];
			$_SESSION["ape2"] = $filas["apellido2"];
			$_SESSION["pss"] = $filas["password"];
			$_SESSION["tipouser"] = $filas["id_tipo_usuario"];
			$_SESSION["idrol"] = $filas["id_rol"];
			$_SESSION["prog"] = $filas["id_programa"];
			$_SESSION["mesa"] = $filas["id_mesa"];
			$_SESSION["state"] = $filas["id_estado_usuario"];
			$_SESSION["id_usuario"] = $filas["codigo"];
			sleep(2);
			//header("location: ../view/indexUS.php");
			//header("location: ../view/usuario/formvotacion.php");
			header("location: ../view/listaMesas.php");
		}else {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
								</script>';
					require_once("salir.php");
		}
		/*if( ($hora<$inicioAM && $zona=='am') || ($hora>$inicioPM && $zona=='pm') ){
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
					swal("Acceso no disponible!", "", "error");
              	</script>';
        	require_once("salir.php");
    	}else{*/
		/*}*/
	}else
	if($password == $pass && $rolActual === 'J' && $estadoActual === '2'){
			if ($id_tipo_usuario == $type) {
				session_start();
				$_SESSION["id_usu"] = $filas["identificacion"];
				$_SESSION["name"] = $filas["nombre1"];
				$_SESSION["name2"] = $filas["nombre2"];
				$_SESSION["ape1"] = $filas["apellido1"];
				$_SESSION["ape2"] = $filas["apellido2"];
				$_SESSION["pss"] = $filas["password"];
				$_SESSION["tipouser"] = $filas["id_tipo_usuario"];
				$_SESSION["idrol"] = $filas["id_rol"];
				$_SESSION["prog"] = $filas["id_programa"];
				$_SESSION["mesa"] = $filas["id_mesa"];
				$_SESSION["state"] = $filas["id_estado_usuario"];
				$_SESSION["id_usuario"] = $filas["codigo"];
				sleep(2);
				//header("location: ../view/indexUS.php");
				header("location: ../view/usuario/formvotacion.php");
				//header("location: ../view/indexUSJU.php");
			/*}*/
			}else {
				require_once("../view/error_sesion.php");
				echo '<script type="text/javascript">
				swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
									</script>';
						require_once("salir.php");
			}
	}else
	if($password == $pass && $rolActual === 'A') {
		if ($id_tipo_usuario == $type) {
			session_start();
			$_SESSION["id_usu"] = $filas["identificacion"];
			$_SESSION["name"] = $filas["nombre1"];
			$_SESSION["name2"] = $filas["nombre2"];
			$_SESSION["ape1"] = $filas["apellido1"];
			$_SESSION["ape2"] = $filas["apellido2"];
			$_SESSION["pss"] = $filas["password"];
			$_SESSION["tipouser"] = $filas["id_tipo_usuario"];
			$_SESSION["idrol"] = $filas["id_rol"];
			$_SESSION["prog"] = $filas["id_programa"];
			$_SESSION["mesa"] = $filas["id_mesa"];
			$_SESSION["state"] = $filas["id_estado_usuario"];
			$_SESSION["id_usuario"] = $filas["codigo"];
			sleep(2);
			header("location: ../view/indexUS.php");
			//header("location: ../view/usuario/formvotacion.php");
			//header("location: ../view/indexUSJU.php");
		}else {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
								</script>';
					require_once("salir.php");
		}
	}else
	if($password == $pass && $rolActual === 'V' && $estadoActual === '2') {
			if ($id_tipo_usuario == $type){
				session_start();
				$_SESSION["id_usu"] = $filas["identificacion"];
				$_SESSION["name"] = $filas["nombre1"];
				$_SESSION["name2"] = $filas["nombre2"];
				$_SESSION["ape1"] = $filas["apellido1"];
				$_SESSION["ape2"] = $filas["apellido2"];
				$_SESSION["pss"] = $filas["password"];
				$_SESSION["tipouser"] = $filas["id_tipo_usuario"];
				$_SESSION["idrol"] = $filas["id_rol"];
				$_SESSION["prog"] = $filas["id_programa"];
				$_SESSION["mesa"] = $filas["id_mesa"];
				$_SESSION["state"] = $filas["id_estado_usuario"];
				$_SESSION["id_usuario"] = $filas["codigo"];
				sleep(2);
				header("location: ../view/usuario/formvotacion.php");
				//header("location: ../view/indexUS.php");
				//header("location: ../view/indexUSJU.php");
			/*}*/
		}else{
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
	              </script>';
	        require_once("salir.php");
		}

	}else
	if ($password == $pass && $rolActual === 'V' && $estadoActual === '1'){
		if ($id_tipo_usuario == $type) {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("Lo sentimos!", "El usuario no se encuentra autorizado", "error");
	              </script>';
	        require_once("salir.php");
		}else {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
	              </script>';
	        require_once("salir.php");
		}

	}else
	if($password == $pass && $rolActual === 'V' && $estadoActual === '3'){
		if ($id_tipo_usuario == $type) {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("Lo sentimos!", "El usuario se encuentra votando", "error");
								</script>';
					require_once("salir.php");
		}else {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
	              </script>';
	        require_once("salir.php");
		}
		require_once("../view/error_sesion.php");
		echo '<script type="text/javascript">
		swal("Lo sentimos!", "El usuario se encuentra votando", "error");
              </script>';
        require_once("salir.php");
	}else
	if($password == $pass && $rolActual === 'V' && $estadoActual === '4'){
		if ($id_tipo_usuario == $type) {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("Lo sentimos!", "Usted ya concluyó el proceso votación", "error");
								</script>';
					require_once("salir.php");
		}else {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("El tipo de usuario seleccionado no corresponde a su usuario", "Vuelva a intentarlo", "error");
								</script>';
					require_once("salir.php");
	}
	}else {
		require_once("../view/error_sesion.php");
		echo '<script type="text/javascript">
		swal("El usuario o la contraseña son incorrectos!", "Vuelva a intentarlo", "error");
							</script>';
				require_once("salir.php");
			}

		if ($codigo1 != $code) {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("Usuario no Existente", "Verifique sus credenciales", "error");
								</script>';
					require_once("salir.php");
		}

		if($programa_id != $id_p) {
			require_once("../view/error_sesion.php");
			echo '<script type="text/javascript">
			swal("Usuario no está Asociado a este Programa", "Verifique su Programa", "error");
								</script>';
					require_once("salir.php");
		}
?>

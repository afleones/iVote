function cerrarSUS(){
		swal({
			title: "¿Desea cerrar sesión?",
			icon: "warning",
			buttons: true,
			dangerMode: true,
		})
		.then((willDelete) => {
		if (willDelete) {
			swal(" ", {
				icon: "success",
				title: "En segundos saldrá del sistema! ",
			});
			setTimeout("location.href='../../model/desconectar.php'", 1500);
			}else{
				swal("Redireccionando ", {
		    buttons: false,
		    icon: "success",
        });
				//mandar a recargar la pagina
				setTimeout("location.href='../usuario/consejoFacultad.php'", 1000);
			}
		});
	//window.close();
}

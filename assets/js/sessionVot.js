function sessionVot(){
  swal({
  //title: "¿Desea cerrar sesión?",
  text: "¿Desea cerrar sesión?",
  icon: "warning",
  buttons: true,
  dangerMode: true,
  })
  .then((willDelete) => {
  if (willDelete) {
    swal("En segundos saldrá del sistema! ", {
    icon: "success",
  });
  setTimeout("location.href='../../model/desconectar.php'", 1500);
  }else{
    swal("Redireccionando ", {
    buttons: false,
    icon: "success",
  });
    //mandar a recargar la pagina
    setTimeout("location.href='formvotacion.php'", 1000);
  }
  });
  //window.close();
}

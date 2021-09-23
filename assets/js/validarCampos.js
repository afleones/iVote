document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("form-login").addEventListener('submit', validarFormulario);
});

function validarFormulario(evento) {
  evento.preventDefault();
  var usuario = document.getElementById('floatingInput').value;
  if(usuario.length == "") {
    swal("Digite su Codigo de Usuario", "Vuelva a intentarlo", "warning");
    return;
  }
  var clave = document.getElementById('password').value;
  if (clave.length == "") {
    swal("Digite su Contraseña", "vuelva a intentarlo", "warning");
    return;
  }
  var tipo_usuario = document.getElementById('id_tipo_usuario').value;
  if (tipo_usuario.length == "") {
    swal("Escoja su tipo de Usuario", "vuelva a intentarlo", "warning");
    return;
  }
  var id_prog = document.getElementById('id_programa').value;
  if (id_prog.length == "") {
    swal("Escoja su Programa", "vuelva a intentarlo", "warning");
    return;
  }
  this.submit();
}

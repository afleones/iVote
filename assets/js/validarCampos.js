document.addEventListener("DOMContentLoaded", function() {
  document.getElementById("form-login").addEventListener('submit', validarFormulario);
});

function validarFormulario(evento) {
  evento.preventDefault();
  var usuario = document.getElementById('floatingInput').value;
  if(usuario.length == 0) {
    swal("Escriba el Codigo Estudiantil", "Vuelva a intentarlo", "warning");
    return;
  }
  var clave = document.getElementById('password').value;
  if (clave.length < 6) {
    swal("Digite su Contraseña", "vuelva a intentarlo", "warning");
    return;
  }
  var tipo_usuario = document.getElementById('id_tipo_usuario').value;
  if (tipo_usuario.length == "") {
    swal("Escoja su tipo de Usuario", "vuelva a intentarlo", "warning");
    return;
  }
  this.submit();
}

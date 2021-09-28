// function verPassword(){
//     var tipo = document.getElementById("password");
//     if(tipo.type == "password")
// 	 {
//         tipo.type = "text";
//     }
// 	 else
// 	 {
//         tipo.type = "password";
//     }
// }
//
// function cambiarImagenJS(){
//   document.getElementById("eye").src="../img/eye.png";
//    }

function verPassword() {
var a=document.getElementById("password");
var b=document.getElementById("eye");
if (a.type=="password")  {
a.type="text";
b.src="assets/img/eye.png";
}
else {
a.type="password";
b.src="assets/img/eyegray.png";
}
}

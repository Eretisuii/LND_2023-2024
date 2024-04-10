// Escribe una condición “if” para comprobar que age(edad) está entre 14 y 90 inclusive.

let edadUsuario = prompt("Dame tu edad.");

if (edadUsuario >= 14 && edadUsuario <= 90) {
    alert("Tu edad entra en el rango admitido.");
} else {
    alert("Lo sentimos, tu edad es demasiado joven/avanzada.");
}
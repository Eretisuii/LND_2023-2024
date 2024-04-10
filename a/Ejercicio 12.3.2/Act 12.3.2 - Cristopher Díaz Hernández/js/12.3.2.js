const PEDIR_NUMERO = prompt('Introduce un número');

if (PEDIR_NUMERO > 100) {
    alert("Es mayor a 100");
} else if (PEDIR_NUMERO == 100) {
    alert("Es 100");
} else {
    alert("Es menor a 100");
}
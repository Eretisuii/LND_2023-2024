/*
Escribe un script que pida tres números e indicar si el tercero es
igual a la suma del primero y el segundo.
*/

let listaNumerosUsuario = [prompt("Dame un número."), 
                           prompt("Dame otro número."), 
                           prompt("Dame un tercer número.")];

if (listaNumerosUsuario[0] ||
    listaNumerosUsuario[1] ||
    listaNumerosUsuario[2] == NaN){
        alert("Al menos una de las cosas que pusiste no es un número. Deberías hacer lo que se te dice.");
    } else  if (listaNumerosUsuario[2] == listaNumerosUsuario[0] + listaNumerosUsuario[1]) {
        alert("El tercer número es el resultado de la suma del primer y segundo números.");
    } else {
        alert("El tercer número NO es el resultado de la suma del primer y segundo números.");
}
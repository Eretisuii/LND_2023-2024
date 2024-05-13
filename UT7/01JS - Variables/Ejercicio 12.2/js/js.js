/* Determinar si un número dado por teclado es mayor de 100.
*/
let respuesta = prompt('Teclee un numero:');

if (respuesta > 100){
    alert('El número introducido es mayor a 100');
}else if(respuesta == 100){
    alert('El número introducido es igual a 100');
}else
    alert('El número introducido es menor a 100');
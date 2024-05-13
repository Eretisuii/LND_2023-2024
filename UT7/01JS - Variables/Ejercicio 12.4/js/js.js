/* Escribe una condición if para comprobar que age NO está entre 14 y
90 inclusive. Crea dos variantes: la primera usando NOT !, y la segunda sin usarlo.
*/
let edadNot = prompt('Introduzca su edad');

if  (!(14 >= edadNot && edadNot >= 90)){
    alert('Su edad esta entre 14 y 90 años');
}else 
    alert('Su edad no esta entre 14 y 90 años');

let edad = prompt('Introduzca su edad');

if (14 >= edad && edad >= 90){
    alert('Su edad esta entre 14 y 90 años');
}else 
    alert('Su edad no esta entre 14 y 90 años');
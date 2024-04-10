/*
Escribe una condición if para comprobar que age NO está entre 14 y
90 inclusive. Crea dos variantes: la primera usando NOT !, y la segunda sin usarlo.
*/

// Utiliza comentarios en bloque para ejecutar sólo una porción si fuera necesario.

// Variante 1
let edadUsuarioCaso1 = prompt("Dame tu edad.");

if (!(edadUsuarioCaso1 >= 14 && edadUsuarioCaso1 <= 90)) {
    alert("Enhorabuena, tu edad es suficientemente joven/avanzada.");
} else {
    alert("Estás en el rango de edades que consideramos inaceptables.");
}

// Variante 2
/* let edadUsuarioCaso2 = prompt("Dame tu edad.");

if (edadUsuarioCaso2 <= 14 || edadUsuarioCaso2 >= 90) {
    alert("Enhorabuena, tu edad es suficientemente joven/avanzada.");
} else {
    alert("Estás en el rango de edades que consideramos inaceptables.");
} */
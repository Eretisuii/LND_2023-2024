let number = Number(prompt('Inserta un número.'))

if (number == NaN) {
    alert('No era un número')
} else if (number > 100) {
    alert('El número es mayor que 100')
} else {
    alert('El número es menor que 100')
}
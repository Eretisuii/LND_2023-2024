function pow(base, exponente){
    let resultado = 1;
    for(let i= 0;i < exponente;i++){
        resultado *= base //multiplica primero el valor de la expresión de la derecha
    }
    return resultado
}
let final = pow(2,3)
console.log(final) 
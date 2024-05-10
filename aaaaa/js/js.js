/*function nprimerospares(numero){
    for(let i= 1; i <= numero; i++){
        console.log(2*i)
    }
}*/

function PrimerosPares (numero){
    let arrayPares = []
    for(let i = 1; i <= numero; i++){
        arrayPares.push(2*i);
    }
    return arrayPares;
}

let resultado = PrimerosPares(5)
console.log(resultado)



/*let final = nprimerospares(5)
console.log = final*/


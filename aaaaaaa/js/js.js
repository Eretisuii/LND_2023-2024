function esPrimo (numero){
    if (numero <= 1)
        return false;
    for (let i= 2; i <= numero/2 ; i++)
        if(numero % i ==0)
            return false;
    return true;
}

function primerosPrimos(n){
    let array=[];
    for(let i= 2; i <= n; i++)
        if(esPrimo(i))
            array.push(i)
    return array;
}

function mostrarPrimo(num){
    let primo =[];
    let numero = 2;
    while (primo.length < num){
        if(esPrimo(numero)){
            primo.push(numero);
        }
        numero++
    }
    return primo;
}

let resultado = mostrarPrimo(5);
console.log(resultado)
function fibonasi (numero){
    if(numero == 0){
        return null;
    }
    if(numero == 1){
        return 0;
    }
    if(numero == 2){
        return [0,1];
    }
    let fib =[0,1]
    for(let i = 2; i < numero; i++){
        fib[i]= fib[i -1] +fib [i -2];
    }
    return fib;
}    
let resultado = fibonasi(2)
console.log(resultado)
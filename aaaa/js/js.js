function factorial(numero){
    if(numero==0 || numero==1){
        return 1;
    }else {
        let resultado = 1;
        for(let i= 2;i <= numero; i++){
        resultado *= i 
        }
        return resultado
    }
}
let final = factorial()
console.log(final) 
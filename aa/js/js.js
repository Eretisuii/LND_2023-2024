function menor(a,b,c){
    if(a > b && b < c){
       return b 
    }else{
        if(a < c){
            return a
        }else{
            return c
        }
    }
    
}
let resultado = menor(8,5,-3)
console.log(resultado) 
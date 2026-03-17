let fatorial = (x) => {
    let fat =1;
    for (let i=x; i>1; i--){
        fat *= i;
    }
    return fat;
}
console.log(`Fatorial: ${fatorial(5)}`);
let n1 = 8
let n2 = 4

if(n1 > n2){
    console.log(`${n1} é maior do que ${n2}`);
}else{
    console.log(`${n2} é maior do que ${n1}`);
}

let array = [11,5,4,7,1,8,9,16];

let m = array[0];
let n = array[0];

for(let i=0; i < array.length; i++){
    if(array[i] > m){
        m = array[i];
    };

    if(array[i] < n){
        n = array[i];
    };
}

console.log(`O maior número do array é: ${m}`);
console.log(`O menor número do array é: ${n}`);

let maior = Math.max(...array);
let menor = Math.min(...array);
// (O ... chama-se Spread Operator e "espalha" os números do array para a função Math).

console.log(`Maior: ${maior}, Menor: ${menor}`);



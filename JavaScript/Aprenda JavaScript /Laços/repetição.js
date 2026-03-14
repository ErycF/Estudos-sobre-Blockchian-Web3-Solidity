for (i=0; i < 50; i++){
    console.log(`Repetição for: ${i}`);
}

console.log('_______________________')

let b = 0;

while (b < 10){
    console.log(`Repetição while: ${b}`)
    b++
}

console.log('_______________________')

let c = 0
do{
    console.log(`Repetição do_while: ${c}`)
    c++
}while(c < 5)

console.log('____________________________')

let d = 0

while(d < 20){
    d++
    if(d % 2 == 0) continue; {
        console.log(`Continue: ${d}`)
    }
}

console.log('____________________________')

let e = 0

while(e < 20){
    e++
    if(e % 15 == 0) break; {
        console.log(`Continue: ${e}`)
    }
}

console.log('____________________________')

let f = 0

while(true){
    f++
    console.log(`Continue: ${f}`)

    if(true ) break;
}

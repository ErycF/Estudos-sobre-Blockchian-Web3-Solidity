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
do{
    if(i % 2 == 0)continue;{

    console.log(`Repetição continue: ${d}`)
    }
    d++
}while(d < 10)

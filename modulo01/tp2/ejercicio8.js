function randomNum(numero) {
    document.write(`${numero} número generado: ${Math.random()*100} <br>`)
}

for (let index = 1; index <= 100; index++) {
    randomNum(index);    
}
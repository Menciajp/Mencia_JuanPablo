let numero = prompt("dame un número para sacar el factorial"); 
let resultado = 1; 

for (let index = 1; index <= numero; index++) {
    resultado = resultado * index; 
}

document.write(resultado); 
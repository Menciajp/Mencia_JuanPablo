let valores = [true, false, 2, "hola", "mundo", 3, "marcianeke"];
let strings = [];
let numeros =[];
let cadenaLarga = "";

for (const elemento of valores) {
    if (typeof elemento === 'string') {
        strings.push(elemento);
    }
}

for (const palabra of strings) {
    if (cadenaLarga.length < palabra.length) {
        cadenaLarga = palabra;
    }
}
document.write(`"${cadenaLarga}" es el string de valores con más letras <br>`);


for (const i in strings) {
    for (const x in strings) {
        if(strings[i].length > strings[x].length){
            let bandera = strings[i];
            strings[i] = strings[x];
            strings[x] = bandera; 
        }       
        
    }
}


document.write(`el array strings ordenados de mayor a menor cantidad de caracteres quedaria: [${strings}] <br>`);


for (const elemento of valores) {
    if (typeof elemento === 'number') {
        numeros.push(elemento);
    }
}

document.write(`La suma da ${(numeros[0] + numeros[1])} <br>`);  
document.write(`La resta da ${(numeros[0] - numeros[1])} <br>`);
document.write(`La multiplicación da ${(numeros[0] * numeros[1])} <br>`);    
document.write(`La división da ${(numeros[0] / numeros[1])} <br>`);  




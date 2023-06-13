let vocales = ['a','e','i','o','u']; 
let palabra = prompt("ingrese palabra").toLowerCase();

for (let i = 0 ; i < palabra.length ; i++) {
    let completo = false;
    for (const vocal of vocales) {
        if(vocal === palabra.charAt(i)){
            document.write(`la vocal ${palabra.charAt(i)} es la primera y se encuentra en la posición ${i+1}`);
            completo = true;
            break; 
        }
    }
    if (completo === true){
        break;
    }
    
}


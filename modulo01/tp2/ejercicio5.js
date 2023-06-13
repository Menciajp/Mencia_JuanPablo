let palabra = prompt("ingrese palabra a procesar");

function proceso(palabra) {
    if(palabra === palabra.toUpperCase()){
        document.write("el string esta todo en mayúscula")
    }else if(palabra === palabra.toLowerCase()){
        document.write("el string esta todo en minusculas")
    }else{
        document.write("el string es mixto");
    }  
}

proceso(palabra);

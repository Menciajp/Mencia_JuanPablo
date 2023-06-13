function parImpar(){
    let numero = prompt("ingrese número para saber si es par o impar"); 
    if (numero%2 == 0) {
        document.write("el número es par")
    } else {
        document.write("el numero es impar"); 
    }
}

parImpar();
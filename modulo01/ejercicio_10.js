let meses = ["enero" ,"febrero","marzo","abril","mayo","junio","julio","agosto",
    "septiembre","octubre","noviembre","diciembre"];
let numMes; 
let correcto = false;

while(correcto === false){
    numMes = prompt("ingrese el numero del mes deseado: "); 
    if (numMes > 0 && numMes < 13) {
        numMes--;
        document.write(meses[numMes]);
        correcto = true;
    }else{
        alert("Por favor, ingrese un numero del 1 al 12");
    }
}

let diasMeses = [31,29,31,30,31,30,31,31,30,31,30,31];
let bandera = false; 
function diaMes(mes){
    document.write(`el mes ${mes} tiene ${diasMeses[mes+1]} dias`);
}

let mes = parseInt(prompt("ingrese numero del mes para saber su cantidad de dias"));

while (bandera === false){
    if (mes > 12 || mes < 1){
        mes = prompt("ingrese un numero del 1 al 12"); 
    }else{
        bandera = true; 
    }
}

diaMes(mes);



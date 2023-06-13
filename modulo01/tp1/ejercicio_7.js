//declara la variable dato y resultado
let dato, resultado;
//te pide que ingreses tu nombre para asignarlo como valor a val1
val1 = window.prompt("Introduce tu nombre", "...");
//te pide que ingreses tu apellido para asignarlo como valor a val2
val2 = window.prompt("Introduce tu apellido", "...");
//crea el mensaje y concatena val1 y val2 a el
resultado = `Concatenado tu nombre y apellido es: ${val1} ${val2} ` ;
//imprime resultado en la pagina
document.write(resultado);
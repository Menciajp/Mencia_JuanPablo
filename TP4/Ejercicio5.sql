--Lista el apellido de todos los empleados.
SELECT apellido FROM empleados;
--Lista el apellido de los empleados eliminando los apellidos que estén repetidos.
SELECT DISTINCT apellido FROM empleados;
--Lista todas las columnas de la tabla empleados.
SELECT * FROM empleados;
--Lista el nombre y apellido de todos los empleados.
SELECT nombre, apellido FROM empleados;
--Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados
SELECT cuil_cuit, departamento FROM empleados
WHERE departamento IS NOT NULL;
--Lista el nombre y apellido de los empleados en una única columna.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM empleados;
--Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.
SELECT UPPER(CONCAT(nombre, ' ', apellido)) AS nombre_completo FROM empleados;
--Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.
SELECT LOWER(CONCAT(nombre, ' ', apellido)) AS nombre_completo FROM empleados;
--Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto ASC;
--Lista el nombre de todos los departamentos ordenados de forma ascendente.
SELECT nombre FROM departamentos ORDER BY nombre ASC;
--Lista el nombre de todos los departamentos ordenados de forma descendente.
SELECT nombre FROM departamentos ORDER BY nombre DESC;
--Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar su apellido y luego su nombre.
SELECT apellido, nombre FROM empleados
ORDER BY apellido ASC, nombre ASC;
--Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
SELECT nombre, presupuesto FROM departamentos
ORDER BY presupuesto DESC
LIMIT 3;
--Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
SELECT nombre, presupuesto FROM departamentos
ORDER BY presupuesto ASC
LIMIT 3;
--Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen 
--un presupuesto mayor o igual a $150000.
SELECT nombre, presupuesto FROM departamentos
WHERE presupuesto >= 150000;
--Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen 
--un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
SELECT nombre, presupuesto FROM departamentos
WHERE presupuesto >= 100000 AND presupuesto <= 200000;
--Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000.
-- Sin utilizar el operador BETWEEN.
SELECT nombre FROM departamentos
WHERE presupuesto < 100000 OR presupuesto > 200000;
--Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. 
--Utilizando el operador BETWEEN.
SELECT nombre FROM departamentos
WHERE presupuesto BETWEEN 100000 AND 200000;
--Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT e.nombre, e.apellido, d.nombre AS nombre_departamento, d.presupuesto, d.estado FROM empleados e
INNER JOIN departamentos d ON e.departamento = d.departamento_id;
--Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
--Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en
--segundo lugar por apellido y el nombre de los empleados
SELECT e.nombre, e.apellido, d.nombre AS nombre_departamento, d.presupuesto, d.estado FROM empleados e
INNER JOIN departamentos d ON e.departamento = d.departamento_id
ORDER BY nombre_departamento ASC, e.apellido ASC, e.nombre ASC;
--Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos
--que tienen empleados.
SELECT d.departamento_id, d.nombre FROM departamentos d
INNER JOIN empleados e ON d.departamento_id = e.departamento
GROUP BY d.departamento_id, d.nombre;
--Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuit 27-38382980-3.
SELECT d.nombre AS nombre_departamento FROM departamentos d
INNER JOIN empleados e ON d.departamento_id = e.departamento
WHERE e.cuil_cuit = '27-38382980-3';
--Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
SELECT d.nombre AS nombre_departamento FROM departamentos d
INNER JOIN empleados e ON d.departamento_id = e.departamento
WHERE e.nombre = 'Pepe' AND e.apellido = 'Ruiz';
--Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el
--resultado alfabéticamente.
SELECT e.empleado_id, e.cuil_cuit, e.nombre, e.apellido, e.departamento, e.estado FROM empleados e
INNER JOIN departamentos d ON e.departamento = d.departamento_id
WHERE d.nombre = 'I+D'
ORDER BY e.apellido ASC, emp.nombre ASC;
--Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas,
--Contabilidad o I+D. Ordena el resultado alfabéticamente.
SELECT e.eleado_id, e.cuil_cuit, emp.nombre, e.apellido, e.departamento, e.estado FROM empleados e
INNER JOIN departamentos d ON e.departamento = d.departamento_id
WHERE d.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY e.apellido ASC, e.nombre ASC;
--Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un
--presupuesto entre $100000 y $200000.
SELECT e.nombre AS nombre_empleado FROM empleados e
INNER JOIN departamentos d ON e.departamento = d.departamento_id
WHERE d.presupuesto NOT BETWEEN 100000 AND 200000;

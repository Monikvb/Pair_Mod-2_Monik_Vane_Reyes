# Ejercicios clase invertida
En este ejercicio vamos a usar una tabla que hemos creado usando la siguiente sentencia SQL:
CREATE TABLE t1 (a INTEGER, b CHAR(10));

* La tabla t1 tiene las columnas a, que consiste en un número entero, y la columna b, que consiste en una cadena de caracteres de 10 elementos.

1. Renombra la tabla t1 a t2.
2.Cambia la columna a de tipo INTEGER a tipo TINYINT NOT NULL (manteniendo el mismo nombre para la columna).
3.Cambia la columna b de tipo CHAR de 10 caracteres a CHAR de 20 caracteres. Además, renombra la columna como c.
4.Añade una nueva columna llamada d de tipo TIMESTAMP.
5.Elimina la columna c que definiste en el ejercicio 3.
6.Crea una tabla llamada t3 idéntica a la tabla t2 (de manera automática, no definiéndola columna a columna).
7.Elimina la tabla original t2 y en otra sentencia renombra la tabla t3 como t1.
8.Para los siguientes ejercicios vamos a usar las tablas ya creadas llamadas customers (clientes/as) y employees, que están en la base de datos tienda.
  - Crea una copia de la tabla Customers, ya que vamos a modificar los datos originales de dicha tabla. Para ello ejecuta la siguiente sentencia:
  
    CREATE TABLE IF NOT EXISTS customers_mod 
    SELECT * 
    FROM customers;
      Vamos a desactivar el modo seguro para poder realizar los ejercicios posteriores. 
      Para ello: Pestaña Editar -> Preferencias -> Editor SQL -> Deseleccionar la opción de Actualizaciones segura (rechaza UPDATEs y DELETEs sin restricciones) -> 
      Desconéctate del servidor y vuelve a conectarte o alternativamente cierra MySQL y vuelve a abrirlo.

  * Realiza una inserción de datos sobre la tabla customers introduciendo la siguiente información.
  
        customernumber: 343
        customername: Adalab
        contactlastname: Rodriguez
        contactfirstname: Julia
        phone: 672986373
        addressline1: Calle Falsa 123
        addressline2: Puerta 42
        city: Madrid
        state: España
        postalcode:28000
        country: España
        salesrepemployeeNumber: 15
        creditlimit: 20000000
  
  * Realiza una inserción de datos sobre la tabla customers introduciendo la siguiente información. Fíjate que ahora no tenemos toda la información.

        customernumber: 344
        customername: La pegatina After
        contactlastname: Santiago
        contactfirsnName: Maricarmen
        phone: 00000000
        addressline1: Travesía del rave
        addressline2: NULL
        city: Palma de Mallorca
        state: NULL
        postalcode:07005
        country: España
        salesrepemployeenumber: 10
        creditlimit: 45673453

  * Introduce ahora 5 filas nuevas con la información que consideres relevante para los campos disponibles en una misma instrucción. 
    Se recuerda que el Indice(=la clave primaria), no es necesaria especificarla. En 3 de las nuevas filas debes dejar vacio el campo 
        'contactFirstName'

  * Actualiza ahora los datos faltantes correspondientes al CustomerName 'La pegatina After' con la siguiente información.

        addressline1: Polígono Industrial de Son Castelló
        addressline2: Nave 92
        city: Palma de Mallorca
        state: España
        postalcode:28123
        country: España
        salesrepemployeenumber: 25
        creditlimit: 5000000

  * Vamos ahora a romper a propósito la tabla con la que estamos trabajando, para ello primero vamos a realizar una copia de la misma antes de ejecutar lo siguiente. Con el nombre customers_destroy.
  Para ello hacemos uso de la herramienta de exportación de datos de MySQL, como se explicaba en las guías del módulo 0 para la exportación y la importación de datos.
  Una vez creada la copia y guardada a buen recaudo, vamos a actualizar algunos de los cambios sin especificar la condición del WHERE. Para ello modifica el campo los siguientes campos de

        addressline1: Vamos
        addressline2: a
        postalcode: fastidiar
        country: la tabla :)

  * Tras esto restaura la tabla que has trasteado con la copia que te has creado previamente.

  * Actualiza ahora los datos de la tabla customers_mod, para que las 10 primeras empresas sean gestionadas por la representante de ventas numero 2. El resto de empresas no deben ser modificadas.
    
  * Queremos ahora eliminar de los datos de la tabla aquellos registros que contengan un 'null' en el campo 'ContactFirstName'.
    
  * Eliminar de los datos los últimos 5 registros de la tabla ordenando por la columna creditLimit en order de mayor a menor, queremos eliminar las 5 empresas con menor liquidez.
    
  * Ejecuta la instrucción de DELETE para la tabla customers_mod olvidando el WHERE como condición. Y observa lo que ha ocurrido.

Con el fin de que no se vuelva a repetir el ejecutar la sentencia DELETE sin el WHERE, mira el siguiente vídeo: no te olvides de poner el Where en el Delete From.


SOLUCIÓN___________________________


ALTER TABLE Zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE Empleados
MODIFY COLUMN Salario FLOAT NOT NULL; 

ALTER TABLE Clientes
DROP COLUMN País; 

ALTER TABLE Facturas
ADD COLUMN total FLOAT;

INSERT INTO Zapatillas (Id_zapatillas, Modelo, Color, marca, talla) 
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42), 
(2, 'UOPMN', 'Rosas', 'Nike', 39), 
(3, 'OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO Empleados (Id_empleado, Nombre, Tienda, Salario, Fecha_incorporación) 
VALUES (1, 'Laura', 'Alcobendas', 25987, '2010/09/03'), 
(2, 'Maria', 'Sevilla', 0 , '2001/04/11'), 
(3, 'Ester', 'Oviedo', 30165.98, '2000/11/29');


INSERT INTO Clientes (Id_clientes, Nombre, Número_Teléfono, Email,	
Dirección, Ciudad, Provincia, Código_postal) 
VALUES (1, 'Monica', 1234567289, 'monica@email.com',
'Calle Felicidad', 'Móstoles', 'Madrid', '28176'), 

(2, 'Lorena', 289345678, 'lorena@email.com',
'Calle Alegria', 'Barcelona', 'Barcelona', '12346'), 

(3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del Color',
'Vigo', 'Pontevedra', '23456');


INSERT INTO Facturas 
VALUES (1, 123, '2001/12/11', 1,  2,  1, 54.98), 
(2, 1234, '2005/05/23', 1, 1, 3, 89.91), 
(3, 12345, '2015/09/18', 2, 3, 3, 76.23);


UPDATE Zapatillas
SET Color = 'Amarillo' 
WHERE Id_zapatillas = 2;


UPDATE Zapatillas
SET Color = 'Rosas' 
WHERE Color = 'Amarillo';

UPDATE Zapatillas
SET Color = 'Amarillo' 
WHERE Id_zapatillas = 2;





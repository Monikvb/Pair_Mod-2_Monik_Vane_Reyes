Pair programming Creación BBDD
	
En esta sesión crearemos una nueva BBDD desde 0 💪🏽! Supongamos que tenemos una tienda de zapatillas y que durante mucho tiempo hemos ido recopilando mucha información sobre nuestros empleados, las zapatillas que tenemos, los clientes y todas las facturas que hemos emitido. 
Nuestra información puede que este un poco desordenada y empieza a ser un poco complicado gestionar toda esa información, por lo que hemos decidido crearnos una BBDD en SQL. 
Para ello crearemos 4 tablas en la BBDD:

	-Empleados
	-Clientes
	-Facturas
	-Zapatillas

La tabla Facturas tiene una relación con la tabla Empleados y la tabla Clientes y la tabla Zapatillas. Estas tres últimas no tienen ninguna relación entre ellas.
Antes de nada para poder empezar este ejercicio deberemos crear la base de datos, para ello deberemos escribir:

CREATE SCHEMA `tienda_zapatillas`;
USE `tienda_zapatillas`;

De esta forma habremos creado la base de datos que necesitamos y la habremos seleccionado, antes de poder empezar a crear las tablas.

Carácteristicas de nuestras tablas
	
Tabla Zapatillas: tiene 3 columnas: id_zapatilla, modelo, color con las siguientes características:
	id_zapatilla: es una clave primaria de tipo int, autoincremental y no nula.
	modelo: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	color: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Tabla Clientes: tiene 9 columnas id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, pais, codigo_postal con las siguientes características:
	id_cliente: es una clave primaria de tipo int, autoincremental y no nula.
	nombre: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	numero_telefono: es integer, no nula.
	email: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	direccion: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	ciudad: es una cadena de caracteres de longitud máxima de 45 caracteres, puede ser nula.
	provincia: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	pais: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	codigo_postal: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Tabla Empleados: tiene 5 columnas id_empleado, nombre, tienda, salario, fecha_incorporacion con las siguientes características:
	id_empleado: es una clave primaria de tipo int, autoincremental y no nula.
	nombre: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	tienda: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	salario: es int, puede ser nula.
	fecha_incorporacion: es una columna de tipo date, no nula.
Tabla Facturas: tiene 6 columnas id_factura ,numero de factura, fecha, id_empleado, id_cliente, id_zapatilla, con las siguientes características:
	id_factura: es una clave primaria de tipo int, autoincremental y no nula.
	numero_factura: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
	fecha: es una columna de tipo date, no nula.
	id_zapatilla: es una clave foránea de tipo int, no nula
	id_empleado: es una clave foránea de tipo int, no nula.
	id_cliente: es una clave foránea de tipo int, no nula.

📌 NOTA En esta última tabla tendremos que incluir todos los CONSTRAINTnecesarios para establecer los relaciones entre las tablas, donde tendremos que especificar:
Foreign Key
References
📌 NOTA Este ejercicio es incremental, es decir, cada día vamos a ir añadiendo las nuevas funcionalidades que hemos aprendido.

_________________________________________
# Código en SQL


CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;


CREATE TABLE Zapatillas (
Id_zapatillas INT NOT NULL AUTO_INCREMENT,
Modelo VARCHAR(45) NOT NULL,
Color VARCHAR(45) NOT NULL,
PRIMARY KEY (Id_zapatillas)
);

CREATE TABLE Clientes(
Id_clientes INT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(45) NOT NULL,
Número_Teléfono INT NOT NULL,
Email VARCHAR (45) NOT NULL,
Dirección VARCHAR (45) NOT NULL,
Ciudad VARCHAR (45) NOT NULL,
Provincia VARCHAR (45) NOT NULL,
País VARCHAR (45) NOT NULL,
Código_postal VARCHAR (45) NOT NULL,
PRIMARY KEY (Id_clientes)
);

CREATE TABLE Empleados(
Id_empleado INT NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(45) NOT NULL,
Tienda VARCHAR(45) NOT NULL,
Salario FLOAT,
Fecha_incorporación DATE NOT NULL,
PRIMARY KEY (Id_empleado)
);


CREATE TABLE Facturas(
Id_Factura INT NOT NULL AUTO_INCREMENT,
Número_factura VARCHAR(45) NOT NULL,
Fecha DATE NOT NULL,
Id_zapatillas INT NOT NULL,
Id_empleado INT NOT NULL,
Id_clientes INT NOT NULL,
PRIMARY KEY (Id_factura),
CONSTRAINT fk_zapatilla
	FOREIGN KEY (Id_zapatillas)
    REFERENCES Zapatillas (Id_zapatillas) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_empleado
	FOREIGN KEY (Id_empleado)
    REFERENCES Empleados (Id_empleado) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_clientes
	FOREIGN KEY (Id_clientes)
    REFERENCES Clientes (Id_clientes) ON DELETE CASCADE ON UPDATE CASCADE
);

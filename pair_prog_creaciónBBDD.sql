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

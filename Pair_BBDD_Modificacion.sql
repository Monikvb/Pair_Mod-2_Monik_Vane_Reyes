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





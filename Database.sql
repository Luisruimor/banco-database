CREATE DATABASE banco;

USE banco;


DROP TABLE IF EXISTS sucursal;
CREATE TABLE sucursal(
    nombre_sucursal varchar(100) NOT NULL,
    ciudad_sucursal varchar(100) NOT NULL,
    activos int(20) NOT NULL,
    PRIMARY KEY (nombre_sucursal)
);
insert into sucursal values ('Sucursal Princesa','Madrid',79000);

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
    id_cliente int(11) NOT NULL,
    nombre_cliente varchar(100) NOT NULL,
    calle_cliente varchar(100) NOT NULL,
    ciudad_cliente varchar(100) NOT NULL, 
    PRIMARY KEY (id_cliente)
);
insert into cliente values (007,'Luis','Avenida de Luis','Madrid');


DROP TABLE IF EXISTS prestamo;
CREATE TABLE prestamo(
    numero_prestamo int(15) NOT NULL,
    importe int(12) NOT NULL,
    PRIMARY KEY (numero_prestamo)
);
insert into prestamo values (001,1000000);


DROP TABLE IF EXISTS cuenta;
CREATE TABLE cuenta(
    numero_cuenta int(25) NOT NULL,
    saldo int(12) NOT NULL,
    PRIMARY KEY (numero_cuenta)
);
insert into cuenta values (99778844,60000);


DROP TABLE IF EXISTS empleado;
CREATE TABLE empleado(
    id_empleado int(25) NOT NULL,
    nombre_empleado varchar(100) NOT NULL,
    numero_telefono int(12) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    PRIMARY KEY (id_empleado)
);
insert into empleado values (009,'Nicolas',6002023,'2006-05-00'), (008,'Nebrija',7008765,'2007-09-00');


DROP TABLE IF EXISTS sucursal_cuenta;
CREATE TABLE sucursal_cuenta(
    numero_cuenta int(25) NOT NULL,
    nombre_sucursal varchar(100) NOT NULL,
    PRIMARY KEY (numero_cuenta),
    FOREIGN KEY (numero_cuenta) REFERENCES cuenta(numero_cuenta),
    FOREIGN KEY (nombre_sucursal) REFERENCES sucursal(nombre_sucursal)
);
insert into sucursal_cuenta values (99778844,'Sucursal Princesa');


DROP TABLE IF EXISTS sucursal_prestamo;
CREATE TABLE sucursal_prestamo(
    numero_prestamo int(15) NOT NULL,
    nombre_sucursal varchar(100) NOT NULL,
    PRIMARY KEY(numero_prestamo),
    FOREIGN KEY (numero_prestamo) REFERENCES prestamo(numero_prestamo),
    FOREIGN KEY (nombre_sucursal) REFERENCES sucursal(nombre_sucursal)
);
insert into sucursal_prestamo values (001,'Sucursal Princesa');


DROP TABLE IF EXISTS prestatario;
CREATE TABLE prestatario(
    id_cliente int(11) NOT NULL,
    numero_prestamo int(15) NOT NULL,
    fecha_acceso DATE NOT NULL,
    PRIMARY KEY (id_cliente,numero_prestamo),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (numero_prestamo) REFERENCES prestamo(numero_prestamo)
);
insert into prestatario values (007,001,'2007-08-00');


DROP TABLE IF EXISTS impositor;
CREATE TABLE impositor(
    id_cliente int(11) NOT NULL,
    numero_cuenta int(25) NOT NULL,
    PRIMARY KEY (id_cliente,numero_cuenta),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (numero_cuenta) REFERENCES cuenta(numero_cuenta)
);
insert into impositor values (007,99778844);


DROP TABLE IF EXISTS asesor;
CREATE TABLE asesor(
    id_cliente int(11) NOT NULL,
    id_empleado int(25) NOT NULL,
    tipo varchar(100) NOT NULL,
    PRIMARY KEY(id_cliente),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);
insert into asesor values (007,009,'Fiscal');


DROP TABLE IF EXISTS trabaja_para;
CREATE TABLE trabaja_para(
    id_empleado_trabajador int(25) NOT NULL,
    id_empleado_jefe int(25) NOT NULL,
    PRIMARY KEY(id_empleado_trabajador),
    FOREIGN KEY (id_empleado_trabajador) REFERENCES empleado(id_empleado),
    FOREIGN KEY (id_empleado_jefe) REFERENCES empleado(id_empleado)
);
insert into trabaja_para values (008,009);

DROP TABLE IF EXISTS pago;
CREATE TABLE pago(
    numero_prestamo int(15) NOT NULL,
    numero_pago int(12) NOT NULL,
    fecha_pago DATE NOT NULL,
    importe_pago int(15) NOT NULL,
    PRIMARY KEY (numero_prestamo,numero_pago),
    FOREIGN KEY (numero_prestamo) REFERENCES prestamo(numero_prestamo)
);
insert into pago values (001,989897,'2010-02-14',80045);

DROP TABLE IF EXISTS cuenta_ahorro;
CREATE TABLE cuenta_ahorro(
    numero_cuenta int(25) NOT NULL,
    tasa_interes int(2) NOT NULL,
    PRIMARY KEY (numero_cuenta),
    FOREIGN KEY (numero_cuenta) REFERENCES cuenta(numero_cuenta)
);
insert into cuenta_ahorro values (99778844,20);


DROP TABLE IF EXISTS cuenta_corriente;
CREATE TABLE cuenta_corriente(
    numero_cuenta int(25) NOT NULL,
    importe_descubierto int(12) NOT NULL,
    PRIMARY KEY (numero_cuenta),
    FOREIGN KEY (numero_cuenta) REFERENCES cuenta(numero_cuenta)
);
insert into cuenta_corriente values (99778844,3050);
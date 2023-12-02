CREATE TABLE centro_de_atencion (
    idcentrodeatencion             INTEGER NOT NULL,
    nombrecentrodeatencion         VARCHAR (30),
    codigopostalcentrodeatencion   VARCHAR (6),
    callecentrodeatencion          VARCHAR (30),
    numeroCalleCentroDeAtencion    INTEGER,
    coloniacentrodeatencion        VARCHAR (30),
    
    CONSTRAINT centro_de_atencion_pk PRIMARY KEY (idcentrodeatencion)
);

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (1, 'Centro de Atención A', '12345', 'Calle Principal', 10, 'Norte');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (2, 'Centro de Atención B', '23456', 'Avenida Juárez', 1, 'Sur');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (3, 'Centro de Atención C', '34567', 'Calle Revolución', 3, 'Este');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (4, 'Centro de Atención D', '45678', 'Avenida Hidalgo', 4, 'Oeste');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (5, 'Centro de Atención E', '56789', 'Calle Morelos', 20, 'Norte');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (6, 'Centro de Atención F', '67890', 'Calle Independencia', 5, 'Oeste');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (7, 'Centro de Atención G', '78901', 'Avenida Reforma', 15, 'Sur');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (8, 'Centro de Atención H', '89012', 'Calle Zaragoza', 7, 'Este');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (9, 'Centro de Atención I', '90123', 'Avenida Benito Juárez', 25, 'Norte');

INSERT INTO centro_de_atencion (idcentrodeatencion, nombrecentrodeatencion, codigopostalcentrodeatencion, callecentrodeatencion, numeroCalleCentroDeAtencion, coloniacentrodeatencion)
VALUES (10, 'Centro de Atención J', '01234', 'Calle Hidalgo', 8, 'Oeste');

DELETE FROM centro_de_atencion;

SELECT * FROM centro_de_atencion;


CREATE TABLE centrodeatencion_telefono ( 
    idcentrodeatencion INTEGER NOT NULL,
    telefonocentrodeatencion VARCHAR (10) NOT NULL,
    
    CONSTRAINT centrodeatencion_telefono_pk PRIMARY KEY ( idcentrodeatencion, telefonocentrodeatencion ),
    CONSTRAINT centrodeatencion_telefono__un UNIQUE ( telefonocentrodeatencion ),
    CONSTRAINT centrodeatencion_telefono_centrodeatencion_fk FOREIGN KEY (idcentrodeatencion) REFERENCES centro_de_atencion (idcentrodeatencion)
);

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (1, '5512345678');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (2, '5523456789');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (3, '5534567890');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (4, '5545678901');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (5, '5556789012');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (6, '5567890123');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (7, '5578901234');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (8, '5589012345');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (9, '5590123456');

INSERT INTO centrodeatencion_telefono (idcentrodeatencion, telefonocentrodeatencion)
VALUES (10, '5501234567');

DELETE FROM centrodeatencion_telefono;

SELECT * FROM centrodeatencion_telefono;

CREATE TABLE empleado (
    idempleado                            INTEGER NOT NULL,
    nombreempleado                        VARCHAR (30),
    paternoempleado                       VARCHAR (30),
    maternoempleado                       VARCHAR (30),
    rfcemplado                            VARCHAR (13),
    curpempleado                          VARCHAR (18),
    codigopostalempleado                  VARCHAR (6),
    calleempleado                         VARCHAR (30),
    numerocalleempleado                   INTEGER,
    coloniaempleado                       VARCHAR (30), 
    idcentrodeatencion                    INTEGER NOT NULL,
    
    CONSTRAINT empleado_pk PRIMARY KEY ( idempleado ),
    CONSTRAINT empleado__un UNIQUE ( rfcemplado, curpempleado ),
    CONSTRAINT empleado_centrodeatencion_fk FOREIGN KEY (idcentrodeatencion) REFERENCES centro_de_atencion (idcentrodeatencion)
);

-- Empleados para el Centro de Atenci?n A
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (1, 'Juan', 'García', 'López', 'RFCJGL01', 'CURPJGL01', '12345', 'Calle de la Rosa', 10, 'Centro', 1);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (2, 'María', 'Hernández', 'Martínez', 'RFCMHM01', 'CURPMHM01', '12345', 'Avenida del Sol', 15, 'Oriente', 1);

-- Empleados para el Centro de Atenci?n B
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (3, 'Pedro', 'Fernando', 'Contreras', 'RFCPLR01', 'CURPPLR01', '23456', 'Calle del Bosque', 5, 'Sur', 2);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (4, 'Ana', 'González', 'Sánchez', 'RFCAGS01', 'CURPAGS01', '23456', 'Avenida de las Flores', 25, 'Norte', 2);

-- Empleados para el Centro de Atenci?n C
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (5, 'Luis', 'Martínez', 'Gómez', 'RFCLMG01', 'CURPLMG01', '34567', 'Calle de la Luna', 12, 'Poniente', 3);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (6, 'Karla', 'Pérez', 'Rodríguez', 'RFCKPR01', 'CURPKPR01', '34567', 'Avenida del Bosque', 8, 'Norte', 3);

-- Empleados para el Centro de Atenci?n D
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (7, 'Carlos', 'Ramírez', 'Sánchez', 'RFCCRS01', 'CURPCRS01', '45678', 'Calle del Sol', 3, 'Sur', 4);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (8, 'Laura', 'González', 'Martínez', 'RFCLGM01', 'CURPLGM01', '45678', 'Avenida de la Luna', 18, 'Poniente', 4);

-- Empleados para el Centro de Atenci?n E
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (9, 'Miguel', 'Hernández', 'López', 'RFCMHL01', 'CURPMHL01', '56789', 'Calle del Bosque', 7, 'Oriente', 5);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (10, 'Isabel', 'Loreto', 'Garza', 'RFCILG01', 'CURPILG01', '56789', 'Avenida del Sol', 22, 'Centro', 5);

-- Empleados para el Centro de Atenci?n F
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (11, 'Juan', 'Luna', 'Hernández', 'RFCJLH01', 'CURPJLH01', '67890', 'Calle Independencia', 55, 'Oeste', 6);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (12, 'María', 'Garcés', 'Martínez', 'RFCMGM01', 'CURPMGM01', '67890', 'Calle Independencia', 5, 'Oeste', 6);

-- Empleados para el Centro de Atenci?n G
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (13, 'Pedro', 'Rodríguez', 'Sánchez', 'RFCPRS01', 'CURPPRS01', '78901', 'Avenida Reforma', 35, 'Sur', 7);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (14, 'Ana', 'Hernández', 'Gómez', 'RFCAHG01', 'CURPAHG01', '78901', 'Avenida Lopez Mateos', 15, 'Sur', 7);

-- Empleados para el Centro de Atenci?n H
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (15, 'Javier', 'López', 'Sánchez', 'RFCJLS01', 'CURPJLS01', '89012', 'Calle San Pedro', 7, 'Este', 8);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (16, 'Sofía', 'González', 'Hernández', 'RFCSGH01', 'CURPSGH01', '89012', 'Calle Zaragoza', 10, 'Este', 8);

-- Empleados para el Centro de Atenci?n I
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (17, 'Diego', 'Martínez', 'López', 'RFCDML01', 'CURPDML01', '90123', 'Avenida Benito Juárez', 25, 'Norte', 9);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (18, 'Carolina', 'Sánchez', 'Gómez', 'RFCCSG01', 'CURPCSG01', '90123', 'Avenida Benito Juárez', 25, 'Norte', 9);

-- Empleados para el Centro de Atenci?n J
INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (19, 'Ricardo', 'González', 'López', 'RFCRGL01', 'CURPRGL01', '01234', 'Calle Hidalgo', 8, 'Oeste', 10);

INSERT INTO empleado (idempleado, nombreempleado, paternoempleado, maternoempleado, rfcemplado, curpempleado, codigopostalempleado, calleempleado, numerocalleempleado, coloniaempleado, idcentrodeatencion)
VALUES (20, 'Alejandra', 'Caballero', 'Sánchez', 'RFCAHS01', 'CURPAHS01', '01234', 'Calle Hidalgo', 8, 'Oeste', 10);

select * from empleado;

CREATE TABLE empleado_telefono ( 
    idempleado       INTEGER NOT NULL,
    telefonoempleado VARCHAR (10) NOT NULL,
    
    CONSTRAINT empleado_telefono_pk PRIMARY KEY ( idempleado, telefonoempleado ),
    CONSTRAINT empleado_telefono_un UNIQUE ( telefonoempleado ),
    CONSTRAINT emplead_telefono_empleado_fk FOREIGN KEY (idempleado) REFERENCES empleado (idempleado)
);

INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (1, '55000001');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (2, '55000002');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (3, '55000003');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (4, '55000004');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (5, '55000005');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (6, '55000006');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (7, '55000007');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (8, '55000008');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (9, '55000009');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (10, '55000010');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (11, '55000011');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (12, '55000012');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (13, '55000013');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (14, '55000014');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (15, '55000015');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (16, '55000016');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (17, '55000017');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (18, '55000018');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (19, '55000019');
INSERT INTO empleado_telefono (idempleado, telefonoempleado) VALUES (20, '55000020');

select * from empleado_telefono;

CREATE TABLE empleado_estandar (
    idempleado INTEGER NOT NULL,
    CONSTRAINT empleado_estandar_pk PRIMARY KEY (idempleado),
    CONSTRAINT empleado_estandar_empleado_fk FOREIGN KEY (idempleado) REFERENCES empleado (idempleado)
);

-- Inserciones para la tabla empleado_estandar
INSERT INTO empleado_estandar (idempleado) VALUES (1);
INSERT INTO empleado_estandar (idempleado) VALUES (3);
INSERT INTO empleado_estandar (idempleado) VALUES (5);
INSERT INTO empleado_estandar (idempleado) VALUES (7);
INSERT INTO empleado_estandar (idempleado) VALUES (9);
INSERT INTO empleado_estandar (idempleado) VALUES (11);
INSERT INTO empleado_estandar (idempleado) VALUES (13);
INSERT INTO empleado_estandar (idempleado) VALUES (15);
INSERT INTO empleado_estandar (idempleado) VALUES (17);
INSERT INTO empleado_estandar (idempleado) VALUES (19);

select * from empleado_estandar;

CREATE TABLE empleado_tecnico (
    idtecnico  INTEGER NOT NULL,
    idempleado INTEGER NOT NULL,
    CONSTRAINT empleado_tecnico_pk PRIMARY KEY ( idtecnico ),
    CONSTRAINT empleado_tecnico_empleado_fk FOREIGN KEY (idempleado) REFERENCES empleado (idempleado)
);

-- Inserciones para la tabla empleado_tecnico
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (1, 2);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (2, 4);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (3, 6);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (4, 8);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (5, 10);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (6, 12);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (7, 14);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (8, 16);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (9, 18);
INSERT INTO empleado_tecnico (idtecnico, idempleado) VALUES (10, 20);

select * from empleado_tecnico;

CREATE TABLE zona (
    idzona INTEGER NOT NULL,
    nombrezona VARCHAR(5),
    periodoMedicion DATE,
    CONSTRAINT zona_pk PRIMARY KEY (idzona),
    CONSTRAINT zona_un UNIQUE (nombrezona),
    CONSTRAINT nombrezona_valores_validos CHECK (nombrezona IN ('NORTE', 'SUR', 'ESTE', 'OESTE'))
);

INSERT INTO zona (idzona, nombrezona, periodoMedicion)
VALUES (1, 'NORTE', TO_DATE('05-01-2023', 'DD-MM-YYYY'));
INSERT INTO zona (idzona, nombrezona, periodoMedicion)
VALUES (2, 'SUR', TO_DATE('10-01-2023', 'DD-MM-YYYY'));
INSERT INTO zona (idzona, nombrezona, periodoMedicion)
VALUES (3, 'ESTE', TO_DATE('15-01-2023', 'DD-MM-YYYY'));
INSERT INTO zona (idzona, nombrezona, periodoMedicion)
VALUES (4, 'OESTE', TO_DATE('20-01-2023', 'DD-MM-YYYY'));

select * from zona;

CREATE TABLE cliente (
    idcliente INT NOT NULL,
    nombrecliente VARCHAR(30),
    paternocliente VARCHAR(30),
    maternocliente VARCHAR(30),
    coloniacliente VARCHAR(30),
    numerocallecliente INT,
    callecliente VARCHAR(30),
    codigopostalcliente VARCHAR(6),
    CONSTRAINT cliente_pk PRIMARY KEY (idcliente)
);

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (1, 'Alejandro', 'González', 'Hernández', 'Centro', 123, 'Avenida Reforma', '12345');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (2, 'Valentina', 'López', 'Vargas', 'La Paz', 456, 'Calle Juárez', '23456');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (3, 'Sebasti?n', 'Martinez', 'Gomez', 'Del Valle', 789, 'Boulevard Miguel Hidalgo', '34567');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (4, 'Maria', 'Hern?ndez', 'Rodriguez', 'Las Lomas', 1011, 'Avenida Constitucion', '45678');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (5, 'Carlos', 'González', 'Vargas', 'Polanco', 1213, 'Calle Chapultepec', '56789');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (6, 'Ana', 'Herrera', 'Soto', 'San Angel', 1415, 'Avenida Insurgentes', '67890');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (7, 'Miguel', 'Ortega', 'Fuentes', 'Roma', 1617, 'Calle Veracruz', '78901');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (8, 'Elena', 'Cortés', 'Mendoza', 'Condesa', 1819, 'Avenida Tamaulipas', '89012');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (9, 'Jorge', 'Rojas', 'Sánchez', 'N?poles', 2021, 'Calle Montecito', '90123');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (10, 'Laura', 'Sánchez', 'García', 'Roma Norte', 2224, 'Avenida Alvaro Obregón', '23456');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (11, 'Luis', 'Ramírez', 'Torres', 'Polanco', 2426, 'Calle Emilio Castelar', '34567');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (12, 'Daniela', 'Vargas', 'López', 'Del Valle', 2628, 'Boulevard Insurgentes Sur', '45678');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (13, 'Fernando', 'G?mez', 'Hernández', 'Condesa', 2830, 'Avenida Cuauhtémoc', '56789');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (14, 'Gabriela', 'Flores', 'Rojas', 'San Angel', 3032, 'Calle Altavista', '67890');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (15, 'Ricardo', 'Hern?ndez', 'P?rez', 'Napoles', 3234, 'Avenida Universidad', '78901');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (16, 'Isabel', 'Gonzalez', 'Soto', 'Roma', 3436, 'Calle Colima', '89012');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (17, 'Juan', 'Soto', 'Guzman', 'Condesa', 3638, 'Avenida Nuevo Leon', '90123');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (18, 'Maria', 'Lopez', 'Hernandez', 'Lomas de Chapultepec', 3840, 'Calle Sierra Madre', '01234');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (19, 'Andrea', 'Torres', 'Jiménez', 'Polanco', 4042, 'Calle Presidente Masaryk', '12345');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (20, 'Javier', 'Sánchez', 'Ram?rez', 'Del Valle', 4244, 'Boulevard Miguel Alemán', '23456');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (21, 'Ana', 'Mendoza', 'Ortega', 'Condesa', 4446, 'Avenida Michoacán', '34567');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (22, 'Carlos', 'Torres', 'Martínez', 'Roma Norte', 4648, 'Calle Durango', '45678');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (23, 'Paula', 'Vargas', 'Lugo', 'San Cristobal', 4850, 'Avenida Revolución', '56789');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (24, 'Miguel', 'Hern?ndez', 'Ortega', 'Napoles', 5052, 'Calle Oaxaca', '67890');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (25, 'Maria', 'Gonzalez', 'Flores', 'Polanco', 5254, 'Avenida Horacio', '78901');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (26, 'Fernando', 'Rojas', 'Soto', 'Roma', 5456, 'Calle Colima', '89012');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (27, 'Elena', 'López', 'Martínez', 'Condesa', 5658, 'Avenida Amsterdam', '90123');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (28, 'Pedro', 'Ramírez', 'Gomez', 'Del Valle', 5859, 'Boulevard Adolfo Lopez Mateos', '01234');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (29, 'Laura', 'Soto', 'Hernández', 'San Angel', 5960, 'Calle Altavista', '12345');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (30, 'Ricardo', 'López', 'González', 'Roma Norte', 6061, 'Avenida Sonora', '23456');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (31, 'Isabella', 'Guzmán', 'Torres', 'Polanco', 6162, 'Calle Campos Eliseos', '34567');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (32, 'Daniel', 'Hernández', 'Sánchez', 'Condesa', 6263, 'Avenida Nuevo León', '45678');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (33, 'Valeria', 'Rojas', 'Martínez', 'Napoles', 6364, 'Calle Sonora', '56789');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (34, 'Javier', 'García', 'Ortega', 'Roma', 6465, 'Boulevard Alvaro Obregón', '67890');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (35, 'Camila', 'Vargas', 'Flores', 'San ?ngel', 6566, 'Calle Reforma', '78901');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (36, 'Santiago', 'López', 'Hernández', 'Condesa', 6667, 'Avenida Cuauhtémoc', '89012');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (37, 'Valentina', 'González', 'Soto', 'Polanco', 6768, 'Calle Presidente Masaryk', '90123');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (38, 'Mateo', 'Ramírez', 'Gómez', 'Del Valle', 6869, 'Boulevard Miguel Alemán', '01234');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (39, 'Luciana', 'Soto', 'Torres', 'Roma Norte', 6970, 'Calle Durango', '12345');

INSERT INTO cliente (idcliente, nombrecliente, paternocliente, maternocliente, coloniacliente, numerocallecliente, callecliente, codigopostalcliente)
VALUES (40, 'Sebastián', 'Hernández', 'López', 'Condesa', 7071, 'Avenida Michoacan', '23456');

select * from cliente;

CREATE TABLE cliente_telefono (
    idcliente INT NOT NULL,
    telefonocliente VARCHAR(10) NOT NULL,
    CONSTRAINT cliente_telefono_pk PRIMARY KEY (idcliente, telefonocliente),
    CONSTRAINT cliente_telefono_un UNIQUE (telefonocliente),
    CONSTRAINT cliente_telefono_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente)
);

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (1, '5551234567');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (2, '5559876543');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (3, '5555555555');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (4, '5552223333');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (5, '5554448888');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (6, '5556669999');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (7, '5551110000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (8, '5557772222');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (9, '5558889999');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (10, '5553334444');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (11, '5551234500');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (12, '5559876500');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (13, '5555555500');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (14, '5552223300');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (15, '5554448800');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (16, '5556669900');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (17, '5551110001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (18, '5557772200');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (19, '5558889900');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (20, '5553334400');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (21, '5551234000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (22, '5559876000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (23, '5555555000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (24, '5552223000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (25, '5554448000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (26, '5556669000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (27, '5551110002');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (28, '5557772000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (29, '5558889000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (30, '5558866000');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (31, '5551234001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (32, '5559876001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (33, '5555555001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (34, '5552223001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (35, '5554448001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (36, '5556669001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (37, '5551110003');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (38, '5557772001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (39, '5558889001');

INSERT INTO cliente_telefono (idcliente, telefonocliente)
VALUES (40, '5553334001');

select * from cliente_telefono;

CREATE TABLE cliente_correo (
    idcliente INT NOT NULL,
    correocliente VARCHAR(35) NOT NULL,
    CONSTRAINT cliente_correo_pk PRIMARY KEY (idcliente, correocliente),
    CONSTRAINT cliente_correo_un UNIQUE (correocliente),
    CONSTRAINT cliente_correo_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente)
);


INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (1, 'cliente1@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (2, 'cliente2@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (3, 'cliente3@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (4, 'cliente4@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (5, 'cliente5@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (6, 'cliente6@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (7, 'cliente7@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (8, 'cliente8@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (9, 'cliente9@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (10, 'cliente10@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (11, 'cliente11@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (12, 'cliente12@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (13, 'cliente13@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (14, 'cliente14@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (15, 'cliente15@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (16, 'cliente16@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (17, 'cliente17@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (18, 'cliente18@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (19, 'cliente19@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (20, 'cliente20@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (21, 'cliente21@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (22, 'cliente22@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (23, 'cliente23@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (24, 'cliente24@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (25, 'cliente25@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (26, 'cliente26@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (27, 'cliente27@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (28, 'cliente28@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (29, 'cliente29@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (30, 'cliente30@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (31, 'cliente31@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (32, 'cliente32@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (33, 'cliente33@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (34, 'cliente34@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (35, 'cliente35@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (36, 'cliente36@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (37, 'cliente37@gmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (38, 'cliente38@hotmail.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (39, 'cliente39@yahoo.com');

INSERT INTO cliente_correo (idcliente, correocliente)
VALUES (40, 'cliente40@gmail.com');

select * from cliente_correo;

CREATE TABLE cliente_estandar (
    idcliente INT NOT NULL,
    CONSTRAINT cliente_estandar_pk PRIMARY KEY (idcliente),
    CONSTRAINT cleinte_estandar_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente) 
);

INSERT INTO cliente_estandar (idcliente) VALUES (1);
INSERT INTO cliente_estandar (idcliente) VALUES (2);
INSERT INTO cliente_estandar (idcliente) VALUES (3);
INSERT INTO cliente_estandar (idcliente) VALUES (4);
INSERT INTO cliente_estandar (idcliente) VALUES (5);
INSERT INTO cliente_estandar (idcliente) VALUES (6);
INSERT INTO cliente_estandar (idcliente) VALUES (7);
INSERT INTO cliente_estandar (idcliente) VALUES (8);
INSERT INTO cliente_estandar (idcliente) VALUES (9);
INSERT INTO cliente_estandar (idcliente) VALUES (10);
INSERT INTO cliente_estandar (idcliente) VALUES (11);
INSERT INTO cliente_estandar (idcliente) VALUES (12);
INSERT INTO cliente_estandar (idcliente) VALUES (13);
INSERT INTO cliente_estandar (idcliente) VALUES (14);
INSERT INTO cliente_estandar (idcliente) VALUES (15);
INSERT INTO cliente_estandar (idcliente) VALUES (16);
INSERT INTO cliente_estandar (idcliente) VALUES (17);
INSERT INTO cliente_estandar (idcliente) VALUES (18);
INSERT INTO cliente_estandar (idcliente) VALUES (19);
INSERT INTO cliente_estandar (idcliente) VALUES (20);

select * from cliente_estandar;



CREATE TABLE cliente_industrial_negocio (
    idindustrial INT NOT NULL,
    idcliente INT NOT NULL,
    tarifa_industrial_negocio VARCHAR(4),
    CONSTRAINT cliente_industrial_negocio_pk PRIMARY KEY (idindustrial),
    CONSTRAINT cliente_industrial_negocio_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
    CONSTRAINT cliente_industrial_negocio_tarifa_check CHECK (UPPER(tarifa_industrial_negocio) IN ('DIST', 'GDBT', 'PDBT'))
);

INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (1, 21, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (2, 22, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (3, 23, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (4, 24, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (5, 25, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (6, 26, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (7, 27, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (8, 28, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (9, 29, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (10, 30, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (11, 31, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (12, 32, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (13, 33, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (14, 34, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (15, 35, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (16, 36, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (17, 37, 'GDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (18, 38, 'PDBT');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (19, 39, 'DIST');
INSERT INTO cliente_industrial_negocio (idindustrial, idcliente, tarifa_industrial_negocio) VALUES (20, 40, 'GDBT');

select * from cliente_industrial_negocio;

CREATE TABLE medidor (
    numeromedidor INT NOT NULL,
    tipo VARCHAR(30),
    medicionactual INT,
    medicionanterior INT,
    fechamedicionanterior DATE,
    fechamedicionactual DATE,
    consumo INT,
    idzona INT NOT NULL,
    idcliente INT NOT NULL,
    CONSTRAINT medidor_pk PRIMARY KEY (numeromedidor),
    CONSTRAINT medidor_tipo_check CHECK (tipo IN ('Electromagnético', 'Digital')),
    CONSTRAINT medidor_zona_fk FOREIGN KEY (idzona) REFERENCES zona (idzona),
    CONSTRAINT medidor_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente)
);


INSERT INTO medidor (numeromedidor, tipo, medicionactual, medicionanterior, fechamedicionanterior, fechamedicionactual, consumo, idzona, idcliente)
VALUES (1, 'Electromagn?tico', 150, 100, TO_DATE('05-01-2023', 'DD-MM-YYYY'), TO_DATE('05-02-2023', 'DD-MM-YYYY'), 50, 1, 1);




drop table medidor;


CREATE TABLE factura (
    numerofactura INT NOT NULL,
    numeromedidor INT NOT NULL,
    idempleado INT NOT NULL,
    periodofacturado VARCHAR(30),
    montoapagar NUMERIC(6,2),
    fechadecorte DATE,
    statusdepago VARCHAR(10),
    tarifaaplicada NUMERIC(3,2),
    CONSTRAINT factura_pk PRIMARY KEY (numerofactura),
    CONSTRAINT factura_medidor_fk FOREIGN KEY (numeromedidor) REFERENCES medidor (numeromedidor),
    CONSTRAINT factura_empleado_fk FOREIGN KEY (idempleado) REFERENCES empleado_estandar (idempleado),
    CONSTRAINT factura_status_check CHECK (statusdepago IN ('PAGADO', 'NO PAGADO'))
);

drop table factura;

CREATE TABLE reporte (
    noreporte INT NOT NULL,
    descripcionreporte VARCHAR(200),
    fechadegeneracion DATE,
    statusdereporte VARCHAR(30),
    idcliente INT NOT NULL,
    CONSTRAINT reporte_pk PRIMARY KEY (noreporte),
    CONSTRAINT reporte_cliente_fk FOREIGN KEY (idcliente) REFERENCES cliente (idcliente),
    CONSTRAINT reporte_status_check CHECK (statusdereporte IN ('ATENDIDO', 'EN ATENCIÓN', 'NO ATENDIDO'))
);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (1, 'Reporte de apag?n en la zona', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'ATENDIDO', 1);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (2, 'Reporte de cortocircuito en el sistema el?ctrico', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'EN ATENCIÓN', 2);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (3, 'Reporte de alta tensión en cables de electricidad', TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'NO ATENDIDO', 3);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (4, 'Reporte de medidor de electricidad averiado', TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'ATENDIDO', 4);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (5, 'Reporte de fluctuaciones de voltaje en la red el?ctrica', TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'EN ATENCIÓN', 5);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (6, 'Reporte de sobrecarga en el sistema de electricidad', TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'NO ATENDIDO', 6);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (7, 'Reporte de falla en transformador eléctrico', TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'ATENDIDO', 7);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (8, 'Reporte de corte de suministro eléctrico sin previo aviso', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'EN ATENCIÓN', 8);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (9, 'Reporte de descarga eléctrica en poste de luz', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'NO ATENDIDO', 9);

INSERT INTO reporte (noreporte, descripcionreporte, fechadegeneracion, statusdereporte, idcliente)
VALUES (10, 'Reporte de interrupci?n de energia electrica por mantenimiento', TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'ATENDIDO', 10);

CREATE TABLE material (
    idmaterial INT NOT NULL,
    nombrematerial VARCHAR(30),
    CONSTRAINT material_pk PRIMARY KEY (idmaterial)
);

INSERT INTO material (idmaterial, nombrematerial)
VALUES (1, 'Material 1');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (2, 'Material 2');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (3, 'Material 3');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (4, 'Material 4');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (5, 'Material 5');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (6, 'Material 6');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (7, 'Material 7');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (8, 'Material 8');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (9, 'Material 9');

INSERT INTO material (idmaterial, nombrematerial)
VALUES (10, 'Material 10');

CREATE TABLE vehiculo (
    idvehiculo INT NOT NULL,
    placas VARCHAR(9),
    modelo VARCHAR(30),
    marca VARCHAR(30),
    numerodemotor INT,
    idmaterial INT NOT NULL,
    CONSTRAINT vehiculo_pk PRIMARY KEY (idvehiculo),
    CONSTRAINT vehiculo_material_fk FOREIGN KEY (idmaterial) REFERENCES material (idmaterial),
    CONSTRAINT vehiculo_placas_un UNIQUE (placas)
);

INSERT INTO vehiculo (idvehiculo, placas, modelo, marca, numerodemotor, idmaterial)
VALUES (1, 'ABC123', 'Sedán', 'Toyota', 123456, 1);

INSERT INTO vehiculo (idvehiculo, placas, modelo, marca, numerodemotor, idmaterial)
VALUES (2, 'DEF456', 'Camioneta', 'Ford', 789012, 2);

INSERT INTO vehiculo (idvehiculo, placas, modelo, marca, numerodemotor, idmaterial)
VALUES (3, 'GHI789', 'Hatchback', 'Honda', 345678, 3);

INSERT INTO vehiculo (idvehiculo, placas, modelo, marca, numerodemotor, idmaterial)
VALUES (4, 'JKL012', 'SUV', 'Chevrolet', 901234, 4);

INSERT INTO vehiculo (idvehiculo, placas, modelo, marca, numerodemotor, idmaterial)
VALUES (5, 'MNO345', 'Pickup', 'Nissan', 567890, 5);

CREATE TABLE caja_herramientas (
    nocaja INT NOT NULL,
    idmaterial INT,
    contenido VARCHAR(200),
    CONSTRAINT caja_herramientas_pk PRIMARY KEY (nocaja),
    CONSTRAINT caja_herramientas_material_fk FOREIGN KEY (idmaterial) REFERENCES material (idmaterial)
);

INSERT INTO caja_herramientas (nocaja, idmaterial, contenido)
VALUES (1, 1, 'Destornilladores de punta plana, destornilladores de punta Phillips, alicates de corte');

INSERT INTO caja_herramientas (nocaja, idmaterial, contenido)
VALUES (2, 2, 'Llaves inglesas de diferentes tama?os, llaves de tubo, alicates de punta larga');

INSERT INTO caja_herramientas (nocaja, idmaterial, contenido)
VALUES (3, 3, 'Multímetro, alicates pelacables, cinta aislante');

INSERT INTO caja_herramientas (nocaja, idmaterial, contenido)
VALUES (4, 4, 'Crimpadora, terminales y conectores, cuchillas de repuesto');

INSERT INTO caja_herramientas (nocaja, idmaterial, contenido)
VALUES (5, 5, 'Llave de torsi?n, alicate amperimítrico, detector de voltaje');

CREATE TABLE atienderep (
    numatencion INT NOT NULL,
    idtecnico INT NOT NULL,
    noreporte INT NOT NULL,
    idmaterial INT NOT NULL,
    fechadeatencion DATE,
    fechaderesolucion DATE,
    descripcion VARCHAR(200),
    CONSTRAINT atienderep_pk PRIMARY KEY (numatencion),
    CONSTRAINT atienderep_tecnico_fk FOREIGN KEY (idtecnico) REFERENCES empleado_tecnico (idtecnico),
    CONSTRAINT atienderep_reporte_fk FOREIGN KEY (noreporte) REFERENCES reporte (noreporte),
    CONSTRAINT atienderep_material_fk FOREIGN KEY (idmaterial) REFERENCES material (idmaterial),
    CONSTRAINT atienderep_descripcion_nn CHECK (descripcion IS NOT NULL),
    CONSTRAINT atienderep_unique_key UNIQUE (idtecnico, noreporte, idmaterial,fechaderesolucion,fechadeatencion,descripcion)
);


--CONSULTAS



SELECT *
FROM centro_de_atencion
FULL JOIN centrodeatencion_telefono 
ON centro_de_atencion.idcentrodeatencion = centrodeatencion_telefono.idcentrodeatencion;

SELECT *
FROM centro_de_atencion
FULL JOIN empleado ON centro_de_atencion.idcentrodeatencion = empleado.idcentrodeatencion;

SELECT *
FROM cliente_industrial_negocio
WHERE tarifa_industrial_negocio = 'DIST';


SELECT c.nombrecliente, r.noreporte, r.statusdereporte
FROM cliente c,  reporte r
WHERE c.idcliente = r.idcliente
  AND r. statusdereporte  = 'NO ATENDIDO';

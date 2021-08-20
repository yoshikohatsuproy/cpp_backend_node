DROP TABLE IF EXISTS tipo_pago CASCADE;
CREATE TABLE tipo_pago(
	cod_tipo_pago BIGSERIAL PRIMARY KEY,
	des_tipo_pago VARCHAR(255) NOT NULL,
	act_tipo_pago BOOLEAN NOT NULL, 
	user_created VARCHAR(255) NOT NULL,
	created_at TIMESTAMP(0) NOT NULL,
	user_updated VARCHAR(255) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL
);

INSERT INTO tipo_pago (des_tipo_pago,act_tipo_pago,user_created,created_at,user_updated,updated_at )
VALUES('INGRESOS',true, 'Jonathan','2021-08-20','Jonathan','2021-08-20');

INSERT INTO tipo_pago (des_tipo_pago,act_tipo_pago,user_created,created_at,user_updated,updated_at )
VALUES('DESCUENTOS',true, 'Jonathan','2021-08-20','Jonathan','2021-08-20');

INSERT INTO tipo_pago (des_tipo_pago,act_tipo_pago,user_created,created_at,user_updated,updated_at )
VALUES('APORTES',true, 'Jonathan','2021-08-20','Jonathan','2021-08-20');

SELECT * FROM tipo_pago;


DROP TABLE IF EXISTS pago CASCADE;
CREATE TABLE pago(
	cod_pago VARCHAR(4) PRIMARY KEY,
	codigo_sunat VARCHAR(4) NOT NULL UNIQUE,
	des_pago VARCHAR(255) NOT NULL,
	cod_tipo_pago BIGSERIAL NOT NULL,
	act_pago BOOLEAN NOT NULL, 
	user_created VARCHAR(255) NOT NULL,
	created_at TIMESTAMP(0) NOT NULL,
	user_updated VARCHAR(255) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL,
	FOREIGN KEY(cod_tipo_pago) REFERENCES tipo_pago(cod_tipo_pago) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO pago (cod_pago,codigo_sunat,des_pago,cod_tipo_pago,act_pago,user_created,created_at,user_updated,updated_at)
values ('P001','0101','SALARIO MENSUAL',1,true,'Jonathan','2021-08-20','Jonathan','2021-08-20 00:00:00');

SELECT * FROM pago;

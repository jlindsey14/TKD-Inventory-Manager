USE master
GO

DROP DATABASE IF EXISTS tkd_inventory_manager;
GO

CREATE DATABASE tkd_inventory_manager
GO

USE tkd_inventory_manager
GO

-- create tables
BEGIN TRANSACTION

DROP TABLE IF EXISTS belts;
DROP TABLE IF EXISTS boards;
DROP TABLE IF EXISTS uniforms;

CREATE TABLE belts (
	belt_id int IDENTITY(1,1) NOT NULL,
	size int NOT NULL,
	color varchar(20) NOT NULL,
	number_available int NOT NULL,
	is_little_tiger bit,
	CONSTRAINT PK_belt PRIMARY KEY (belt_id)
)

CREATE TABLE boards (
	board_id int IDENTITY(1,1) NOT NULL,
	thickness varchar(20) NOT NULL,
	number_available int NOT NULL,
	CONSTRAINT PK_board PRIMARY KEY (board_id)
)

CREATE TABLE uniforms (
	uniform_id int IDENTITY(1,1) NOT NULL,
	size int NOT NULL,
	number_available int NOT NULL,
	is_black_belt bit,
	CONSTRAINT PK_uniform PRIMARY KEY (uniform_id)
)

COMMIT;
GO

-- populate default data
--BEGIN TRANSACTION


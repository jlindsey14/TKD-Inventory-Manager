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
BEGIN TRANSACTION

-- little tigers white belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'white',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'white',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'white',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'white',0,1);

-- little tigers yellow belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'yellow',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'yellow',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'yellow',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'yellow',0,1);

-- little tigers orange belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'orange',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'orange',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'orange',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'orange',0,1);

-- little tigers blue belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'blue',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'blue',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'blue',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'blue',0,1);

-- little tigers green belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'green',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'green',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'green',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'green',0,1);

-- little tigers purple belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'purple',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'purple',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'purple',0,1);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'purple',0,1);

-- regular white belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'white',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'white',0,0);

-- regular yellow belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'yellow',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'yellow',0,0);

-- regular orange belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'orange',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'orange',0,0);

-- regular blue belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'blue',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'blue',0,0);

-- regular green belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'green',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'green',0,0);

-- regular purple belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'purple',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'purple',0,0);

-- regular brown belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'brown',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'brown',0,0);

-- regular red belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'red',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'red',0,0);

-- regular navy belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'navy',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'navy',0,0);

-- regular pre-black belts
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (0,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (1,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (2,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (3,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (4,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (5,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (6,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (7,'pre-black',0,0);
INSERT INTO belts (size, color, number_available, is_little_tiger) VALUES (8,'pre-black',0,0);

-- boards
INSERT INTO boards (thickness, number_available) VALUES ('little tiger',0);
INSERT INTO boards (thickness, number_available) VALUES ('junior',0);
INSERT INTO boards (thickness, number_available) VALUES ('junior+',0);
INSERT INTO boards (thickness, number_available) VALUES ('adult',0);

-- regular uniforms
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (0,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (1,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (2,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (3,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (4,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (5,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (6,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (7,0,0);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (8,0,0);

-- black belt club uniforms
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (0,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (1,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (2,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (3,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (4,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (5,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (6,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (7,0,1);
INSERT INTO uniforms (size, number_available, is_black_belt) VALUES (8,0,1);

COMMIT;
GO
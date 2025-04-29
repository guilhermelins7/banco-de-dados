CREATE DATABASE vendas;

use vendas;

CREATE TABLE vendedor (
	cd_vendedor INT PRIMARY KEY,
	nm_vendedor VARCHAR(150) NOT NULL,
	ds_endereco VARCHAR(255) NOT NULL,
	pc_comissao FLOAT NOT NULL CHECK (pc_comissao < 60)
);

CREATE TABLE cliente (
	cd_cliente INT PRIMARY KEY,
	nm_cliente VARCHAR(150) NOT NULL,
	ds_endereco VARCHAR(255) NOT NULL,
	ds_email VARCHAR(255) NOT NULL UNIQUE,
	vl_faturamento FLOAT NOT NULL,
	vl_limite FLOAT NOT NULL,
	cd_vendedor INT FOREIGN KEY references vendedor
);

CREATE TABLE armazem (
	cd_armazem INT PRIMARY KEY,
	ds_endereco VARCHAR(255)
);

ALTER TABLE armazem ALTER COLUMN ds_endereco VARCHAR(255) NOT NULL;

CREATE TABLE peca (
	cd_peca INT PRIMARY KEY,
	ds_peca VARCHAR(255) NOT NULL,
	vl_peca FLOAT NOT NULL,
	qt_estoque INT NOT NULL,
	cd_armazem INT FOREIGN KEY REFERENCES armazem
);

CREATE TABLE pedido (
	cd_pedido INT PRIMARY KEY,
	dt_pedido DATETIME DEFAULT GETDATE(),
	cd_vendedor INT FOREIGN KEY references vendedor,
	cd_cliente INT FOREIGN KEY REFERENCES cliente,
	cd_peca INT FOREIGN KEY REFERENCES peca
);

INSERT INTO vendedor
(cd_vendedor, nm_vendedor, ds_endereco, pc_comissao)
VALUES
(12, 'Leandro', 'Av Rei Alberto', 15.2);

INSERT INTO vendedor
(cd_vendedor, nm_vendedor, ds_endereco, pc_comissao)
VALUES
(13, 'Lula', 'Xilindro', 50.2);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(1, 'Super chock', 'Rua dos zé', 'superchock@yahoo.com', 2.00, 5000.00, 12);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(2, 'Super chock', 'Rua dos zé', 'superchock@yahoo.com', 2.00, 5000.00, 12);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(1, 'João Mendes', 'Humaitrevas', 'kyan1234@yahoo.com', 5.00, 5000.00, 12);

INSERT INTO armazem
(cd_armazem, ds_endereco)
VALUES
(1, 'Rua do mijo');

INSERT INTO armazem
(cd_armazem, ds_endereco)
VALUES
(2, 'Rua da breja');


INSERT INTO peca
(cd_peca, ds_peca, vl_peca, qt_estoque, cd_armazem)
VALUES
(1, 'a peça', 69.12, 12, 1),
(2, 'Peça grande', 45.2, 12, 1)

INSERT INTO pedido
(cd_pedido, cd_vendedor, cd_cliente, cd_peca)
VALUES
(1, 12, 1, 1),
(2, 13, 2, 2)

SELECT * FROM pedido;CREATE DATABASE vendas;

use vendas;

CREATE TABLE vendedor (
	cd_vendedor INT PRIMARY KEY,
	nm_vendedor VARCHAR(150) NOT NULL,
	ds_endereco VARCHAR(255) NOT NULL,
	pc_comissao FLOAT NOT NULL CHECK (pc_comissao < 60)
);

CREATE TABLE cliente (
	cd_cliente INT PRIMARY KEY,
	nm_cliente VARCHAR(150) NOT NULL,
	ds_endereco VARCHAR(255) NOT NULL,
	ds_email VARCHAR(255) NOT NULL UNIQUE,
	vl_faturamento FLOAT NOT NULL,
	vl_limite FLOAT NOT NULL,
	cd_vendedor INT FOREIGN KEY references vendedor
);

CREATE TABLE armazem (
	cd_armazem INT PRIMARY KEY,
	ds_endereco VARCHAR(255)
);

ALTER TABLE armazem ALTER COLUMN ds_endereco VARCHAR(255) NOT NULL;

CREATE TABLE peca (
	cd_peca INT PRIMARY KEY,
	ds_peca VARCHAR(255) NOT NULL,
	vl_peca FLOAT NOT NULL,
	qt_estoque INT NOT NULL,
	cd_armazem INT FOREIGN KEY REFERENCES armazem
);

CREATE TABLE pedido (
	cd_pedido INT PRIMARY KEY,
	dt_pedido DATETIME DEFAULT GETDATE(),
	cd_vendedor INT FOREIGN KEY references vendedor,
	cd_cliente INT FOREIGN KEY REFERENCES cliente,
	cd_peca INT FOREIGN KEY REFERENCES peca
);

INSERT INTO vendedor
(cd_vendedor, nm_vendedor, ds_endereco, pc_comissao)
VALUES
(12, 'Leandro', 'Av Rei Alberto', 15.2);

INSERT INTO vendedor
(cd_vendedor, nm_vendedor, ds_endereco, pc_comissao)
VALUES
(13, 'Lula', 'Xilindro', 50.2);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(1, 'Super chock', 'Rua dos zé', 'superchock@yahoo.com', 2.00, 5000.00, 12);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(2, 'Super chock', 'Rua dos zé', 'superchock@yahoo.com', 2.00, 5000.00, 12);

INSERT INTO cliente
(cd_cliente, nm_cliente, ds_endereco, ds_email, vl_faturamento, vl_limite, cd_vendedor)
VALUES
(1, 'João Mendes', 'Humaitrevas', 'kyan1234@yahoo.com', 5.00, 5000.00, 12);

INSERT INTO armazem
(cd_armazem, ds_endereco)
VALUES
(1, 'Rua do mijo');

INSERT INTO armazem
(cd_armazem, ds_endereco)
VALUES
(2, 'Rua da breja');


INSERT INTO peca
(cd_peca, ds_peca, vl_peca, qt_estoque, cd_armazem)
VALUES
(1, 'a peça', 69.12, 12, 1),
(2, 'Peça grande', 45.2, 12, 1)

INSERT INTO pedido
(cd_pedido, cd_vendedor, cd_cliente, cd_peca)
VALUES
(1, 12, 1, 1),
(2, 13, 2, 2)

SELECT * FROM pedido;

CREATE TABLE produtos (
produto_codigo INT NOT NULL AUTO_INCREMENT,
produto_nome VARCHAR(50),
produto_marca VARCHAR(50),
produto_descricao VARCHAR(50),
produto_genero VARCHAR(30),
produto_preco DECIMAL(5,3),
produto_ts timestamp,
PRIMARY KEY (produto_codigo) 
);

INSERT INTO produtos (produto_nome, produto_marca, produto_descricao, produto_genero, produto_preco, produto_ts) VALUES
('MACARRÃO', 'ESTRELA','MACARRÃO MÉDIO DE OVOS', 'MASSAS', '10.45', localtimestamp),
('SARDINHA', 'GOMES DA COSTA','PEIXE ENLATADO AO ÓLEO', 'ENLATADOS', '23.34', localtimestamp),
('KATCHUP', 'HEINZ','KATCHUP PICANTE IMPORTADO', 'CONSERVAS', '12.11', localtimestamp),
('MAIONEZE', 'HEINZ','MAIONEZE DE OVOS IMPORTADA', 'CONSERVAS', '23.89', localtimestamp),
('AZEITE', 'DO GALO','AZEITE DE OLIVA IMPORTADO', 'ÓLEOS', '9.45', localtimestamp),
('PALMITO', 'GALVÃO PALMITOS','PALMITO DE AÇAÍ', 'ENGARRAFADOS', '14.54', localtimestamp);

mysql> SELECT*FROM produtos;
+----------------+--------------+------------------+----------------------------+----------------+---------------+---------------------+
| produto_codigo | produto_nome | produto_marca    | produto_descricao          | produto_genero | produto_preco | produto_ts          |
+----------------+--------------+------------------+----------------------------+----------------+---------------+---------------------+
|              1 | MACARRÃO     | ESTRELA          | MACARRÃO MÉDIO DE OVOS     | MASSAS         |        10.450 | 2023-05-01 13:35:16 |
|              2 | SARDINHA     | GOMES DA COSTA   | PEIXE ENLATADO AO ÓLEO     | ENLATADOS      |        23.340 | 2023-05-01 13:35:16 |
|              3 | KATCHUP      | HEINZ            | KATCHUP PICANTE IMPORTADO  | CONSERVAS      |        12.110 | 2023-05-01 13:35:16 |
|              4 | MAIONEZE     | HEINZ            | MAIONEZE DE OVOS IMPORTADA | CONSERVAS      |        23.890 | 2023-05-01 13:35:16 |
|              5 | AZEITE       | DO GALO          | AZEITE DE OLIVA IMPORTADO  | ÓLEOS          |         9.450 | 2023-05-01 13:35:16 |
|              6 | PALMITO      | GALVÃO PALMITOS  | PALMITO DE AÇAÍ            | ENGARRAFADOS   |        14.540 | 2023-05-01 13:35:16 |
+----------------+--------------+------------------+----------------------------+----------------+---------------+---------------------+
CREATE TABLE compras (
codigo_compra INT NOT NULL AUTO_INCREMENT, 
codigo_cliente INT NOT NULL, 
codigo_produto INT NOT NULL, 
total_unidades INT NOT NULL, 
formaPagamento VARCHAR(30) NOT NULL, 
compras_ts timestamp, 
PRIMARY KEY (codigo_compra), 
FOREIGN KEY (codigo_cliente) REFERENCES clientes (cliente_cod), 
FOREIGN KEY (codigo_produto) REFERENCES produtos (produto_codigo) 
);

INSERT INTO compras (codigo_cliente, codigo_produto, total_unidades, formaPagamento, compras_ts) VALUES
(1, 1, 2, 'CARTÃO', localtimestamp),
(2, 2, 4, 'PIX', localtimestamp),
(3, 3, 6, 'DÉBITO', localtimestamp),
(4, 4, 8, 'CARTÃO', localtimestamp),
(5, 5, 10, 'PIX', localtimestamp),
(6, 6, 1, 'CARTÃO', localtimestamp),
(1, 7, 3, 'PIX', localtimestamp),
(2, 8, 5, 'DÉBITO', localtimestamp),
(3, 9, 7, 'CARTÃO', localtimestamp),
(4, 10, 9, 'PIX', localtimestamp),
(5, 11, 9, 'PIX', localtimestamp),
(6, 12, 11, 'DÉBITO', localtimestamp);

mysql> SELECT*FROM compras;
+---------------+----------------+----------------+----------------+----------------+---------------------+
| codigo_compra | codigo_cliente | codigo_produto | total_unidades | formaPagamento | compras_ts          |
+---------------+----------------+----------------+----------------+----------------+---------------------+
|             1 |              1 |              1 |              2 | CARTÃO         | 2023-05-01 14:17:50 |
|             2 |              2 |              1 |              4 | PIX            | 2023-05-01 14:17:50 |
|             3 |              3 |              1 |              6 | DÉBITO         | 2023-05-01 14:17:50 |
|             4 |              1 |              2 |              2 | CARTÃO         | 2023-05-01 15:34:21 |
|             5 |              2 |              3 |              4 | PIX            | 2023-05-01 15:34:21 |
|             6 |              3 |              4 |              6 | DÉBITO         | 2023-05-01 15:34:21 |
|             7 |              1 |              5 |              2 | CARTÃO         | 2023-05-01 15:34:21 |
|             8 |              2 |              6 |              4 | PIX            | 2023-05-01 15:34:21 |
|             9 |              3 |              1 |              6 | DÉBITO         | 2023-05-01 15:34:21 |
|            10 |              1 |              1 |              2 | CARTÃO         | 2023-05-01 20:46:44 |
|            11 |              2 |              2 |              4 | PIX            | 2023-05-01 20:46:44 |
|            12 |              3 |              3 |              6 | DÉBITO         | 2023-05-01 20:46:44 |
|            13 |              4 |              4 |              2 | CARTÃO         | 2023-05-01 20:46:44 |
|            14 |              5 |              5 |              4 | PIX            | 2023-05-01 20:46:44 |
|            15 |              6 |              6 |              2 | CARTÃO         | 2023-05-01 20:46:44 |
|            16 |              1 |              1 |              4 | PIX            | 2023-05-01 20:46:44 |
|            17 |              2 |              2 |              6 | DÉBITO         | 2023-05-01 20:46:44 |
|            18 |              3 |              3 |              2 | CARTÃO         | 2023-05-01 20:46:44 |
|            19 |              4 |              4 |              4 | PIX            | 2023-05-01 20:46:44 |
|            20 |              5 |              5 |              6 | DÉBITO         | 2023-05-01 20:46:44 |
+---------------+----------------+----------------+----------------+----------------+---------------------+
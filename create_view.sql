CREATE VIEW
    view_produtos_vendidos AS
SELECT
    produto_nome AS PRODUTO, (
        SELECT SUM(total_unidades)
        FROM compras
        WHERE
            produto_codigo = codigo_produto
    ) AS QTDE
FROM produtos;

mysql> select*from view_produtos_vendidos;

+ --------------------------+------+
| PRODUTO | QTDE | + --------------------------+------+
| MACARRÃO | 2 | | SARDINHA | 4 | | KATCHUP | 6 | | MAIONEZE | 8 | | AZEITE | 10 | | PALMITO | 1 | | CARNE BOVINA | 3 | | FRANGO CONGELADO | 5 | | FILÉ DE PEIXE CONGELADO | 7 | | CAFÉ | 9 | | LEITE LONG LIFE | 9 | | AÇUCAR REFINADO | 11 | + --------------------------+------+
12 rows in set (0.00 sec)
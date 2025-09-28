#Criar um novo banco de dados no MySQL chamado zoop_megastore
create database zoo_megastore;

use zoop_megastore;
# criar as tabelas a partir dos arquivos limpos no pandas.


ALTER TABLE vendas 
ADD CONSTRAINT fk_cliente 
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

# Qual o Top 5 produtos que mais geraram faturamento?

SELECT 
    produto,
    SUM(faturamento) AS faturamento_total
FROM 
    vendas
GROUP BY 
    produto
ORDER BY 
    faturamento_total DESC
LIMIT 5;



#Qual o Top 5 clientes que mais gastaram na loja?

SELECT 
    c.nome_cliente,
    SUM(quantidade * valor_venda) AS total_gasto
FROM 
    vendas v
JOIN 
    clientes c ON v.id_cliente = c.id_cliente
GROUP BY 
    c.id_cliente, c.nome_cliente
ORDER BY 
    total_gasto DESC
LIMIT 5;

#Qual o faturamento médio por cliente que é assinante do "ZOOP Prime" em comparação com os não assinantes?

SELECT 
    c.plano_assinatura,
    COUNT(DISTINCT c.id_cliente) AS total_clientes,
    SUM(v.faturamento) AS faturamento_total,
    ROUND(SUM(v.faturamento) / COUNT(DISTINCT c.id_cliente), 2) AS faturamento_medio_por_cliente
FROM 
    vendas v
JOIN 
    cliente c ON v.id_cliente = c.id_cliente
GROUP BY 
    c.plano_assinatura;

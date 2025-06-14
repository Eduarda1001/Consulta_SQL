--SELECT * FROM Municipios_Brasileiros WHERE Cidade LIKE 'Itaqua%'
--SELECT * FROM municipios_status WHERE populacao_residente>50000 

-- funcoes de consulta

-- INNER JOIN: Combina linhas com correspondências em ambas as tabelas
-- RIGHT JOIN: Retorna todos os registros da direita e os da esquerda com correspondência.
-- LEFT JOIN: Retorna todos os registros da esquerda e os da direita com correspondência.
-- FULL JOIN: Retorna todos os registros de ambas as tabelas, com ou sem correspondência.

-- (abaixo) selecionando as tabelas Municipios_Brasileiros e Municipio_Status, condicao numero de ID igual nas duas tabelas 
--SELECT Municipios_Brasileiros.Cidade, municipios_status.populacao_residente FROM Municipios_Brasileiros  
--INNER JOIN municipios_status ON Municipios_Brasileiros.municipio_ID = municipios_status.municipio_ID 

--Vendo os Estados com mais cidades:
--COUNT(): contagem da coluna dentro do parenteses; 
-- GROUP BY: agrupa por coluna e ORDER BY: ordena o resultado da consulta

-- *Contando cada valor de ocorrencia de cidades para cada estado, ordenados do maior ara o menor (descrescente)*

--SELECT Estado, COUNT(Cidade) FROM municipios_brasileiros  GROUP BY Estado ORDER BY 2 DESC ;

-- Soma do total de pessoas brancas e pardas em posicao de gerencia
-- SELECT SUM(pessoas_brancas_totais), SUM(pessoas_pretas_pardas_totais) FROM Gerencia_regiao;

-- Região com o maior número de pessoas brancas em posição de gerencia
--SELECT regiao, Max(pessoas_brancas_totais) FROM Gerencia_regiao;

-- Região com o maior número de pessoas pretas ou pardas em posição de gerencia
--SELECT regiao, Max(pessoas_pretas_pardas_totais) FROM Gerencia_regiao;

-- Região onde número de pessoas pretas pu pardas em posição de gerencia é maior do que o de branca
-- SELECT regiao FROM Gerencia_regiao WHERE gerencia_pessoas_brancas<gerencia_pessoas_pretas_pardas

--Região onde número de pessoas pretas pu pardas em posição de gerencia é menor do que o de branca
SELECT regiao FROM Gerencia_regiao WHERE gerencia_pessoas_brancas>gerencia_pessoas_pretas_pardas
------------------------------------------------------------------
-- PROJETO CHURN - ANÁLISE BIVARIADA
-- Objetivo: Cruzar variáveis com o Churn para achar correlações
------------------------------------------------------------------

-- Churn por Gênero
SELECT genero, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Idoso (Insight: Idosos tendem a ter um valor maior de churn)
SELECT idoso, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Parceiro (Insight: Clientes sem parceiros tendem a ter uma valor maior de churn)
SELECT parceiro, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Dependente (Insight: Clientes sem dependentes tendem a ter um valor maior de churn)
SELECT dependente, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Serviço de Telefone 
SELECT servico_telefone, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Múltiplas Linhas
SELECT multiplas_linhas, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Provedor de Internet (Insight: Clientes que possuem fibra óptica tendem a ter um valor bem maior de churn)
SELECT servico_internet, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1 ORDER BY 3 DESC;


-- Churn por Segurança Online
SELECT seguranca_online, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Backup Online
SELECT backup, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Proteção de Dispositivo
SELECT protecao_dispositivo, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Suporte Técnico
SELECT suporte_tecnico, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Streaming de TV
SELECT streaming_tv, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Streaming de Filmes
SELECT streaming_filmes, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;


-- Churn por Tipo de Contrato (Insigth: Contratos mês-mês tendem a ter um valor bem maior de churn)
SELECT tipo_contrato, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1 ORDER BY 3 DESC;

-- Churn por Fatura Digital (Insight: Clientes que recebem a fatura digital tendem a ter um valor maior de churn)
SELECT fatura_digital, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1;

-- Churn por Método de Pagamento (Insight: Clientes que pagam utilizando "Eletronick Check" acabando tendo um valor maior de churn)
SELECT metodo_pagamento, COUNT(*) as total,
       ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela GROUP BY 1 ORDER BY 3 DESC;
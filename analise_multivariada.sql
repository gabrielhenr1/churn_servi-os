---------------------------------------------------------
-- PROJETO CHURN - ANÁLISE MULTIVARIADA
-- Objetivo: Cruzar 3 ou mais variáveis para achar a causa raiz
---------------------------------------------------------

-- 1. Contrato vs. Internet vs. Churn
-- Este cruzamento mostra onde está o maior volume de cancelamentos da empresa. (Insight: O contrato mês-mês atrelado com fibra óptica acaba tendo um valor de churn que passa dos 50%)
SELECT 
    tipo_contrato, 
    servico_internet,
    COUNT(*) as total_clientes,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) as total_churn,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela
GROUP BY 1, 2
ORDER BY taxa_churn DESC;


-- 2.Internet vs. Suporte Técnico vs. Churn
-- Analisa se o suporte técnico realmente salva clientes de Fibra Óptica. (Insight: O fato do cliente possuir suporte técnico acaba diminuindo muito churn)
SELECT 
    servico_internet,
    suporte_tecnico,
    COUNT(*) as total_clientes,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela
WHERE servico_internet <> 'No'
GROUP BY 1, 2
ORDER BY 1, 4 DESC;


-- 3. PERFIL FINANCEIRO: Pagamento vs. Contrato vs. Churn (Insight: O contrato mês-mês atrelado com o pagamento por meio de "Eletronic Check" acaba tendo um valor de churn que passa dos s50%)
-- Identifica se o método de pagamento eletrônico piora o churn no contrato mensal.
SELECT 
    metodo_pagamento,
    tipo_contrato,
    COUNT(*) as total_clientes,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela
GROUP BY 1, 2
ORDER BY taxa_churn DESC;


-- 4. O CUSTO DO ABANDONO: Faixa de Valor vs. Churn vs. Tempo de Casa
-- Verifica se clientes novos (tenure baixo) com contas altas estão saindo mais. (Insight: As clientes com menos de 12 meses de tempo de casa possuem um valor de churn bem maior)
SELECT 
    CASE 
        WHEN tempo_casa <= 12 THEN '0-12 Meses'
        WHEN tempo_casa <= 24 THEN '13-24 Meses'
        ELSE 'Acima de 24 Meses'
    END AS faixa_tenure,
    COUNT(*) as total_clientes,
    ROUND(SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)::numeric / COUNT(*) * 100, 2) as taxa_churn
FROM tabela
GROUP BY 1
ORDER BY 1, 2, 3 DESC;
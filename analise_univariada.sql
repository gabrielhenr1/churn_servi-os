---------------------------------------------------------
-- PROJETO CHURN - ANÁLISE UNIVARIADA
-- Objetivo: Entender a distribuição individual de cada variável
---------------------------------------------------------

-- 1. IDENTIFICAÇÃO (Validação de IDs únicos)

SELECT COUNT(DISTINCT idcliente) AS total_clientes_unicos FROM tabela;

-- 2. VARIÁVEIS NUMÉRICAS (Estatísticas Descritivas)
-- Analisando Tempo de Casa, Valor Mensal e Total Gasto

SELECT 
    MIN(tempo_casa) AS min_tempo,
    MAX(tempo_casa) AS max_tempo,
    ROUND(AVG(tempo_casa), 2) AS media_tempo,
    
    MIN(valor_mensal) AS min_valor,
    MAX(valor_mensal) AS max_valor,
    ROUND(AVG(valor_mensal), 2) AS media_valor,
    
    MIN(CAST(total_gasto AS NUMERIC)) AS min_total,
    MAX(CAST(total_gasto AS NUMERIC)) AS max_total,
    ROUND(AVG(CAST(total_gasto AS NUMERIC)), 2) AS media_total
FROM tabela;



-- Perfil Demográfico
SELECT genero, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;
SELECT idoso, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;
SELECT parceiro, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;
SELECT dependente, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;

-- Serviços de Telecom
SELECT servico_internet, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;
SELECT tipo_contrato, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;
SELECT metodo_pagamento, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;

-- Variável Alvo (Target)
SELECT churn, COUNT(*) as qtd, ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as perc FROM tabela GROUP BY 1;

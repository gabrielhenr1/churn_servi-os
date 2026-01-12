📌 Introdução

Nos tempos atuais é possível se observar um grande aumento de serviços de diversos tipos oferecidos por empresas que visam o lucro. Com todo esse aumento um novo termo foi criado o "Churn" que basicamente é uma métrica que indica a perda de clientes ou assinantes de uma empresa em um período específico, dado toda essa importância o este projeto trabalha em cima dessa métrica, utilizando um dataset público do Kaggle visando entender a situação da empresa e como esta seu cenário de Churn e quais medidas podem ser tomadas.


🛠️ Ferramentas Utilizadas
SQL: Para extração, limpeza e análise exploratória multivariada.

Power BI: Para criação do dashboard interativo e storytelling de dados.

📈 Conclusões da Análise
1. Visão Geral e Perfil de Base

A análise inicial revelou uma base de clientes robusta, com faturamento superior a R$ 16 milhões e um perfil predominantemente jovem e independente sem dependentes. Foi identificado que a modalidade de contrato mensal é a preferida por mais de 55% dos usuários, o que, embora facilite a aquisição, cria uma vulnerabilidade estratégica devido à baixa barreira de saída para a concorrência ou cancelamento do serviço.

2. Diagnóstico de Churn (Causa Raiz)

O cruzamento de dados evidenciou que o Churn **não é aleatório**: ele está concentrado no grupo que utiliza Fibra Óptica sem o suporte de serviços de valor agregado (como Segurança Online e Backup). Notou-se uma redução significativa de cerca de 6% na taxa de cancelamento em clientes que possuem esse 'escudo' de serviços. Além disso, foi indentificado um ponto crítico no método de pagamento via 'Electronic Check' aliado ao contrato mensal, onde elevam drasticamente a perda de clientes.

3. Insights Estratégicos e Retenção
A análise temporal demonstrou que a janela de maior risco ocorre nos primeiros 17 meses de contrato, período após o qual a taxa de Churn se estabiliza. Um dado alarmante é que o ticket médio dos clientes que cancelam (R$ 74,44) é superior ao daqueles que permanecem (R$ 61,27), indicando que a empresa está perdendo seus usuários mais rentáveis de forma precoce.


🚀 Recomendações Acionáveis

Com o conhecimento da situação atual do serviço e os motivos principais dos Churns, se torna necessário a aplicação de algumas estrátegias para mudança de tal cenário, alguns exemplos seriam de:  

Migração de Contrato: Oferecer benefícios (como upgrades temporários) para clientes de Fibra migrarem do contrato mensal para o anual nos primeiros 6 meses.

Cross-selling de "Escudo": Automatizar campanhas de marketing para oferecer serviços de Suporte e Segurança como cortesia por 3 meses para novos assinantes.

Atenção aos Clientes de Alto Valor: Criar um alerta no sistema para o time de retenção sempre que um cliente com ticket acima de R$ 70,00 e contrato mensal atingir o 10º mês de casa (período próximo à curva de queda).

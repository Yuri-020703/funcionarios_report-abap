📄 Report ABAP: YTESTES2_YURI

Este projeto foi desenvolvido com o objetivo de praticar e reforçar conhecimentos fundamentais em ABAP, utilizando estruturas básicas de dados, controle de fluxo e manipulação de tabelas internas.

🎯 Objetivo do Report

O programa simula o cadastro de funcionários e realiza as seguintes operações:

Armazena dados de funcionários (matrícula, nome e salário) em uma tabela interna.

Calcula o total de salários pagos e a média salarial.

Exibe a lista completa de funcionários cadastrados.

Filtra e mostra apenas os funcionários com salário acima de R$ 1.500,00.

🧰 Técnicas e Conceitos Utilizados

Definição de TYPES para criar estruturas personalizadas (ty_funcionario, ty_agrupamento).

Uso de WORK AREAS (wa_funcionario, wa_agrupamento) para manipulação linha a linha.

Tabelas internas com estruturas definidas para armazenar múltiplos registros.

Operações aritméticas com campos do tipo P (packed number) e uso de DECIMALS.

Comandos clássicos do ABAP como:

APPEND – para inserir dados na tabela interna.

DESCRIBE TABLE – para contar o número de linhas.

LOOP AT ... INTO – para percorrer registros.

IF – para aplicar filtros.

WRITE – para exibição dos resultados.

⚠️ O código tem fins educacionais e foca em lógica de programação ABAP procedural. Não utiliza acesso a banco de dados nem comandos como SELECT, FOR ALL ENTRIES ou READ TABLE, pois a proposta é exercitar lógica com dados simulados.

## ZOOP Megastore
Projeto Análise da Dados na Zoop Megastore - Plataforma Alura

A ZOOP Megastore está buscando otimizar suas operações de e-commerce através de uma análise detalhada de dados. O objetivo é utilizar ferramentas de análise de dados para extrair insights valiosos que possam melhorar a gestão de estoque, otimizar campanhas de marketing e aumentar a eficiência.

A equipe que você integra será responsável por realizar análises exploratórias, criar visualizações e desenvolver relatórios que ajudem na tomada de decisões estratégicas.

O primeiro trimestre do ano acabou de fechar e a diretoria está ansiosa por insights para planejar o próximo semestre. Seu desafio é conduzir uma análise completa dos dados de vendas e clientes para responder a uma pergunta central: "Onde devemos focar nossos esforços de marketing e gestão de estoque para maximizar o lucro e a satisfação do cliente?"

Este projeto testará sua capacidade de transformar dados brutos em inteligência de negócio, utilizando as principais ferramentas do dia a dia de um analista.

1ª Etapa: exploração e limpeza dos dados com Pandas
A primeira tarefa de qualquer analista é entender a qualidade dos dados. Antes de carregar tudo em um banco de dados, use o Pandas para uma análise exploratória. A diretoria quer um resumo rápido do desempenho de vendas no trimestre.

Pergunta-chave: "Como foi nosso desempenho de vendas no primeiro trimestre e quais são as categorias de maior destaque?"

Sua missão:

Carregue o arquivo vendas.csv em um DataFrame.
<img width="1632" height="378" alt="image" src="https://github.com/user-attachments/assets/2b5cd854-09fe-4547-bb42-58a1413df6e6" />

Desafio de limpeza: Verifique a existência de dados ausentes (NaN) ou duplicados. O arquivo pode conter algumas linhas com valor_venda ou quantidade nulos. Decida a melhor estratégia: removê-los ou preenchê-los? Justifique sua escolha.

<img width="1153" height="358" alt="image" src="https://github.com/user-attachments/assets/8a1512da-f2e3-439f-b86e-9749790959fc" />
<img width="1668" height="358" alt="image" src="https://github.com/user-attachments/assets/ab65c41e-1acf-463e-8e80-dc7d03cb1973" />

Calcule o faturamento total (valor_venda * quantidade) para cada registro e crie uma nova coluna chamada faturamento.
<img width="964" height="311" alt="image" src="https://github.com/user-attachments/assets/62ed9fdb-25bb-4125-9274-7a504a8e7e9f" />


Agrupe os dados por mês para visualizar a tendência de faturamento.
<img width="1163" height="252" alt="image" src="https://github.com/user-attachments/assets/3230f544-e411-49e7-b729-33a815d34df1" />

Agrupe os dados por categoria para entender a distribuição do faturamento.
<img width="1295" height="298" alt="image" src="https://github.com/user-attachments/assets/2244f3e8-00a6-46a8-8238-9b31dd8ade75" />

Use o Matplotlib para criar duas visualizações simples:
Um gráfico de linha mostrando o faturamento total por mês.
<img width="552" height="435" alt="image" src="https://github.com/user-attachments/assets/3ddd1fc5-663b-4047-ab1e-d6753ad30786" />

Um gráfico de barras mostrando o faturamento total por categoria.
<img width="578" height="430" alt="image" src="https://github.com/user-attachments/assets/e01c368f-2a23-4d0a-a8ff-c3f248bc0009" />

## 2ª Etapa: estruturando os dados com MySQL
Com os dados explorados, é hora de estruturá-los em um banco de dados relacional. Isso permitirá consultas mais complexas e eficientes, além de ser a base para o seu dashboard no Power BI.

Pergunta-chave: "Quais são nossos produtos e clientes mais valiosos?"

Sua missão:

Crie um novo banco de dados no MySQL chamado zoop_megastore.
Crie as tabelas vendas e clientes e importe os dados dos arquivos .csv (já limpos na etapa anterior) para elas.
<img width="1113" height="707" alt="image" src="https://github.com/user-attachments/assets/30d18e20-a85f-4d88-908d-65fc897e205b" />
<img width="1205" height="864" alt="image" src="https://github.com/user-attachments/assets/9a9e7fa1-d32e-4d4f-b9d2-14a9bd61dad9" />

Desafio de SQL: Escreva consultas SQL para responder às seguintes perguntas:


Qual o Top 5 produtos que mais geraram faturamento?
<img width="1145" height="708" alt="image" src="https://github.com/user-attachments/assets/ecbadb9c-93e4-45a2-832d-da54079d642b" />

Qual o Top 5 clientes que mais gastaram na loja?
<img width="1131" height="844" alt="image" src="https://github.com/user-attachments/assets/e0e1d719-ce1d-4a29-ba14-d197fb71de35" />

Qual o faturamento médio por cliente que é assinante do "ZOOP Prime" em comparação com os não assinantes?
<img width="1057" height="612" alt="image" src="https://github.com/user-attachments/assets/fd7ed49f-4bc4-43d4-a6a6-e5f01e334d5f" />

## 3ª Etapa: análise geográfica e de clientes com Power BI
A equipe de expansão quer saber onde focar os investimentos. Eles acreditam que o comportamento de compra varia por região e pelo tipo de cliente (assinante Prime ou não).

Pergunta-chave: "Onde estão nossos melhores clientes e quais categorias de produtos eles preferem?"

Sua missão:

Conecte o Power BI ao seu banco de dados zoop_megastore.
Crie um relacionamento entre as tabelas vendas e clientes usando o id_cliente.

<img width="760" height="741" alt="image" src="https://github.com/user-attachments/assets/3bbc0d3e-8ab5-4a2b-83a9-752156dafe76" />

Desafio de visualização: Construa uma página de relatório no Power BI que contenha:
Um mapa mostrando o faturamento total por estado.
Um gráfico de barras empilhadas que mostre o faturamento por categoria em cada estado.
Dois cartões (Cards) com métricas importantes: Faturamento Total e Média de Faturamento por Cliente.
Um filtro (Slicer) para que a diretoria possa analisar os dados apenas de clientes "ZOOP Prime" (Sim/Não).

<img width="1477" height="946" alt="image" src="https://github.com/user-attachments/assets/544e35c4-ff20-40e5-b6be-a1c053f52a0f" />

## 4ª Etapa: dashboard estratégico e recomendações finais
Agora, junte todas as suas análises em um único dashboard para apresentar à diretoria. O objetivo final é fornecer uma recomendação clara baseada em dados.

Pergunta-chave: "Com base em tudo que analisamos, qual deve ser a nossa principal iniciativa estratégica para o próximo semestre?"

Sua missão:

Crie uma nova página no seu relatório do Power BI chamada "Dashboard Estratégico".
Desafio de storytelling: Combine as melhores visualizações das etapas anteriores e adicione novas para contar uma história. O dashboard deve incluir:
A tendência de faturamento mensal (gráfico de linha).
O ranking dos 5 produtos mais lucrativos (tabela ou gráfico de barras).
A análise geográfica de faturamento (mapa).
Uma análise comparativa do faturamento entre assinantes Prime e não assinantes (gráfico de colunas).
Adicione uma caixa de texto no dashboard com o título "Recomendações Estratégicas". Nela, escreva um parágrafo curto respondendo à pergunta-chave. Por exemplo: "Recomendamos focar a campanha de marketing nos estados de SP e RJ para a categoria de Eletrônicos, além de criar uma iniciativa para converter clientes regulares em assinantes Prime, dado que eles gastam, em média, X% a mais."
<img width="1456" height="897" alt="image" src="https://github.com/user-attachments/assets/8051ffc6-9779-4dad-b044-faf6639f9343" />

Ferramentas e Tecnologias
Power BI
Dados: arquivos CSV
Pandas


## ZOOP Megastore
Projeto Análise da Dados na Zoop Megastore

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




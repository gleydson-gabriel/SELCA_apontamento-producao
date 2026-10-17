
## Definições

- Código do sistema: GitHub
- Hospedagem: Cloudflare Pages
- Banco de dados e login: Supabase
- Interface: HTML, CSS e JavaScript

## Ajustes
Análise por cliente

### Adicionar recursos para que seja possível analisar os resultados estratificados por clientes

#### Necessidades:

* Nos relatório, gostaria de ver a estratificação de custo e horas por clientes. Exemplo: Qual é a despesa indireta das atividades de backoffice do cliente tal? Quanto devo considerar de custo fixo para precificar um atendimento para um serviço do cliente tal?

#### Coleta de dados:

* No apontamento, além da atividade, informar o cliente.
* Ter um correlação da atividade como o cliente.
* As tarefas terem uma tag que seja possível correlacionar com as análises pretendidas pelo gestor.

#### Ajustes no código:

* Na tela de "Cadastro de tarefas" do perfil administrador:
** Adicione um campo para cadastro dos clientes.

* Na tela de "Apontamento de Produção": 
  ** Adicionar um campo para atrelar a "Tarefa" ao "Cliente" no momento que o apontamento for criado.

* Nas telas de edição do apontamento:
  ** Permitir alterar também o cliente vinculado a uma data tarefa.

  
* No gráfico de pareto, ter um filtro por cliente e por atividade. Deve ser possível analisar:
  ** Somente as atividades independente do cliente, ou seja, todas as atividades sem filtro por cliente. Aqui seria possível entender o custo e horas por atividade da mesma forma que acontece atualmente.
  ** Somente cliente independente das atividades, ou seja, todos os clientes sem filtro por atividade. Aqui seria possível entender o custo e horas dedicadas a cada cliente.
  ** Manter os gráficos de horas e custo separados assim como está na versão atual. Mas agora adicionando o filtro por cliente conforme explanado.

* No gráfico "Total de horas acumuladas por tarefas":
  ** Adicionar um filtro por cliente e por tarefa, ou seja, assim como tem botões para esconder a visualização de horas e custo, ter botões para escolher a visualização por cliente ou por tarefa. Dessa forma, eu poderia por exemplo enxergar o custo e hora que um dado cliente tem no período analisado, por exemplo, no mês.
  ** Adicionar uma funcionalidade que, ao clicar na coluna do cliente, abra um gráfico estratificando todas as tarefas vinculadas àquele cliente no período analisado, ou seja, conseguiria ver a composição de tarefas, seu respectivo custo e horas para que represente o acumulado analisado.
  ** Quando a visualização estiver por tarefas ao invés de clientes, manter a funcionalidade atual de mostrar em um gráfico estratificado a dedicação à aquela tarefa ao longo dos dias que levou ao acumulado analisado.

* Estilização geral das páginas:
  ** Troque a cor de fundo para diferenciar a página de relatório das de apontamento. No perfil de administrador, troque também a cor de fundo da tela de cadastros para que eu consiga diferençar mais fácil os ambientes.
  


  

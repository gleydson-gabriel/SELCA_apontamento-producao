## Ajustes
Usabilidades, visualização e cadastros

### Adicionar recursos para que seja possível analisar os resultados estratificados por clientes

#### Necessidades:

* Melhorar a fluides da navegação e usabilidade da página.
* Melhorar a identificação da tarefa através de legendas.

#### Coleta de dados:

* Cadastros.
  
#### Ajustes no código:

* Criar um menu lateral de navegação:
** Organize todas as telas e subtelas em um menu de navegação no canto esquerdo para que eu consiga navegar mais livrimente entre as diferentes partes do sistema, desde o apontamento a relatórios

* Criar uma identação na tela de cadastros de tarefas:
** Criar um pré cadastro da "Família" para que fique organizado as tarefas por áreas e possa existir filtros.
  Atualmente eu sigo a seguinte lógica da tag: Tx.y, onde x é a área e o y é a atividade propriamente dito, por exemplo:
  x=0: Outros
  x=1: Secretaria
  x=2: Projetos
  x=3: Serviços

  x=0.0: Outras atividades não especificadas (Outros)
  x=0.1: Feriados (Outros)
  x=0.2: Falta Abonada (Outros)

  x=1.1: Emitir OS (Secretaria)
  x=1.2: Elaborar Propostas (Secretaria)

  x=2.1: Chamada CNPq (Projetos)
  x=2.2: Conversor de sinais (Projetos)

  x=3.1: Instalação do Totem Hyperus (Serviços)
  x=3.2: Instalação do PLC Zênite (Serviços)

  Ou seja, eu gostaria de que continuasse a aparecer o nome da tarefa precedido do identificador T0.1, T2.1, etc, mas que na hora do cadastro eu tenha que cadastra as famílias e na hora de cadastrar a atividade que obrigatoriamente haja um vínculo com a família. Pode incluisive ser gerado a tag automaticamente de modo sequência ao contrário de hoje que tenho que digitar manualmente o "Código"

* Legenda fixa no canto esquerdo da tela junto ao menu de navegação:
** Criar uma legenda de apontamentos de modo fixo para que ao navegar, eu consiga rapidamente associar o código à tarefa.

* Ajuste do tamanho dos gráficos:
** Ao clicar nas barras dos gráficos de Total acumulado de horas e custo por tarefas, os gráficos subsequentes estão responsivos ao tamanho da tela ficando muito grandes e desproporcionais, gostaria que usasse uma proporção fixa do tamanho igual ao que foi feito no gráfico de pareto, onde o tamnho fica fixo e para olhar na profundidade do eixo x é precisso rolar a barra.
** A tabela que é apresentada logo abaixo do gráfico explodido pode ter algumas colunas excluídas para melhorar a visualização, são elas: Apontamento, Tarefa, Intervalo do dia, R$/hora. Nesse caso ficaria as informações relevantes: Colaborador, Cliente, Observação, Tempo gasto e custo.

* Ajuste nos filtros de "Tarefa" e "Clientes" no Total acumulado de horas e custo por tarefas:
** Deixar os botões fixos para filtrar apenas a visualização atual, por exemplo, ao filtrar por tarefas e clicar em Elaborar Propostas, o gráfico explodido na sequência T1.2 · Elaborar Proposta, deve ter outros dois botões para que eu consiga descer a análise para saber quais clientes foram atendidos na respectiva tarefa no respectivo dia, ou seja, uma estratificação por cliente depois da estratificação por tarefa e virce-versa.

 

#import "imports.typ": abnt



#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8244 - Meio Ambiente e Interdisciplinaridade"
#let tipo-trabalho = "Quadro"
#let nome-avaliador = "Prof. Dr. Edson Vicente da Silva"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho Síntese de Pesquisa], // Título do trabalho
  autor: nome-aluno,
  instituicao: "Universidade Federal do Ceará",
  centro: "Centro de Ciências",
  programa: "Programa de Pós-Grad. em Desenvolvimento e Meio Ambiente",
  curso: "Curso de Doutorado",
  disciplina: nome-disciplina,
  local: "Fortaleza",
  ano: "2026",
  avaliador: nome-avaliador
)

#let quadro-obra(nome, referencia, autor, capitulos) = rect(
    width: 100%,           // Ocupa todo o espaço da coluna
    stroke: 1pt + black,   // Espessura e cor da borda
    radius: 5pt,           // Deixa as bordas arredondadas (opcional)
    inset: 12pt,           // Espaçamento interno (margem)
    [
      *Nome da Obra:* #nome #referencia\
      *Autor:* #autor \ 
      *Capítulos Analisados:* #capitulos
    ]
)

#let citacao_direta(body, cite_ref) = {
    pad(left: 4cm, top: 0.5em, bottom: 0.5em)[
      #set text(size: 10pt)
      #set par(leading: 0.5em)
      #body #cite_ref
    ]
}

= Projeto de Pesquisa Submetido ao PRODEMA/UFC para o Processo Seletivo de Doutorado 2026
A governança da terra no Brasil constitui um dos desafios mais complexos e persistentes para a consolidação de um estado democrático de direito que seja, simultaneamente, socialmente justo e ecologicamente equilibrado. No estado do Ceará, essa problemática assume contornos específicos, onde a histórica concentração fundiária evidenciada por um Índice de Gini persistentemente elevado nas análises do Instituto de Pesquisa e Estratégia Econômica do Ceará (IPECE) @medeiros2008analise - entrelaça-se com a degradação ambiental e a escassez hídrica presentes no semiárido brasileiro @sa2009degradacao.

Um dos fatores que torna complexa a gestão territorial brasileira é sua fragmentação entre múltiplos entes federativos e estaduais, resultando, por vezes, em um cenário de insegurança jurídica e vulnerabilidade socioambiental. Relatórios da Comissão Pastoral da Terra (CPT) indicam que a indefinição dominial não é apenas uma questão burocrática, mas um vetor de conflitos agrários que vitimam comunidades tradicionais e agricultores familiares @cpt2024conflitos. Neste contexto, a modernização da gestão fundiária não pode se restringir à titulação da terra; ela deve incorporar mecanismos robustos de responsabilização ambiental, garantindo que o uso da propriedade cumpra sua função social e ecológica, conforme preconizado no Art. 5º, XXIII e Art. 225 da Constituição Federal de 1988.

O presente projeto de pesquisa de doutorado insere-se neste contexto de governança fundiária brasileira, tendo por finalidade o desenvolvimento teórico-metodológico e a validação de uma ferramenta de valoração de danos ambientais, desenhada especificamente para subsidiar a tomada de decisão administrativa e judicial no Ceará. Os esforços investidos na execução deste projeto farão parte da segunda fase do sub-projeto Terra.Ce, vinculado ao projeto estruturante Cientista Chefe em Governança Fundiária e Ambiental, mantido pela Fundação Cearense de Apoio ao Desenvolvimento Científico e Tecnológico. Enquanto a primeira fase deste projeto focou na integração de bases de dados geoespaciais mantidas pelo Instituto de Desenvolvimento Agrário do Ceará (IDACE), a presente proposta visa avançar para a instrumentação da responsabilidade civil ambiental.

Esta proposta busca, também, preencher uma lacuna crítica: a ausência de parametrização regionalizada para a aplicação de métodos econométricos de valoração do dano. Embora existam diretrizes nacionais, como as do Conselho Nacional do Ministério Público (CNMP), sua aplicação prática carece de adaptação às especificidades do bioma Caatinga e aos modelos de produção locais. A pesquisa propõe, portanto, a modelagem de algoritmos de valoração que traduzam normas jurídicas complexas e teorias econômicas em fluxos de trabalho auditáveis, promovendo a transparência ativa exigida pelos órgãos de controle.

== JUSTIFICATIVA
A relevância desta pesquisa sustenta-se sobre um tripé: a necessidade de segurança jurídica na responsabilização ambiental, a obrigatoriedade da transparência pública e a especificidade ecológica do semiárido.

Em primeiro plano, observa-se que a discricionariedade na quantificação monetária de danos ambientais gera incertezas. A aplicação heterogênea de métodos de cálculo por fiscais e peritos pode resultar tanto na subestimação dos danos ferindo o princípio da reparação integral quanto na sua superestimação, o que fragiliza a cobrança em juízo. O Ministério Público do Estado de Mato Grosso (MPMT), em seu manual técnico de valoração, mostra que a adoção de metodologias padronizadas, como o Custo Ambiental Total Esperado (CATE), é essencial para garantir que a indenização cubra não apenas a restauração física, mas também as perdas intertemporais de serviços ecossistêmicos @mpmt2016valoracao. A ausência de tal padronização no Ceará justifica o desenvolvimento de uma ferramenta que adapte essas metodologias consolidadas à realidade local.

Secundariamente, a pesquisa responde a uma demanda imperativa de transparência de dados e processos, por parte das instituições públicas brasileiras e da população em geral. Porém, a mera disponibilização de dados brutos não satisfaz o requisito de "informação clara e de fácil compreensão" exigido pela Lei de Acesso à Informação (Lei nº 12.527/2011), necessitando que tais dados sejam mostrados de forma evidente e inteligível, por parte de quem se propuser a analisá-los. Como o público para o qual estes dados devem ser publicizados não é, necessariamente, especializado nos conceitos e tecnicidades neles presentes, é mister encontrar formas de facilitar o esforço para seu entendimento, para que possam ser corretamente utilizados.

Por outro lado, é importante saber que nesse processo de tratamento dos dados para serem visualizados, o servidor público pode sofrer reveses jurídicos, por não atentar aos limites legais da divulgação de informações. A Recomendação nº 92/2019/2018 do Ministério Público Federal (MPF) alerta que a gestão de informações ambientais, por exemplo, deve obedecer aos princípios da publicidade e eficiência, mas adverte que "mora dolosa dos agentes públicos em disponibilizar informações ambientais pela internet" pode caracterizar ato de improbidade administrativa @mpf2019recomendacao. Portanto, justifica-se a criação de uma ferramenta que não apenas calcule valores, mas gere relatórios fundamentados, inteligíveis e disponha de bases de dados que não firam os limites legais para sua exibição. Esta ferramenta, assim, fortaleceria, de forma segura, o controle social sobre a gestão do patrimônio ambiental do estado.

Por fim, a justificativa ecológica reside na necessidade de valorar corretamente os serviços ecossistêmicos, em particular o da Caatinga, que delimita o escopo de aplicação prática da ferramenta proposta. A transposição acrítica de coeficientes de valoração de biomas úmidos (como a Mata Atlântica) para o semiárido pode distorcer a realidade econômica dos danos. Este projeto propõe-se a calibrar as variáveis das equações de valoração (como custos de restauração e taxas de resiliência ecossistêmica) para o contexto cearense, contribuindo para o avanço da economia ecológica aplicada.

== REFERENCIAL TEÓRICO
A governança fundiária moderna exige mais do que o controle cartorial; exige a gestão transparente dos ativos e passivos ambientais associados ao território. A Constituição Federal de 1988, em seu art. 5º, XXXIII, e art. 37, § 3º, II, erige o acesso à informação à categoria de direito fundamental. No âmbito infraconstitucional, a Lei nº 12.527/2011 (Lei de Acesso à Informação - LAI) estabelece a publicidade como preceito geral e o sigilo como exceção @brasil2011lei.

Outrossim, a Recomendação nº 92/2019/2018 do Ministério Público Federal (MPF) brasileiro, fundamenta-se na Declaração do Rio (ECO-92), para argumentar que a eficiência na proteção ambiental depende diretamente do acesso à informação. O MPF destaca que a "gestão transparente da informação" (art. 6º, I da LAI) implica na obrigação do Estado em produzir e divulgar dados sobre a qualidade ambiental e a administração do patrimônio público @mpf2019recomendacao. A sonegação de dados ou a disponibilização de sistemas ininteligíveis ("sites vazios de conteúdo") configuram violação aos princípios da administração pública. Neste sentido, a plataforma Terra. Ce e, mais especificamente, sua ferramenta de valoração não devem ser meros artefatos tecnológicos, mas instrumentos de conformidade legal. Elas materializam o dever do Estado de fornecer informações "primárias, íntegras, autênticas e atualizadas" (art. 7º, IV da LAI), permitindo que a sociedade civil monitore a efetividade da reparação de danos ambientais em terras públicas e privadas.

=== Diretrizes Nacionais e Padronização
#cite(<cnmp2021diretrizes>, form: "prose"), através da publicação Diretrizes para Valoração de Danos Ambientais, estabeleceu um marco referencial para a atuação dos órgãos responsáveis pela defesa dos direitos coletivos e individuais, no processo de valoração de danos ambientais. O documento reforça a necessidade de utilização de métodos cientificamente validados e desencoraja o arbitramento aleatório de indenizações. As diretrizes enfatizam a hierarquia da reparação: prioridade para a obrigação de fazer (restauração) cumulada com a obrigação de indenizar pelos danos irreversíveis e interinos @cnmp2021diretrizes. A presente pesquisa adota estas diretrizes como o padrão normativo a ser modelado na ferramenta proposta.

=== Economia Ecológica e Valoração de Danos
A Valoração Econômica Ambiental (VEA) parte da premissa de que os recursos naturais, embora muitas vezes não transacionados em mercados, possuem valor econômico intrínseco derivado dos serviços ecossistêmicos que prestam (provisão, regulação, suporte e culturais) [@costanza1997value; @degroot2012global]. Na ausência de preços de mercado, a degradação ambiental gera externalidades negativas que, se não valoradas, resultam em falhas de mercado e ineficiência alocativa.

Para a responsabilização civil, a doutrina jurídica e econômica convergiu para métodos que buscam a reparação integral do dano. As Diretrizes para Valoração de Danos Ambientais @cnmp2021diretrizes, do Conselho Nacional do Ministério Público (CNMP), e o Manual de Valoração do Ministério Público de Mato Grosso (MPMT) @mpmt2016valoracao sistematizam as algumas abordagens aplicáveis ao contexto brasileiro:

- *Método do Custo de Reposição (MCR):* Estima os custos necessários para restaurar o ambiente ao seu status quo ante. Envolve despesas com engenharia, insumos biológicos (mudas, sementes) e mão de obra. É a base para o cálculo do dano material direto.
- *Método dos Custos Ambientais Totais Esperados - Dano Ambiental Intermitente (CATE I):* Proposto por #cite(<ribas1996proposta>, form: "prose") e adotado pelo MPMT @mpmt2016valoracao, este método introduz a variável temporal na valoração. Reconhece que, entre a ocorrência do dano e a completa restauração do ecossistema, há um lapso temporal onde a sociedade deixa de usufruir dos serviços ambientais. Esta proposição é deixada clara na passagem: "A metodologia dos Custos Ambientais Totais Esperados (CATE) pode ser, inicialmente, entendida como sendo a renda perpétua que a sociedade estaria disposta a receber em decorrência da indenização (pecuniária ou não) de determinado tipo de degradação ambiental." @mpmt2016valoracao.

Esta configuração do CATE, no entanto, não prevê do desfloramento como um dano ambiental intermitente, portanto, fruto de "uma ação degradadora, não repetitiva, única e não periódica". Assim sendo, #cite(<ribas1996proposta>, form: "prose") propõe calcular essa perda intertemporal (dano interino) através da fórmula de capitalização composta:

$C A T E_I = (C d times F_(i \/ d) times (1+j)^n) / ((1+j)^n - 1)$

Onde: 
- $C A T E_I$: custos ambientais totais esperados relativos ao desfloramento irregular de 1 hectare de floresta secundária no estágio inicial;
- $C d$: Custos diretos de recuperação;
- $F_(i \/ d)$: Fator de impacto (relação entre danos diretos e indiretos, escala de 1 a 9);
- $j$: Taxa de desconto intertemporal; 
- $n$: Tempo necessário para a recuperação total.

- *Valor de Compensação Ambiental (VCP):* Utilizado quando a restauração _in natura_ é inviável ou incompleta. O VCP agrega ao custo de reposição um "Índice de Impacto Ecossistêmico", calculado com base no valor monetário dos serviços ambientais por hectare/ano (baseado em #cite(<degroot2012global>, form: "prose")), multiplicado pela área afetada e pelo tempo de permanência do dano @mpmt2016valoracao.

== OBJETIVOS

=== Objetivo Geral
Desenvolver um modelo lógico-matemático e metodológico para uma ferramenta de valoração de danos ambientais, integrada à plataforma de governança fundiária do Ceará, que operacionalize as diretrizes do CNMP e do MPF, garantindo a padronização, transparência e segurança jurídica na quantificação da responsabilidade civil ambiental no estado.

=== Objetivos Específicos
1. Analisar e adaptar as metodologias de valoração (CATE e VCP) utilizadas pelo Ministério Público de Mato Grosso para as especificidades fitofisionômicas e econômicas do bioma Caatinga e das zonas de transição do Ceará;
2. Definir parâmetros regionais de custos de restauração (insumos, mão de obra, mecanização) e coeficientes de serviços ecossistêmicos, criando uma matriz de referência para o cálculo do Dano Material Direto no estado;
3. Modelar fluxos de decisão para a valoração de diferentes tipologias de dano (supressão vegetal, uso irregular de fogo, degradação de recursos hídricos e ocupação de APP), alinhados aos roteiros de perícia sugeridos pelo CNMP;
4. Estruturar os requisitos funcionais para a geração automática de relatórios técnicos de valoração que atendam aos critérios de publicidade e transparência ativa preconizados na Recomendação nº 92/2019 do MPF;
5. Validar o modelo proposto através da aplicação retroativa em casos reais de infrações ambientais em assentamentos estaduais, comparando os resultados obtidos com as sanções aplicadas originalmente.


== METODOLOGIA
A pesquisa adota uma abordagem metodológica mista, combinando análise jurídica, modelagem econômica e pesquisa aplicada. O percurso metodológico estrutura-se em quatro fases distintas:

=== Fase 1: Revisão Sistemática e Análise Normativa
Será realizada uma revisão bibliográfica exaustiva sobre economia ecológica, focando na valoração de serviços ecossistêmicos em regiões semiáridas. Paralelamente, proceder-se-á à análise documental jurídica, dissecando as "Diretrizes para Valoração de Danos Ambientais" do CNMP @cnmp2021diretrizes e os manuais técnicos do MPMT @mpmt2016valoracao. A Recomendação nº 92/2019 do MPF @mpf2019recomendacao será utilizada como marco teórico para definir os requisitos de transparência da ferramenta. O objetivo é mapear as variáveis legais obrigatórias que devem compor o algoritmo de valoração.

=== Fase 2: Parametrização e Regionalização (Adaptação do Modelo)
Esta fase constitui o núcleo da inovação da pesquisa. As fórmulas do CATE e VCP, originalmente calibradas para o Cerrado e Amazônia (conforme documento do MPMT), serão recalibradas para o Ceará.

- *Fator de Impacto ($F_(i \/ d)$):* Será desenvolvida uma matriz de ponderação ajustada para a biodiversidade da Caatinga, onde a resiliência ecológica e a escassez hídrica influenciam a gravidade do dano indireto.
- *Custos de Restauração ($C d$):* Será realizado um levantamento de preços de mercado no Ceará para as etapas de cercamento, preparo de solo, aquisição de mudas nativas e manutenção de projetos de reflorestamento. Estes dados alimentarão a base de cálculo do Método de Custo de Reposição.
- *Taxa de Desconto ($j$) e Tempo ($n$):* Serão definidos cenários de recuperação baseados em estudos de sucessão ecológica na Caatinga, ajustando o parâmetro temporal das equações de capitalização.

=== Fase 3: Modelagem Lógica da Ferramenta
Não se trata do desenvolvimento de software (codificação), mas da estruturação da inteligência do sistema. Serão elaborados diagramas de fluxo e árvores de decisão que guiarão o processo de valoração. O modelo definirá como os dados de entrada (área desmatada, tipologia da vegetação, localização em APP) interagem com os parâmetros definidos na Fase 2 para gerar o valor final da indenização. O modelo incluirá a lógica para a geração de relatórios que explicitem a memória de cálculo, atendendo à exigência de transparência do MPF.

=== Fase 4: Validação por Estudos de Caso
O modelo será testado através da simulação. Serão selecionados processos administrativos de infração ambiental pretéritos para aplicação da nova metodologia. Os valores obtidos serão comparados com os valores arbitrados originalmente e com os custos reais de projetos de recuperação executados (quando houver). Esta análise comparativa permitirá refinar os coeficientes do modelo e demonstrar a viabilidade econômica e jurídica da proposta.

== CRONOGRAMA DE EXECUÇÃO
O doutorado terá duração de 48 meses, com as atividades distribuídas conforme o quadro abaixo:

#set par(first-line-indent: 0pt)
#v(1em)
*Tabela 1: Cronograma de Atividades*
#table(
  columns: (50%, 12.5%, 12.5%, 12.5%, 12.5%),
  align: (left, center, center, center, center),
  stroke: 0.5pt,
  [*Atividades / Ano*], [*1*], [*2*], [*3*], [*4*],
  [Revisão Bibliográfica e Créditos Disciplinares], [X], [], [], [],
  [Análise das Diretrizes CNMP, MPF e MPMT], [X], [X], [], [],
  [Levantamento de Custos e Parâmetros da Caatinga], [], [X], [], [],
  [Modelagem Matemática e Lógica da Ferramenta], [], [X], [X], [],
  [Estudos de Caso e Validação do Modelo], [], [], [X], [],
  [Análise de Resultados e Redação da Tese], [], [], [X], [X],
  [Defesa da Tese], [], [], [], [X]
)


= Síntese de Pesquisa
// Definição das cores baseadas na imagem
#let cor-cabecalho = rgb("8298A3") 
#let cor-objetivo = rgb("#e4f5fd")
#table(
  columns: (30%, 70%),
  stroke: 0.5pt + black,
  align: left + horizon,
  
  // Cabeçalho Principal
  table.cell(
    colspan: 2, 
    fill: cor-cabecalho, 
    align: center + horizon,
    inset: 10pt
  )[
    #text(fill: white, weight: "bold", size: 14pt)[QUADRO SÍNTESE DE PESQUISA]
  ],

  // Bloco de Informações Gerais
  table.cell(inset: 8pt)[*Doutorando:*], 
  table.cell(inset: 8pt)[Wellington Wagner Ferreira Sarmento],
  
  table.cell(inset: 8pt)[*Instituição:*], 
  table.cell(inset: 8pt)[Universidade Federal do Ceará (UFC) -- Programa de Pós-Graduação em Desenvolvimento e Meio Ambiente (PRODEMA)],
  
  table.cell(inset: 8pt)[*Orientador:*], 
  table.cell(inset: 8pt)[Prof. Dr. Francisco Casimiro Filho],
  
  table.cell(inset: 8pt)[*Tema/Título/Objetivo Geral:*], 
  table.cell(inset: 8pt)[
    *Tema/Título:* Governança Fundiária e Justiça Ecológica: Instrumentação da Valoração Econômica de Danos Ambientais no Semiárido Cearense; \ \
    *Objetivo Geral:* Desenvolver um modelo lógico-matemático e metodológico para uma ferramenta de valoração de danos ambientais, integrada à plataforma de governança fundiária do Ceará, que operacionalize as diretrizes do CNMP e do MPF, garantindo a padronização, transparência e segurança jurídica na quantificação da responsabilidade civil ambiental no estado@sarmento2025governanca.\ \
  ],

  // OBJETIVO ESPECÍFICO I
  table.cell(
    colspan: 2, 
    fill: cor-objetivo, 
    align: left + horizon,
    inset: 8pt
  )[
    *OBJETIVO ESPECÍFICO I:* Analisar e adaptar as metodologias de valoração (CATE e VCP) utilizadas pelo Ministério Público de Mato Grosso para as especificidades fitofisionômicas e econômicas do bioma Caatinga e das zonas de transição do Ceará @sarmento2025governanca.
  ],
  table.cell(inset: 8pt)[*Fundamentação Teórica/Metodológica:*], 
  table.cell(inset: 8pt)[Valoração Econômica Ambiental (VEA); Revisão Sistemática e Análise Normativa (Fase 1); Parametrização e Regionalização do Fator de Impacto (Fase 2).],
  
  table.cell(inset: 8pt)[*Referências/Autores:*], 
  table.cell(inset: 8pt)[Ministério Público do Estado de Mato Grosso (2016); Ribas (1996); Costanza et al. (1997); De Groot et al. (2012).],
  
  table.cell(inset: 8pt)[*Interações Interdisciplinares:*], 
  table.cell(inset: 8pt)[Economia Ecológica, Ecologia (Bioma Caatinga), Direito Ambiental.],
  
  table.cell(inset: 8pt)[*Produtos a serem elaborados:*], 
  table.cell(inset: 8pt)[Matriz de ponderação ajustada (Fator de Impacto) para a biodiversidade da Caatinga.],

  // OBJETIVO ESPECÍFICO II
  table.cell(
    colspan: 2, 
    fill: cor-objetivo, 
    align: left + horizon,
    inset: 8pt
  )[
    *OBJETIVO ESPECÍFICO II:* Definir parâmetros regionais de custos de restauração (insumos, mão de obra, mecanização) e coeficientes de serviços ecossistêmicos, criando uma matriz de referência para o cálculo do Dano Material Direto no estado @sarmento2025governanca.
  ],
  table.cell(inset: 8pt)[*Fundamentação Teórica/Metodológica:*], 
  table.cell(inset: 8pt)[Método do Custo de Reposição (MCR); Levantamento e calibragem de preços de mercado locais (Fase 2).],
  
  table.cell(inset: 8pt)[*Referências/Autores:*], 
  table.cell(inset: 8pt)[Conselho Nacional do Ministério Público (2021).],
  
  table.cell(inset: 8pt)[*Interações Interdisciplinares:*], 
  table.cell(inset: 8pt)[Economia, Ciências Agrárias / Engenharia Florestal.],
  
  table.cell(inset: 8pt)[*Produtos a serem elaborados:*], 
  table.cell(inset: 8pt)[Matriz de referência regionalizada para cálculo do Dano Material Direto no Ceará.],

  // OBJETIVO ESPECÍFICO III
  table.cell(
    colspan: 2, 
    fill: cor-objetivo, 
    align: left + horizon,
    inset: 8pt
  )[
    *OBJETIVO ESPECÍFICO III:* Modelar fluxos de decisão para a valoração de diferentes tipologias de dano (supressão vegetal, uso irregular de fogo, degradação de recursos hídricos e ocupação de APP), alinhados aos roteiros de perícia sugeridos pelo CNMP @sarmento2025governanca.
  ],
  table.cell(inset: 8pt)[*Fundamentação Teórica/Metodológica:*], 
  table.cell(inset: 8pt)[Modelagem Lógica da Ferramenta (Fase 3); Estruturação da inteligência do sistema através de diagramas e árvores de decisão.],
  
  table.cell(inset: 8pt)[*Referências/Autores:*], 
  table.cell(inset: 8pt)[Conselho Nacional do Ministério Público (2021).],
  
  table.cell(inset: 8pt)[*Interações Interdisciplinares:*], 
  table.cell(inset: 8pt)[Ciência da Computação (Engenharia de Software/Sistemas), Direito Ambiental.],
  
  table.cell(inset: 8pt)[*Produtos a serem elaborados:*], 
  table.cell(inset: 8pt)[Diagramas de fluxo e árvores de decisão que guiarão o algoritmo de valoração.],

  // OBJETIVO ESPECÍFICO IV
  table.cell(
    colspan: 2, 
    fill: cor-objetivo, 
    align: left + horizon,
    inset: 8pt
  )[
    *OBJETIVO ESPECÍFICO IV:* Estruturar os requisitos funcionais para a geração automática de relatórios técnicos de valoração que atendam aos critérios de publicidade e transparência ativa preconizados na Recomendação nº 92/2019 do MPF @sarmento2025governanca.
  ],
  table.cell(inset: 8pt)[*Fundamentação Teórica/Metodológica:*], 
  table.cell(inset: 8pt)[Princípios da publicidade e transparência da informação pública (Fase 3).],
  
  table.cell(inset: 8pt)[*Referências/Autores:*], 
  table.cell(inset: 8pt)[Ministério Público Federal (2019); Brasil (2011 - Lei de Acesso à Informação).],
  
  table.cell(inset: 8pt)[*Interações Interdisciplinares:*], 
  table.cell(inset: 8pt)[Ciência da Computação, Direito Administrativo, Governança de Dados.],
  
  table.cell(inset: 8pt)[*Produtos a serem elaborados:*], 
  table.cell(inset: 8pt)[Levantamento de requisitos funcionais e lógica para a geração automática e transparente dos relatórios.],

  // OBJETIVO ESPECÍFICO V
  table.cell(
    colspan: 2, 
    fill: cor-objetivo, 
    align: left + horizon,
    inset: 8pt
  )[
    *OBJETIVO ESPECÍFICO V:* Validar o modelo proposto através da aplicação retroativa em casos reais de infrações ambientais em assentamentos estaduais, comparando os resultados obtidos com as sanções aplicadas originalmente @sarmento2025governanca.
  ],
  table.cell(inset: 8pt)[*Fundamentação Teórica/Metodológica:*], 
  table.cell(inset: 8pt)[Validação por Estudos de Caso e Simulação (Fase 4); Análise comparativa retrospectiva.],
  
  table.cell(inset: 8pt)[*Referências/Autores:*], 
  table.cell(inset: 8pt)[Processos administrativos pretéritos e base de dados geoespaciais (IDACE).],
  
  table.cell(inset: 8pt)[*Interações Interdisciplinares:*], 
  table.cell(inset: 8pt)[Gestão Ambiental, Estatística e Ciência de Dados.],
  
  table.cell(inset: 8pt)[*Produtos a serem elaborados:*], 
  table.cell(inset: 8pt)[Relatório de validação e modelo calibrado demonstrando a viabilidade econômica e jurídica da ferramenta.]
)

= Proposta de Sumário Detalhado
// Estilização da Proposta de Sumário para inclusão no texto
#align(center)[
  #block(
    width: 90%,
    stroke: 0.5pt + gray,
    inset: 20pt,
    radius: 4pt,
    fill: rgb("#fcfcfc"),
    [
      #set align(left)
      #text(weight: "bold", size: 14pt,)[Sumário]
      #v(1em)
      
      // Simulação manual das entradas do sumário para garantir a visualização
      #let sumario_item(nivel, titulo, pag) = {
        let indentacao = (nivel - 1) * 1.5em
        h(indentacao) 
        if nivel == 1 { strong(titulo) } else { titulo }
        box(width: 1fr, repeat([ . ])) 
        pag
        linebreak()
        v(0.4em)
      }

      #sumario_item(1, "1. INTRODUÇÃO", "01")
      #sumario_item(2, "1.1 Contextualização e Problema", "03")
      #sumario_item(2, "1.2 Objetivos e Justificativa", "08")
      
      #sumario_item(1, "2. REVISÃO DE LITERATURA", "15")
      #sumario_item(2, "2.1 Governança Fundiária e Estado de Direito", "16")
      #sumario_item(2, "2.2 A Lei de Acesso à Informação e Transparência", "24")
      #sumario_item(2, "2.3 Valoração de Danos Ambientais e CATE", "32")
      
      #sumario_item(1, "3. PROCEDIMENTOS METODOLÓGICOS", "45")
      #sumario_item(2, "3.1 Área de Estudo: Semiárido Cearense", "47")
      #sumario_item(2, "3.2 Modelagem Lógica e Algoritmos", "55")
      
      #sumario_item(1, "4. DESENVOLVIMENTO DO MODELO DE VALORAÇÃO", "65")
      #sumario_item(2, "4.1 Parametrização para a Caatinga", "68")
      #sumario_item(2, "4.2 Integração com a Plataforma Terra.Ce", "82")
      
      #sumario_item(1, "5. RESULTADOS E DISCUSSÕES", "95")
      #sumario_item(1, "6. CONCLUSÕES", "115")
      
      #v(0.5em)
      #text(style: "italic", size: 10pt, fill: gray)[Páginas estimadas para fins de visualização da proposta.]
    ]
  )
]
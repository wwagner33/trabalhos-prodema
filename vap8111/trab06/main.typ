#import "imports.typ": abnt



#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8111 - Desenvolvimento e Sustentabilidade no Brasil"
#let tipo-trabalho = "Resumo"
#let nome-avaliador = "Prof. Dr. Felipe Xavier"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho sobre a dimensão político institucional da sustentabilidade],
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


= Identificação das Obra e dos Autores

#grid(
  columns: (1fr, 1fr),   // Cria duas colunas de tamanhos iguais (frações)
  gutter: 15pt,          // Espaçamento entre as duas colunas
  
  quadro-obra(
    "A institucionalização das políticas e da gestão ambiental no Brasil: avanços, obstáculos e contradições",
    [@lima2011institucionalizacao],
    "Gustavo Ferreira da Costa Lima", 
    "Texto Completo, p. 121-132"
  ),
  
  quadro-obra(
    "Noção de natureza, ambiente, meio ambiente, recursos ambientais e recursos naturais", 
    [@dulley2004nocao],
    "Richard Domingues Dulley", 
    "Texto Completo, p. 15-26"
  )
)

= Resumo
A compreensão da *dimensão político-institucional da sustentabilidade* exige uma análise crítica que perpasse tanto a construção concetual do que se entende por Meio Ambiente quanto o percurso histórico e orçamental das ações do Estado. É neste escopo que as contribuições teóricas de #cite(<dulley2004nocao>, form: "prose") e de #cite(<lima2011institucionalizacao>, form: "prose") se interligam e se complementam no debate académico contemporâneo. Enquanto o primeiro autor promove uma clarificação epistemológica sobre as distinções entre *natureza*, *ambiente* e *recursos*, o segundo analisa a densa e contraditória trajetória de implementação das agências e leis ambientais no cenário brasileiro sob a ótica da *Ecologia Política*#footnote[A Ecologia Política é um campo de saber interdisciplinar que analisa a crise ambiental não apenas sob um viés técnico ou biológico, mas como resultado direto das dinâmicas econômicas, das relações de poder e das desigualdades sociais. Ela investiga como os modelos de desenvolvimento e as ideologias hegemônicas influenciam a apropriação dos recursos naturais e a distribuição dos impactos ecológicos@lima2011institucionalizacao[p. 121, 122].]. Ambas as obras revelam que as definições adotadas e os arranjos institucionais escolhidos não são neutros, mas sim o reflexo de disputas de poder e de interesses económicos estruturais.

No esforço de mapeamento concetual, *Richard Domingues Dulley* debruça-se sobre a premissa de que a Natureza não deve ser encarada como uma realidade puramente biológica, estática ou exterior ao ser humano. Apoiando-se na perspetiva histórica, o autor salienta que a natureza é uma categoria mediada pela Cultura, pelo Espaço e pelo Tempo, destacando que "não existe uma Natureza em si, existe apenas uma Natureza pensada" @dulley2004nocao[p. 16]. Para ilustrar este argumento, *Dulley* recorre ao exemplo do Sulfato de Cobre, demonstrando que este não representa apenas uma substância isolada no mundo físico, mas uma fórmula idealizada e artificializada pela Ciência @dulley2004nocao[p. 16-17]. Sob esta ótica, até mesmo as profundas alterações na ordem humana e social — como a exploração desumana do trabalho infantil ou o tratamento cruel de animais domésticos — passam a integrar e a moldar aquilo que modernamente se convencionou chamar de crise ambiental @dulley2004nocao[p. 17].

A partir deste entendimento, *Dulley* constrói uma distinção fulcral entre os conceitos de "ambiente" e "meio ambiente". O "ambiente" configura a totalidade holística da natureza conhecida e pensada pelo sistema social, ao passo que o "meio ambiente" se refere ao conjunto específico de condições, leis e interações bióticas e abióticas indispensáveis à sobrevivência e reprodução de uma espécie em particular, como o meio ambiente propício às minhocas @dulley2004nocao[p. 20-21]. Para os seres humanos, o meio ambiente manifesta-se predominantemente de forma artificializada, seja sob a forma do "meio ambiente construído" das cidades ou dos "ecossistemas cultivados" da agricultura @dulley2004nocao[p. 21]. Para evidenciar como a perceção do meio ambiente depende do conhecimento e da cultura local, o autor cita o exemplo do beduíno:

#citacao_direta([
  "Cada organismo requer seu ambiente particular, seu habitat específico. O ambiente humano é um desses muitos diferentes habitats, nosso lugar para viver dentro de toda da natureza. A sociedade industrial confundiu isto de modo que todo o mundo é compreendido meramente como o habitat humano, e nós falamos de um único meio ambiente, o nosso, que sozinho, deve ser protegido."
], [@dulley2004nocao[p. 20]])

Esta homogeneização antropocêntrica criticada por *Dulley* redefine a própria sustentabilidade. Na perspetiva do autor, a sustentabilidade futura deixa de ser uma mera conservação contemplativa e passa a ser indissociável da preservação rigorosa dos *recursos genéticos* e da biodiversidade face ao avanço predatório do capital global e da biotecnologia @dulley2004nocao[p. 15, 25-26]. Como exemplo paradigmático dos riscos desta dinâmica, *Dulley* menciona o desenvolvimento de tomates de grande tamanho por via da Engenharia Genética, um processo que gera _erosão genética_#footnote[Perda progressiva da diversidade genética dentro de uma espécie ou população ao longo do tempo@ferraz2009ameaca.] e que, eventualmente, exigirá o resgate das variedades primitivas e tradicionais para recompor a segurança biológica do fruto @dulley2004nocao[p. 24]. Assim, a sustentabilidade pressupõe o respeito pelos limites homeostáticos da biosfera contra a tendência de reduzir os recursos naturais renováveis e não renováveis a meros "ativos ambientais" quantificáveis pelo mercado @dulley2004nocao[p. 21, 24].

Por sua vez, *Gustavo Ferreira da Costa Lima* direciona o foco para a tradução destas disputas concetuais na esfera pública, analisando detalhadamente o processo recente de conclusão da gestão ambiental no Brasil a partir da década de 1970 @lima2011institucionalizacao[p. 121]. Para fundamentar a sua análise, o autor adota a definição de *Política Ambiental* como o conjunto de diretrizes e instrumentos que o poder público mobiliza para obter efeitos desejáveis sobre o meio ambiente, e define a *Gestão Ambiental* como um processo dinâmico de mediação de conflitos entre os diversos atores sociais @lima2011institucionalizacao[p. 122]. *Lima* detalha que este percurso histórico gerou avanços formais inegáveis, marcados pela criação progressiva de um sistema governamental de agências — como a SEMA#footnote[Secretaria Especial de Meio Ambiente, criada em 1973 sob indução internacional pós-Estocolmo.] (1973), o IBAMA#footnote[Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renováveis, fundado em 1989 unificando agências setoriais.] (1989), o Ministério do Meio Ambiente (1993), a ANA#footnote[Agência Nacional de Águas, criada em 2001 voltada à gestão de recursos hídricos.] (2001) e o ICMBio#footnote[Instituto Chico Mendes de Conservação da Biodiversidade, instituído em 2007 para tutelar as Unidades de Conservação federais.] (2007) — e por um arcabouço jurídico robusto que inclui a Política Nacional do Meio Ambiente (1981), a Lei de Crimes Ambientais (1998) e a Lei de Resíduos Sólidos (2010) @lima2011institucionalizacao[p. 124].

Neste contexto, *Lima* discute como o conceito de "desenvolvimento sustentável" foi absorvido pelas estruturas institucionais brasileiras, funcionando como um poderoso recurso discursivo e político para tentar conciliar o antagonismo histórico entre o crescimento económico e a proteção da natureza @lima2011institucionalizacao[p. 124-125]. Contudo, o autor propõe uma definição muito mais exigente e transformadora: a *"sustentabilidade democrática"* @lima2011institucionalizacao[p. 122]. Afastando-se de abordagens reducionistas, elitistas ou puramente mercantis, a sustentabilidade democrática é definida por *Lima* como o modelo que assegura efetivamente uma qualidade de vida digna para a maioria da população e que garante o direito real de participação dos cidadãos nas decisões políticas que governam o património ambiental público @lima2011institucionalizacao[p. 122-123].

A convergência das duas obras permite desenhar com clareza o que constitui a *dimensão político-institucional da sustentabilidade*. Esta dimensão refere-se ao espaço de disputa, regulação, descentralização e execução de políticas onde o Estado atua como mediador sistémico entre as forças do mercado e as exigências da Sociedade Civil. Todavia, *Lima* demonstra que, no caso brasileiro, esta dimensão é atravessada por contradições estruturais e por uma patente "falta histórica de prioridade política da política da questão ambiental no Brasil" @lima2011institucionalizacao[p. 126]. Para comprovar este descaso institucional, o autor expõe dados orçamentais alarmantes do período entre 2003 e 2010: enquanto o Ministério do Meio Ambiente recebeu apenas 9,8 bilhões de Reais, o Ministério da Agricultura foi contemplado com 51,9 bilhões, o Ministério da Defesa com 296,5 bilhões e os serviços da dívida pública consumiram quase 3 trilhões de Reais  -- "R\$ 2.843,8 bilhões"@lima2011institucionalizacao[p. 126].

A consequência direta desta fragilidade orçamental e institucional reflete-se na incapacidade de conter a degradação ambiental concreta no país. *Lima* cita exemplos nítidos desta lacuna regulatória, tais como os níveis persistentes de desmatamento, os baixíssimos índices de saneamento básico, o padrão caótico de urbanidade das metrópoles, o volume excessivo de agrotóxicos consumidos e a devastação impune promovida pelo agronegócio @lima2011institucionalizacao[p. 126]. Esta debilidade institucional decorre da posição ambígua e pendular do próprio Estado moderno, cindido entre a necessidade de promover a autonomia relativa em face do capital e a obrigação de responder às exigências de preservação:

#citacao_direta([
  "Presos numa posição contraditória, pois ambos, promotor do desenvolvimento econômico e regulador ambiental, engajam os governos em um processo de 'gestão ambiental' nel qual eles tentam legislar um limitado grau de proteção suficiente para evitar crítica, mas não significativamente o suficiente para descarrilar a locomotiva do crescimento."
], [(HANNIGAN, 2009, p. 41 _apud_ #cite(<lima2011institucionalizacao>, form: "prose"))])

Esta contradição aprofunda-se na arena político-institucional contemporânea através de dois fenómenos principais. O primeiro é o que *Lima* designa por "meias conquistas ambientais", em que a criação de novas Unidades de Conservação e a ampliação superficial de áreas preservadas no papel ocultam a ausência de meios reais de implementação e fiscalização @lima2011institucionalizacao[p. 129]. O segundo fenómeno reside na distorção dos conselhos participativos decorrente da descentralização política. Quando a transferência de encargos para estados e municípios não é acompanhada por recursos orçamentais equivalentes, ocorre uma transferência prejudicial de responsabilidade pública, gerando uma assimetria política em contextos locais que permite que as oligarquias dominantes manipulem as decisões e neutralizem a participação de comunidades tradicionais @lima2011institucionalizacao[p. 129].

Neste ponto, torna-se necessário desfazer distorções concetuais comuns e separar o Mecanismo de Desenvolvimento Limpo (MDL)#footnote[Mecanismo de flexibilização estabelecido pelo Protocolo de Quioto que permite a países industrializados financiar projetos de redução de emissões em nações em desenvolvimento em troca de créditos de carbono.] dos chamados Mercados Verdes ou de Carbono#footnote[Estruturas macroeconómicas abrangentes de comercialização e intercâmbio de ativos ou títulos ambientais sob critérios puramente mercantis.]. Enquanto o MDL representa um instrumento técnico e pontual de compensação de emissões regulado por tratados internacionais, os Mercados Verdes operam como a macroestrutura económica global que _commoditiza_ a Natureza. Ambos os conceitos se articulam ao partilharem a premissa neoliberal de que as forças de mercado e a inovação tecnológica seriam vias assépticas capazes de resolver a crise ecológica. Como resultado, ferramentas privatistas como a responsabilidade social abstrata, a autorregulação e as certificações ISO 14000#footnote[A série ISO 14000 corresponde a um Sistema de Gestão Ambiental (SGA) que visa equilibrar a proteção ambiental e a prevenção da poluição com as necessidades socioeconómicas@silva_iso14000.] passam a substituir a mediação pública do Estado, promovendo uma profunda despolitização dos conflitos territoriais e sociais reais @lima2011institucionalizacao[p. 122-123, 127-128], o que se choca diretamente com a privatização do património genético e biológico denunciado por *Dulley* @dulley2004nocao[p. 25].

Em suma, a síntese das obras de *Dulley* e *Lima* demonstra que a dimensão político-institucional da sustentabilidade não pode ser reduzida a um arranjo tecnocrático ou a um formalismo jurídico asséptico. A preservação duradoura do património ecológico e biogenético exige o reconhecimento de que os recursos naturais possuem um valor intrínseco e soberano que transcende a lógica mercantil de curto prazo @dulley2004nocao[p. 26]. Consequentemente, a efetivação da sustentabilidade na esfera institucional requer uma profunda reestruturação e democratização do aparelho estatal @lima2011institucionalizacao[p. 127-128]. Só através de um planeamento intersetorial complexo e de uma participação social verdadeiramente deliberativa será possível impedir que os direitos coletivos e os bens públicos sejam inteiramente sacrificados em prol dos imperativos da expansão económica @lima2011institucionalizacao[p. 131-132].
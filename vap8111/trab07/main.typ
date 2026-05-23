// main.typ

// Importação conjunta de todas as ferramentas de formatação do seu template
#import "imports.typ": abnt, quadro-obra, citacao_direta

#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8111 - Desenvolvimento e Sustentabilidade no Brasil"
#let tipo-trabalho = "Síntese Integrativa"
#let nome-avaliador = "Prof. Dr. Felipe Xavier"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", 
  titulo: [#tipo-trabalho dos artigos "Entre o Combate à Seca e a Convivência com o Semi-Árido: políticas públicas e transição paradigmática" e "Ação coletiva e desenvolvimento sustentável"],
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

= Identificação das Obras e dos Autores

#grid(
  columns: (1fr, 1fr),   
  gutter: 15pt,          
  
  quadro-obra(
    "Entre o Combate à Seca e a Convivência com o Semi-Árido: políticas públicas e transição paradigmática",
    [@silva2007entre],
    "Roberto Marinho Alves da Silva", 
    "Texto Completo, p. 467-485"
  ),
  
  quadro-obra(
    "Ação coletiva e desenvolvimento sustentável", 
    [@duque2012acao],
    "Ghislaine Duque, Antônio Carlos Pires de Mello, Maria da Glória Batista de Araújo", 
    "Texto Completo, p. 109-116"
  )
)

= Síntese Integrativa

A análise integrada das produções de @silva2007entre e @duque2012acao revela uma convergência teórica e empírica fundamental no que tange à reformulação das políticas públicas e dos modelos de desenvolvimento para a região semiárida do Nordeste brasileiro. Ambos os trabalhos elegem como tema central a *transição paradigmática* @silva2007entre[p. 468, 482] nas formas de intervenção na realidade sertaneja, investigando a substituição de abordagens tecnicistas e centralizadas por modelos pautados na *sustentabilidade* (@silva2007entre[p. 474-475]; @duque2012acao[p. 110]) e no protagonismo local. Sob uma ótica analítica rigorosa, os autores debruçam-se sobre um problema histórico compartilhado: a persistência de intervenções estatais fragmentadas e reducionistas que, ao focarem prioritariamente na chamada *solução hidráulica* (@silva2007entre[p. 473]; @duque2012acao[p. 111, 112]) e na modernização do agronegócio de exportação, negligenciaram as determinantes socioestruturais da pobreza regional e acabaram por reproduzir estruturas seculares de dominação, desigualdade e degradação ambiental.

Os objetivos que guiam as duas investigações complementam-se ao descortinar os bastidores dessa transição de cenários. Enquanto @silva2007entre[p. 468] busca identificar e analisar as mutações conceituais que orientam as políticas governamentais no *Semiárido*, correlacionando-as com paradigmas globais de sustentabilidade, Duque _et al._ (#cite(<duque2012acao>,form:"year")) adota uma abordagem metodológica baseada em um estudo de caso focado no *Coletivo Regional do Cariri, Curimataú e Seridó* (Paraíba) para demonstrar empiricamente como a *ação coletiva* da *agricultura familiar* consegue gerar progresso sensível em direção ao *desenvolvimento sustentável* e influenciar a agenda pública. O diagnóstico do espaço geográfico e social também é uníssono; os textos ressaltam que o *Semiárido brasileiro* possui características únicas no planeta em termos de densidade demográfica e biodiversidade, mas as limitações naturais como o déficit hídrico gerado pela alta evapotranspiração, os solos rasos e o bioma *Caatinga* foram historicamente instrumentalizados pelas elites econômicas. Essa instrumentalização se deu pela naturalização ideológica da miséria como fatalidade climática para ocultar a extrema concentração fundiária, convertendo grandes açudes públicos em benefícios privados @silva2007entre[p. 471-473]  e perpetuando a dependência eleitoral por meio do clientelismo assistencialista dos caminhões-pipa @duque2012acao[p. 112].

O paradigma da *modernidade técnica* impôs um padrão consumista e utilitarista que transformou a seca no principal argumento para a manutenção do _status quo_. Como aponta #cite(<silva2007entre>,form: "prose"):

#citacao_direta([
  (...) até hoje, reproduz-se o uso político da seca, transformando-a no "cavalo de batalha em cujos costados se põe toda a culpa da miséria nordestina"_(CASTRO, 1968, p. 90)_.], [@silva2007entre[p. 471]])

Esta ocultação das causas estruturais — como a extrema concentração fundiária e de renda — impede a reprodução da subsistência familiar e gera um cenário de exclusão crônica. Esse contexto de dependência é reforçado por Duque _et al._ (#cite(<duque2012acao>,form: "year")), que descrevem a persistência do *clientelismo* e do *coronelismo*, onde o assistencialismo governamental e a distribuição de água por caminhões-pipa em troca de votos moldaram uma *cultura da subalternidade*. Essa cultura consolidou-se como o principal obstáculo para a inclusão social e autonomia na região@duque2012acao[p. 112].

A principal contribuição teórica e prática de ambos os estudos reside na validação da proposta de *Convivência com o Semiárido* como uma alternativa robusta e multidimensional ao fracassado modelo de combate às secas @silva2007entre[p. 477]. Este autor sistematiza tal perspectiva ao defini-la como uma matriz cultural que articula as dimensões social, econômica, política, ambiental e "cultural do desenvolvimento", enfatizando a urgência de democratizar o acesso à terra e à água, e de implementar uma *educação contextualizada*. Por sua vez, Duque _et al._ (2012, p. 112-114) confere concretude a essa proposta ao esmiuçar as metodologias comunitárias que permitiram a ruptura da dependência política, tais como a introdução de *cisternas de placas de cimento*, o desenvolvimento de *Fundos Rotativos Solidários* (FRS) baseados na cooperação mútua, a valorização do "agricultor experimentador" e a proteção das chamadas *sementes da paixão* (sementes nativas) contra a invasão de insumos industriais.

O ponto de intersecção entre as conclusões das duas pesquisas repousa no reconhecimento de que as experiências exitosas nascidas da organização popular e articuladas em redes civis, como a *Articulação no Semi-Árido* (ASA), foram fundamentais para constranger o Estado a adotar tais tecnologias sociais como políticas públicas formais. Ambas as obras concluem, portanto, que a real sustentabilidade de qualquer projeto regional decorre da sua capacidade de descentralização e valorização das dinâmicas locais, sinalizando a emergência de uma *transição paradigmática* de longo prazo. Como bem sintetizam Duque _et al._ (#cite(<duque2012acao>,form: "year")):

#citacao_direta([
  (...) a sustentabilidade do desenvolvimento em curso decorre essencialmente do fato de que as soluções propostas não foram planejadas e impostas "de cima para baixo", mas foram baseadas em experiências da base.
], [@duque2012acao[p. 115]])

Embora compartilhem o mesmo horizonte analítico, as propostas de ambos os artigos guardam distinções de escopo e foco que enriquecem o debate acadêmico. #cite(<silva2007entre>,form: "prose") adota uma postura prioritariamente macrossociológica e analítica, empenhado em mapear os conflitos epistemológicos e as contradições intrínsecas das próprias agendas macroinstitucionais do Governo Federal. O autor evidencia como o orçamento público, por meio de órgãos como a *Superintendência de Desenvolvimento do Nordeste* (Sudene) e de planos como o *Plano Estratégico de Desenvolvimento Sustentável do Semi-árido* (PDSA), ainda prioriza o utilitarismo economicista e grandes obras estruturantes — a exemplo da transposição do Rio São Francisco e do agronegócio irrigado — em detrimento da conservação ambiental e do empoderamento social. 

Em contrapartida, a abordagem de Duque _et al._ (#cite(<duque2012acao>,form: "year")) é marcadamente microssociológica e voltada à práxis pedagógica da ação coletiva territorial. O texto demonstra detalhadamente como o avanço técnico local, apoiado por organizações como o *Programa de Aplicação de Tecnologia Apropriada às Comunidades* (PATAC), reconfigura o papel dos mediadores externos e pesquisadores no estabelecimento de um verdadeiro diálogo de saberes. Ademais, enquanto Silva identifica as tensões na arena discursiva do planejamento, Duque e colaboradores avançam ao apontar os desafios cotidianos e operacionais de uma interface direta com o aparelho burocrático estatal, denunciando o conflito latente entre o tempo qualitativo e pedagógico demandado pela mobilização democrática da base e o compasso estritamente quantitativo, normativo e estatístico imposto de cima para baixo pelo Estado. 

// O quadro a seguir sintetiza as principais diferenças e complementaridades entre os dois textos:

// #set text(size: 10pt)
// #table(
//   columns: (1.1fr, 2fr, 2fr),
//   align: (x,y) => if y == 0 {center} else {left},
//   stroke: 0.5pt + gray,
//   inset: 8pt,
//   fill: (x, y) => if y == 0 { rgb("e6f2ff") } else { none },
  
//   [*Obras Analisadas*], [*Pontos de Convergência*], [*Pontos de Divergência*],
  
//   [
//     *@silva2007entre*
//   ],
//   [
//     *Núcleo Paradigmático:* Defesa da transição do modelo secular de "combate à seca" para o paradigma multidimensional da "Convivência com o Semiárido".\
//     *Diagnóstico Estrutural:* Identificação de que a miséria regional é fruto da extrema concentração de terra e renda, e não uma fatalidade puramente climática.\
//     *Relação com a Base:* Reconhecimento de que redes da sociedade civil organizada (como a ASA) são os verdadeiros vetores de proposição e legitimação de novas agendas sustentáveis.\
//   ],
//   [
//     *Escopo Teórico:* Análise marcadamente macrossociológica, voltada para os conflitos epistemológicos no planejamento do desenvolvimento regional.\
//     *Arena de Conflito:* Foco nas contradições das agendas macroinstitucionais do Estado (ex: Sudene, PDSA) e na disputa orçamentária contra mega-obras (como a Transposição do Rio São Francisco e o agronegócio irrigado voltado ao mercado externo).\
//     *Dinâmica Analisada:* Foco nas tensões discursivas e ideológicas que moldam as políticas públicas federais.\
//   ],
  
//   [
//     *@duque2012acao*
//   ],
//   [
//     *Núcleo Paradigmático:* Validação empírica de que a real sustentabilidade regional nasce da autonomia e do desenvolvimento construído de baixo para cima (_bottom-up_).\
//     *Diagnóstico Estrutural:* Crítica à "solução hidráulica" tradicional e à persistência de estruturas tradicionais de dominação que perpetuam a vulnerabilidade social e a degradação dos ecossistemas.\
//     *Relação com a Base:* Demonstração de que a articulação comunitária em redes locais consegue converter tecnologias sociais em políticas descentralizadas e adaptadas.\
//   ],
//   [
//     *Escopo Teórico:* Abordagem microssociológica e empírica, estruturada a partir da práxis pedagógica e do cotidiano da agricultura familiar em um território delimitado (Cariri, Curimataú e Seridó paraibanos).\
//     *Arena de Conflito:* Foco nas fricções técnico-operacionais cotidianas decorrentes do contato direto com o aparelho burocrático estatal (ex: exigência inadequada de notas fiscais para refeições comunitárias e a imposição de regras concebidas para grandes obras).\
//     *Dinâmica Analisada:* Denúncia do conflito latente entre o tempo pedagógico/qualitativo da mobilização social e o tempo estatístico/quantitativo imposto de cima para baixo pelo Estado.\
//   ]
// )
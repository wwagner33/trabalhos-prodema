#import "imports.typ": abnt

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


#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8111 - Desenvolvimento e Sustentabilidade no Brasil"
#let tipo-trabalho = "Quadro"
#let nome-avaliador = "Prof. Dr. Felipe Xavier"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho de Evolução Histórica da Agricultura Brasileira],
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

= Identificação das Obra e dos Autores

#grid(
  columns: (1fr, 1fr),   // Cria duas colunas de tamanhos iguais (frações)
  gutter: 15pt,          // Espaçamento entre as duas colunas
  
  quadro-obra(
    "Questão Agrária e Ecologia: crítica da modena agricultura de Francisco Graziano Neto",
    [@grazianoneto1985questao],
    "Francisco Graziano Neto", 
    "p. 17-78"
  ),
  
  quadro-obra(
    "Essencial Celso Furtado", 
    [@furtado2013essencial],
    "Rosa Freire d'Aguiar (org.)", 
    "p. 144-159"
  )
)

= Quadro de Evolução Histórica da Agricultura Brasileira

#set text(lang: "pt", size: 8.5pt)

#table(
  columns: (7em, 7em, 6em, 7em, 1fr, 6em),
  inset: 5pt,
  // Função para centralizar apenas o cabeçalho (y == 0)
  align: (x, y) => if y == 0 { 
    center + horizon 
  } else { 
    (left, left, left, left, left, center).at(x) 
  },
  fill: (x, y) => if y == 0 { gray.lighten(60%) },
  stroke: 0.5pt + gray,
  
  [*Período/ Século*], [*Ciclo Principal*], [*Região Dinâmica*], [*Mão de Obra*], [*Estrutura Agrária e Impactos Econômicos*], [*Referência*],
  
  [Séc. XVI], 
  [Extrativismo], 
  [Litoral], 
  [Indígena], 
  [Exploração predatória de Pau-Brasil. Início da lógica de empresa comercial exploradora.], 
  [@furtado2013essencial[143]],

  [Séc. XVI-XVII], 
  [Açúcar], 
  [Nordeste], 
  [Escrava Africana], 
  [Sistema de Plantation e Sesmarias. Agricultura itinerante e predatória voltada à exportação.], 
  [@furtado2013essencial[144]],

  [Séc. XVIII], 
  [Mineração / Pecuária], 
  [MG, Sul, Interior], 
  [Escrava / Livre], 
  [Integração do mercado interno. Carne e tração animal para engenhos e núcleos urbanos.], 
  [@furtado2013essencial[145]],

  [Séc. XIX], 
  [Café], 
  [Vale do Paraíba e SP], 
  [Escrava / Imigrante], 
  [Lei de Terras (1850). Expansão cafeeira e formação da elite paulista. Colonato no Oeste Paulista.], 
  [@furtado2013essencial[146]],

  [Séc. XX (1930)], 
  [Crise do Café], 
  [São Paulo], 
  [Assalariado], 
  [Queima de estoques (socialização das perdas). Transferência de capital agrário para a indústria.], 
  [@grazianoneto1985questao[17]],

  [Pós-1960], 
  [Modernização Conservadora], 
  [Sul e Centro-Oeste], 
  [Bóias-frias], 
  [Revolução Verde e CAIs. Foco em commodities (soja/cana) e crise na produção de alimentos básicos.], 
  [@grazianoneto1985questao[18-19]],
)

#v(1em)

== Síntese dos Conflitos Estruturais
- *Monopólio vs. Acesso:* A terra no Brasil nunca foi um recurso de livre acesso, mas um instrumento de controle de mão de obra via latifúndio @furtado2013essencial[146].
- *Exportação vs. Subsistência:* A modernização tecnológica subordinou o campo à indústria, privilegiando o lucro cambial em detrimento da segurança alimentar nacional @grazianoneto1985questao[13].


// imports.typ

// 1. Definição do Quadro de Apresentação das Obras
#let quadro-obra(nome, referencia, autor, capitulos) = rect(
  width: 100%,
  stroke: 1pt + black,
  radius: 5pt,
  inset: 12pt,
  [
    *Nome da Obra:* #nome #referencia \
    *Autor(es):* #autor \
    *Capítulos Analisados:* #capitulos
  ],
)

// 2. Definição da Citação Direta Longa (Guia UFC, p. 65-66: recuo 4cm, fonte 10pt, simples)
#let citacao_direta(body, cite_ref) = {
  pad(left: 4cm, top: 0.5em, bottom: 0.5em)[
    #set text(size: 10pt)
    #set par(leading: 0.65em, first-line-indent: 0pt, justify: true)
    #body #cite_ref
  ]
  h(0pt) // Elemento de controle para forçar o recuo de 2cm do parágrafo seguinte
}

// 3. Função de Estilização Principal ABNT / UFC
#let abnt(
  arquivo-bibliografia: none,
  titulo: none,
  subtitulo: none,
  autor: none,
  instituicao: none,
  centro: none,
  programa: none,
  curso: none,
  disciplina: none,
  local: none,
  ano: none,
  avaliador: none,
  body,
) = {
  // Configurações Globais de Página e Fonte (Metricalmente idêntica à Arial no Linux)
  set page(margin: (top: 3cm, left: 2cm, right: 2cm, bottom: 3cm))
  set text(font: "Liberation Sans", size: 12pt, lang: "pt", region: "br")

  // Elementos pré-textuais sem recuo de parágrafo
  set par(leading: 1.5em, justify: false, first-line-indent: 0pt)

  // Regras de Títulos (Seções) (Guia UFC, p. 77)
  set heading(numbering: "1.1")
  show heading: set text(weight: "bold", size: 12pt)
  show heading: it => {
    if it.level == 1 {
      pagebreak(weak: true)
    }
    it
    v(1.5em)
    text(size: 0pt)[#h(0pt)]
  }

  // --- CAPA (Guia UFC, p. 12) ---
  page(align(center)[
    #set text(weight: "bold", size: 12pt)
    #set par(leading: 1.5em)

    // Caso tenha a imagem da logo da UFC, descomente a linha abaixo:
    #image("assets/images/logo_ufc.png", width: 1.8cm, height: 2.19cm) \
    #upper(instituicao) \

      #if centro != none [#upper(centro) \ ]
    #if programa != none [#upper(programa) \ ]
    #if curso != none [#upper(curso) \ ]

    #v(1fr)
    #upper(autor)

    #v(2fr)
    #upper(titulo)
    #if subtitulo != none [ \ #upper(subtitulo)]

    #v(2fr)
    #upper(local) \
    #ano
  ])

  // --- FOLHA DE ROSTO ---
  page(align(center)[
    #set text(weight: "regular", size: 12pt)
    #set par(leading: 1.5em)

    #upper(autor)

    #v(1fr)
    #upper(titulo)
    #if subtitulo != none [ \ #upper(subtitulo)]

    #v(1fr)
    #align(right)[
      #pad(left: 8cm, align(left)[
        #set par(leading: 0.65em, justify: true, first-line-indent: 0pt)
        #text(
          size: 12pt,
        )[Trabalho apresentado à disciplina de #disciplina, ministrada pelo(a) #avaliador, como requisito de avaliação.]
      ])
    ]

    #v(1fr)
    #upper(local) \
    #ano
  ])

  // --- SUMÁRIO ---
  // Títulos pré-textuais também exigem centralização pelo guia.
show outline: it => {
    show heading: set align(center)
    it
  }
  set par(leading: 1.5em)
  outline(title: "SUMÁRIO", indent: auto)
  pagebreak()

  // --- ELEMENTOS TEXTUAIS ---
  set page(numbering: "1", number-align: top + right)

  // Recuo de parágrafo padrão exigida pela UFC (2 cm) e espaçamento 1.5
  set par(leading: 1.5em, justify: true, first-line-indent: 2cm)

  body

  // --- ELEMENTOS PÓS-TEXTUAIS (REFERÊNCIAS) ---
if arquivo-bibliografia != none {
    pagebreak()
    
    // Garante que apenas o título da bibliografia fique centralizado
    show bibliography: it => {
      show heading: set align(center)
      it
    }
    
    // Aplica espaço simples (0.65em), alinhamento à esquerda e remove recuo
    set par(leading: 0.65em, justify: false, first-line-indent: 0pt)
    show bibliography: set text(size: 12pt)
    
    // Cria o espaço em branco (1 linha simples) exigido entre as referências
    show bibliography: set block(spacing: 1.3em) 
    
    bibliography(arquivo-bibliografia, title: "REFERÊNCIAS", style: "associacao-brasileira-de-normas-tecnicas")
  }
}

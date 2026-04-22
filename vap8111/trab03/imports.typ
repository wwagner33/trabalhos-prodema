// imports.typ

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
  body // O conteúdo do trabalho
) = {
  // 1. Configurações Globais de Página e Fonte
  set page(margin: (top: 3cm, left: 3cm, right: 2cm, bottom: 2cm))
  set text(font: ("Liberation Serif"), size: 12pt, lang: "pt", region: "br") //Troquei a Times New Roman pela Liberation Serif
  
  // ALTERAÇÃO AQUI: leading alterado de 1em para 0.65em para espaçamento simples
  set par(leading: 0.65em, justify: true, first-line-indent: 1.25cm)

  // 2. Regras de Títulos (Seções)
  set heading(numbering: "1.1") 
  show heading: set text(weight: "bold")
  show heading: it => {
    // Adiciona uma quebra de página antes de títulos de nível 1 (=)
    if it.level == 1 {
      pagebreak(weak: true)
    }
    
    it
    // O v(1.5em) dá o espaço de uma linha exigido.
    v(1.5em)
    // O text vazio garante que o Typst aplique o recuo (first-line-indent) no parágrafo seguinte.
    text(size: 0pt)[#h(0pt)] 
  }

  // Capa
  page(align(center)[
    #image("assets/images/logo_ufc.png", width: 1.8cm, height: 2.19cm) \
    #text(weight: "bold")[#upper(instituicao)] \
    #text(weight: "bold")[#upper(centro)] \
    #text(weight: "bold")[#upper(programa)] \
    #text(weight: "bold")[#upper(curso)]
    
    #v(1fr)
    #text(weight: "bold")[#upper(autor)]
    
    #v(2fr)
    #text(weight: "bold")[#upper(titulo)] \
    #if subtitulo != none [#text(weight: "bold")[#subtitulo]]
    
    #v(2fr)
    #text(weight: "bold")[#local] \
    #text(weight: "bold")[#ano]
  ])

  // Folha de Rosto
  page(align(center)[
    #upper(autor)
    
    #v(1fr)
    #upper(titulo) \
    #if subtitulo != none [#subtitulo]
    
    #v(1fr)
    #align(right)[
      #box(width: 8cm, align(left)[
        // Manteve-se um leading menor na folha de rosto para o texto de recuo, que já era simples/próximo de simples
        #set par(leading: 0.65em, first-line-indent: 0pt)
        #text(size: 10pt)[Trabalho apresentado à disciplina #text(weight: "bold")[#disciplina], ministrada pelo #text(weight: "bold")[#avaliador], como requisito de avaliação.]
      ])
    ]
    
    #v(1fr)
    #text(weight: "bold")[#local] \
    #text(weight: "bold")[#ano]
  ])

  // Sumário
  outline(title: "SUMÁRIO", indent: auto)
  pagebreak()

  // Configuração da numeração a partir da Introdução
  counter(page).update(1)
  set page(numbering: "1", number-align: top + right)

  // Renderiza o conteúdo escrito no main.typ
  body

  //Injeção Automática da Bibliografia no final do documento
  if arquivo-bibliografia != none {
    pagebreak()
    bibliography(arquivo-bibliografia, title: "REFERÊNCIAS", style: "associacao-brasileira-de-normas-tecnicas")
  }
}
#import "imports.typ": abnt

#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8255 - Sociedade, Natureza e Desenvolvimento: Fundamentos - Módulo I"
#let tipo-trabalho = "Resumos e Resenha Crítica"
#let nome-avaliador = "Prof. Dr. Marcelo Freire Moro"

#set footnote.entry(separator: line(length: 100%, stroke: 0.5pt))

#let quadro(titulo, corpo, fonte) = {

  show figure.caption: set align(left)

  set text(size: 11pt)

    show table: set table(
    inset: 0.85em, // Padding solicitado
    fill: (x, y) => if y == 0 { gray.lighten(60%) }, // Cor de fundo da primeira linha
  )

  show table.cell: it => {
    if it.y == 0 {
      set align(center + horizon) // Primeira linha centralizada
      it
    } else {
      set align(left + horizon) // Demais linhas à direita
      it
    }
  }

  figure(
    caption: figure.caption(position: top)[#titulo],
    kind: "quadro",
    supplement: [Quadro],
    stack(
      dir: ttb,
      spacing: 0.5em,
      corpo,
      align(left, text(size: 11pt)[Fonte: #fonte])
    )
  )


}

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho de Capítulos de Livros, Artigos e Vídeos referentes aos temas abordados em sala de aula],
  autor: nome-aluno,
  instituicao: "Universidade Federal do Ceará",
  centro: "Centro de Ciências",
  programa: "Programa de Pós-Grad. em Desenvolvimento e Meio Ambiente",
  curso: "Curso de Doutorado",
  disciplina: nome-disciplina,
  local: "Fortaleza",
  ano: "2026",
  avaliador: nome-avaliador,
)


= O surgimento e diversificação da vida na Terra, as grandes extinções em massa, e uma breve história da Vida no planeta
As duas seções seguintes apresentam resumos dos capítulos 4 e 25 do livro "Vida: a Ciência da Biologia"#footnote[Foi escolhida a versão em inglês deste livro, por estar disponível no formato digital, facilitando o trabalho de fichamento, escrita de observações e anotações, por parte do autor deste trabalho.] de Sadava _et al._ @sadava2011life, que abordam, respectivamente, os fundamentos bioquímicos dos ácidos nucléicos e as hipóteses sobre a origem da vida na Terra, bem como a história evolutiva da vida em relação aos eventos geológicos do planeta. Esses resumos destacam os principais conceitos, processos e marcos temporais discutidos em cada capítulo, proporcionando uma visão geral dos temas essenciais para a compreensão da biologia e da evolução.

== Resumo do Capítulo 4, "Ácidos Nucleicos e a Origem da Vida" ("_Chapter 4: Nucleic Acids and the Origin of Life_")
O Capítulo 4 do livro "_Life: The Science of Biology_"#footnote[Vida: a Ciência da Biologia.] (nona edição), intitulado "Nucleic Acids and the Origin of Life"#footnote[Ácidos Nucleicos e a Origem da Vida] @sadava2011life[p. 60], aborda a estrutura química dos ácidos nucleicos e as hipóteses científicas sobre a origem da vida. O conteúdo está organizado em quatro subseções principais: "_What Are the Chemical Structures and Functions of Nucleic Acids?_"#footnote[Quais são as estruturas e funções químicas dos ácidos nucleicos?] @sadava2011life[p. 61]; "_How and Where Did the Small Molecules of Life Originate?_"#footnote[Como e onde as pequenas moléculas da vida se originaram?] @sadava2011life[p. 65]; "_How Did the Large Molecules of Life Originate?_"#footnote[Como as grandes moléculas da vida se originaram?] @sadava2011life[p. 69]; e "_How Did the First Cells Originate?_"#footnote[Como as primeiras células se originaram?] @sadava2011life[p. 72].  

A compreensão das moléculas da vida passa pelo estudo dos ácidos nucleicos, cujos blocos construtores são os nucleotídeos @sadava2011life[p. 61]. Nessas moléculas, o pareamento de bases ocorre tanto no Ácido Desoxirribonucleico (_Deoxyribonucleic Acid_, DNA) quanto no Ácido Ribonucléico (_Ribonucleic Acid_, RNA)  @sadava2011life[p. 62]. O DNA é responsável por carregar a informação genética, que, por sua vez, é expressa por meio do RNA @sadava2011life[p. 63]. Além disso, a sequência de bases do DNA revela relações evolutivas entre os organismos, enquanto os próprios nucleotídeos desempenham outros papéis biológicos fundamentais @sadava2011life[p. 64].  

A investigação sobre a origem da vida exigiu experimentos que refutassem a teoria da geração espontânea @sadava2011life[p. 65]. Nesse contexto, o cientista *Louis Pasteur* utilizou um recipiente contendo caldo estéril (_sterile broth_) para demonstrar que microrganismos não surgem do nada, comprovando que a vida preexistente é condição necessária para que uma nova vida seja gerada @sadava2011life[p. 66]. Quanto à origem das primeiras pequenas moléculas, os cientistas apontam que a vida começou na água @sadava2011life[p. 65], embora também considerem a possibilidade de uma origem extraterrestre @sadava2011life[p. 66].  

O surgimento dessas moléculas na Terra primitiva é modelado por experimentos de síntese prebiótica @sadava2011life[p. 67]. Um marco nessa área é o experimento de *Miller* e *Urey*, que conseguiu sintetizar moléculas prebióticas em uma atmosfera experimental @sadava2011life[p. 68]. Com a formação e o acúmulo dessas pequenas moléculas, a evolução química pode ter propiciado a sua polimerização, dando origem às macromoléculas @sadava2011life[p. 69].  

Atualmente, existem duas teorias para explicar a emergência dos ácidos nucleicos, das proteínas e da química complexa @sadava2011life[p. 69], havendo fortes indícios de que o Ácido Ribonucleico  tenha atuado como o primeiro catalisador biológico @sadava2011life[p. 71]. O passo final em direção à vida celular é explorado por experimentos que investigam o encapsulamento e a origem das primeiras células @sadava2011life[p. 72]. Esse desenvolvimento primitivo culminou no surgimento de células ancestrais, cujas marcas sobreviveram até os dias atuais sob a forma de impressões fósseis (fossil imprints) @sadava2011life[p. 73]. 

#v(1em)

=== Quadro Resumo
O quadro a seguir sintetiza a cronologia das principais hipóteses científicas sobre a origem da vida, conforme discutido no Capítulo 4 da obra "_Life: The Science of Biology_" @sadava2011life. A transição da matéria inanimada para os primeiros organismos vivos não ocorreu de forma abrupta, mas sim por meio de um processo gradual de evolução química sob as condições da Terra primitiva. Desde a formação do planeta e a estabilização da água líquida até o encapsulamento de macromoléculas autorreplicantes em membranas, as etapas descritas ilustram os eventos fundamentais que permitiram o salto da química para a biologia, culminando no surgimento das protocélulas, os precursores da vida celular moderna.

#quadro(
  "Etapas evolutivas moleculares da Vida na Terra.",
  table(
      columns: (1fr, 2fr),
      [*Etapa Evolutiva*], [*Descrição do Processo*],

      [Evolução da Terra], 
      [Formação do sistema solar e da Terra (4,6 bya#footnote[_Billions of Years Ago_ (traduzindo para o português, Bilhões de Anos Atrás). Unidade de tempo usada para Astronomia, Geologia e Paleontologia, por exemplo.]). Condições iniciais de calor extremo e bombardeio de meteoritos @sadava2011life[p. 67].],

      [Estabilização da Hidrosfera],
      [Resfriamento da crosta terrestre permitindo a existência de água líquida, essencial como solvente para reações químicas @sadava2011life[p. 67].],

      [Química Pré-biótica],
      [Síntese de pequenas moléculas orgânicas (aminoácidos, nucleotídeos) via evolução química ou fontes extraterrestres @sadava2011life[p. 68].],

      [Fase Pré-RNA],
      [Polimerização espontânea de monômeros em polímeros (ácidos nucleicos e proteínas) em superfícies como argilas ou rochas @sadava2011life[p. 70].],

      [Surgimento do RNA],
      [Hipótese do "Mundo de RNA": moléculas capazes de autorreplicação e catálise enzimática (ribozimas) @sadava2011life[p. 71].],

      [Surgimento das Células],
      [Encapsulamento de polímeros em membranas lipídicas, formando protocélulas e mantendo um ambiente interno distinto @sadava2011life[p. 72].],
    ),
    "O autor (2026)."
)


== Resumo do Capítulo 25, "A História da Origem da Vida na Terra" ("_Chapter 25: The History of Life on Earth_")

O capítulo 25 da obra de Sadava et al., intitulado *"A História da Vida na Terra"*, dedica-se a investigar a profunda interdependência entre os eventos geológicos do planeta e a evolução biológica. A estrutura do capítulo organiza-se em três subseções fundamentais: a primeira (*25.1*) aborda os métodos científicos utilizados para datar eventos históricos; a segunda (*25.2*) examina como as mudanças no ambiente físico da Terra — como a deriva continental e as alterações atmosféricas — moldaram a vida; e a terceira (*25.3*) descreve os marcos biológicos registrados no registro fóssil, desde o Pré-cambriano até o surgimento da linhagem humana.

A reconstrução desse panorama histórico fundamenta-se na premissa de que a trajetória da vida não pode ser desvinculada das transformações físicas do globo, pois "a história da vida na Terra é uma história de mudanças tanto físicas quanto biológicas que se influenciam mutuamente" @sadava2011life[p. 518]. Para estabelecer essa cronologia, a ciência recorre ao registro fóssil aliado a técnicas precisas de datação radiométrica. Esse método utiliza o decaimento constante de isótopos, permitindo que pesquisadores determinem idades absolutas para rochas e vestígios orgânicos; enquanto o Carbono-14 é aplicado em amostras mais jovens, o sistema Potássio-Argônio possibilita o recuo em bilhões de anos na escala temporal @sadava2011life[p. 519-520]. A partir desses dados, a escala de tempo geológico é estruturada em quatro éons — Hadeano, Arqueano, Proterozóico e Fanerozóico —, sendo que os três primeiros compõem o vasto intervalo conhecido como Pré-cambriano @sadava2011life[p. 522].

Essa temporalidade é marcada por uma dinâmica planetária incessante, onde a configuração da litosfera sofreu alterações drásticas devido ao movimento das placas tectônicas. Esse fenômeno de deriva continental não apenas modificou a geografia global, mas atuou como um motor evolutivo ao isolar populações, criar novas correntes oceânicas e provocar extinções em massa durante a unificação ou fragmentação de supercontinentes como a Pangeia @sadava2011life[p. 524-525]. Paralelamente a esses movimentos, a "revolução do oxigênio" transformou a biosfera há cerca de 2,4 bilhões de anos. A atividade de cianobactérias fotossintetizantes resultou na acumulação de $O_2$ na atmosfera, o que não apenas viabilizou o metabolismo aeróbico, mais energético, mas também propiciou a formação da camada de ozônio, essencial para filtrar a radiação UV e permitir a colonização do ambiente terrestre @sadava2011life[p. 526-527].

Embora a vida tenha permanecido exclusivamente unicelular pela maior parte da história terrestre, o éon Proterozoico testemunhou o surgimento crucial dos eucariotos e da multicelularidade. Tais inovações biológicas culminaram na transição para o éon Fanerozoico, inaugurado pela Explosão Cambriana. Este evento caracteriza-se por uma diversificação sem precedentes, na qual a maioria dos planos corporais dos animais modernos surgiu repentinamente no registro fóssil @sadava2011life[p. 528-530]. No decorrer da era Paleozoica, plantas e artrópodes dominaram a terra firme, seguidos por anfíbios e répteis, até que a maior extinção em massa registrada, no final do período Permiano, dizimou aproximadamente 96% da vida marinha, encerrando a era @sadava2011life[p. 531].

A era subsequente, a Mesozoica, é amplamente reconhecida pelo domínio dos dinossauros, mas também marcou o surgimento de grupos vitais como os primeiros mamíferos e as plantas com flores. O fim dessa era ocorreu há cerca de 65 milhões de anos, quando o impacto de um asteroide na península de Yucatán gerou mudanças ambientais catastróficas, traçando o limite entre os períodos Cretáceo e Terciário (limite KT) e favorecendo a ascensão dos mamíferos @sadava2011life[p. 532-533]. Já na era Cenozoica, a diversificação prosseguiu sob a liderança de mamíferos, aves e angiospermas. No período Quaternário, o registro de ciclos de glaciações e o aparecimento da linhagem humana consolidaram o cenário atual da biodiversidade, encerrando a narrativa de 4,5 bilhões de anos de história explorada no capítulo @sadava2011life[p. 534-535].

#v(1em)
=== Quadro Resumo
O quadro a seguir sintetiza os principais marcos temporais da formação da vida na Terra, conforme discutido no Capítulo 25 da obra "_Life: The Science of Biology_" @sadava2011life. A história da vida é intrinsecamente ligada às transformações geológicas do planeta, onde eventos como a formação da Terra, a estabilização da hidrosfera, a revolução do oxigênio e as grandes extinções em massa moldaram a trajetória evolutiva. Desde as primeiras formas de vida unicelulares até a diversificação explosiva do Cambriano e o surgimento da linhagem humana, cada etapa representa um marco fundamental na complexa tapeçaria da vida, evidenciando a interdependência entre os processos físicos e biológicos que definem a história da Terra.

#quadro(
  "Principais marcos temporais da formação da vida na Terra",
  table(
      columns: (1fr, 3fr),
      [*Tempo Estimado*], [*Marco Temporal ou Evento Evolutivo*],
      [4,6 bya#footnote[_Billions of Years Ago_(traduzindo para o português, Bilhões de Anos Atrás). Unidade de tempo usada para Astronomia, Geologia e Paleontologia, por exemplo.]<bya>],
      [Formação da Terra e do Sistema Solar@sadava2011life[p. 522].],
      [3,8 bya@bya], [Primeiras formas de vida unicelulares (evidência química)@sadava2011life[p. 523].],
      [2,4 bya@bya], [Início da acumulação de $O_2$ (Revolução do Oxigênio)@sadava2011life[p. 527].],
      [1,5 bya@bya], [Surgimento dos primeiros organismos eucariotos@sadava2011life[p. 528]],
      [1,2 bya@bya], [Evidências de organismos multicelulares complexos@sadava2011life[p. 529].],
      [542 mya#footnote[_Millions of Years Ago_(traduzindo para o português, Milhões de Anos Atrás). Unidade de tempo usada para Astronomia, Geologia e Paleontologia, por exemplo.]<mya>],
      [Início do período Cambriano; Explosão Cambriana@sadava2011life[p. 530].],

      [251 mya@mya], [Extinção em massa do Permiano (fim da era Paleozoica)@sadava2011life[p. 531].],
      [65 mya@mya], [Impacto do asteróide e extinção do Cretáceo (limite KT)@sadava2011life[p. 533].],
      [1,8 mya@mya], [Início do Pleistoceno e surgimento do gênero Homo@sadava2011life[p. 535].],
    ),
    "O Autor (2026)."
)

= Conceito de Biodiversidade e suas Escalas

= A Classificação da Vida na Terra

= Fatores que Regulam a Distribuição da Biodiversidade no Planeta

= Domínios Biogeográficos do Brasil e Tipos de Vegetação do Ceará

= Biomas do Planeta Terra


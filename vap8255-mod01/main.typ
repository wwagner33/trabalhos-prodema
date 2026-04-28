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

= Identificação das Obras e dos Autores



= Resumo do Capítulo 4, "Ácidos Nucleicos e a Origem da Vida" ("_Chapter 4: Nucleic Acids and the Origin of Life_")

O capítulo 4 do livro, intitulado "Ácidos Nucleicos e a Origem da Vida", mergulha na essência molecular do que define os seres vivos e investiga as hipóteses científicas sobre como a vida se estabeleceu na Terra @sadava2011life[p. 60]. O conteúdo está organizado de forma lógica em quatro grandes subseções: as estruturas e funções químicas dos ácidos nucléicos no *4.1* @sadava2011life[p. 61], a origem das pequenas moléculas essenciais no *4.2* @sadava2011life[p. 66], o surgimento das macromoléculas no *4.3* @sadava2011life[p. 69] e a origem das primeiras células no *4.4* @sadava2011life[p. 72].

A compreensão da vida moderna inicia-se com o estudo dos ácidos nucléicos, Ácido Desoxirribonucleico (no inglês, _Deoxyribonucleic Acid_ - DNA) e Ácido Ribonucleico (no inglês, _Ribonucleic Acid_ - RNA), que são polímeros formados por nucleotídeos e especializados no armazenamento e na transmissão de dados genéticos @sadava2011life[p. 61]. É nesse ponto que "o conceito de 'informação' entra no vocabulário biológico" @sadava2011life[p. 62], visto que essas moléculas são as únicas capazes de codificar e transmitir instruções vitais. Enquanto o DNA carrega o código hereditário em sua estrutura de dupla hélice uniforme, o RNA atua como um intermediário essencial, traduzindo essa informação em sequências de aminoácidos para formar proteínas, que são as reais executoras das funções celulares @sadava2011life[p. 63]. Essa dinâmica é regida pelo dogma central da biologia molecular, que dita o fluxo de informação do DNA para o RNA e deste para as proteínas @sadava2011life[p. 64], permitindo a continuidade da vida e revelando, através de sequências de bases, os laços evolutivos que unem todos os organismos, como visto na proximidade genética entre humanos e chimpanzés @sadava2011life[p. 65].

A transição da química para a biologia exigiu condições ambientais específicas e a superação da antiga crença na geração espontânea. Experimentos realizados por *Francesco Redi* e *Louis Pasteur* foram cruciais para provar que a vida só surge de vida preexistente @sadava2011life[p. 66-67]. Contudo, para explicar a origem inicial, os cientistas voltam ao período Hadeano da Terra, há cerca de 4,6 bilhões de anos, quando o planeta era extremamente quente e bombardeado por cometas @sadava2011life[p. 67]. Com o resfriamento terrestre e a estabilização da hidrosfera, a água tornou-se o meio ideal para as reações químicas. Duas vertentes explicam o surgimento das pequenas moléculas orgânicas: uma sugere que componentes como aminoácidos e açúcares vieram do espaço via meteoritos, como o de Murchison @sadava2011life[p. 68], e a outra sustenta que eles foram sintetizados na própria Terra primitiva através de processos de evolução química e síntese prebiótica @sadava2011life[p. 68-69].

À medida que essas pequenas moléculas se acumulavam, processos de polimerização teriam levado ao surgimento de macromoléculas complexas @sadava2011life[p. 70]. Uma teoria influente propõe que o "RNA pode ter sido o primeiro catalisador biológico" @sadava2011life[p. 70], dando origem à hipótese do Mundo de RNA. Diferente do DNA, o RNA pode dobrar-se em formas tridimensionais complexas, permitindo-lhe atuar como uma ribozima capaz de acelerar reações químicas essenciais @sadava2011life[p. 71]. O passo final para a vida celular foi o encapsulamento desses sistemas moleculares e metabólicos em compartimentos membranosos, criando as protocélulas @sadava2011life[p. 72]. Este desenvolvimento permitiu que os organismos mantivessem um ambiente interno distinto do externo, culminando nas primeiras células cujos registros fósseis datam de aproximadamente 3,8 bilhões de anos atrás @sadava2011life[p. 73].

#v(1em)

== Principais Marcos
#quadro(
  "Etapas de evolução da vida na Terra.",
  table(
      columns: (1fr, 2fr),
      [*Etapa Evolutiva*], [*Descrição do Processo*],

      [Evolução da Terra], 
      [Formação do sistema solar e da Terra (4,6 bya#footnote[_Billions of Years Ago_(traduzindo para o português, Bilhões de Anos Atrás). Unidade de tempo usada para Astronomia, Geologia e Paleontologia, por exemplo.]). Condições iniciais de calor extremo e bombardeamento de meteoritos@sadava2011life[p. 67].],

      [Estabilização da Hidrosfera],
      [Resfriamento da crosta terrestre permitindo a existência de água líquida, essencial como solvente para reações químicas@sadava2011life[p. 67].],

      [Química Pré-biótica],
      [Síntese de moléculas orgânicas pequenas (aminoácidos, nucleotídeos) via evolução química ou fontes extraterrestres@sadava2011life[p. 68].],

      [Fase Pré-RNA],
      [Polimerização espontânea de monômeros em polímeros (ácidos nucléicos e proteínas) em superfícies como argila ou rochas@sadava2011life[p. 70].],

      [Surgimento do RNA],
      [Hipótese do "Mundo de RNA": moléculas capazes de auto-replicação e catálise enzimática (ribozimas)@sadava2011life[p. 71].],

      [Surgimento das Células],
      [Encapsulamento de polímeros em membranas lipídicas, formando protobiontes e mantendo um ambiente interno distinto@sadava2011life[p. 72].],
    ),
    "O Autor (2026)."
)


= Resumo do Capítulo 25, "A História da Origem da Vida na Terra" ("_Chapter 25: The History of Life on Earth_")

O capítulo 25 da obra de Sadava et al., intitulado *"A História da Vida na Terra"*, dedica-se a investigar a profunda interdependência entre os eventos geológicos do planeta e a evolução biológica. A estrutura do capítulo organiza-se em três subseções fundamentais: a primeira (*25.1*) aborda os métodos científicos utilizados para datar eventos históricos; a segunda (*25.2*) examina como as mudanças no ambiente físico da Terra — como a deriva continental e as alterações atmosféricas — moldaram a vida; e a terceira (*25.3*) descreve os marcos biológicos registrados no registro fóssil, desde o Pré-cambriano até o surgimento da linhagem humana.

A reconstrução desse panorama histórico fundamenta-se na premissa de que a trajetória da vida não pode ser desvinculada das transformações físicas do globo, pois "a história da vida na Terra é uma história de mudanças tanto físicas quanto biológicas que se influenciam mutuamente" @sadava2011life[p. 518]. Para estabelecer essa cronologia, a ciência recorre ao registro fóssil aliado a técnicas precisas de datação radiométrica. Esse método utiliza o decaimento constante de isótopos, permitindo que pesquisadores determinem idades absolutas para rochas e vestígios orgânicos; enquanto o Carbono-14 é aplicado em amostras mais jovens, o sistema Potássio-Argônio possibilita o recuo em bilhões de anos na escala temporal @sadava2011life[p. 519-520]. A partir desses dados, a escala de tempo geológico é estruturada em quatro éons — Hadeano, Arqueano, Proterozóico e Fanerozóico —, sendo que os três primeiros compõem o vasto intervalo conhecido como Pré-cambriano @sadava2011life[p. 522].

Essa temporalidade é marcada por uma dinâmica planetária incessante, onde a configuração da litosfera sofreu alterações drásticas devido ao movimento das placas tectônicas. Esse fenômeno de deriva continental não apenas modificou a geografia global, mas atuou como um motor evolutivo ao isolar populações, criar novas correntes oceânicas e provocar extinções em massa durante a unificação ou fragmentação de supercontinentes como a Pangeia @sadava2011life[p. 524-525]. Paralelamente a esses movimentos, a "revolução do oxigênio" transformou a biosfera há cerca de 2,4 bilhões de anos. A atividade de cianobactérias fotossintetizantes resultou na acumulação de $O_2$ na atmosfera, o que não apenas viabilizou o metabolismo aeróbico, mais energético, mas também propiciou a formação da camada de ozônio, essencial para filtrar a radiação UV e permitir a colonização do ambiente terrestre @sadava2011life[p. 526-527].

Embora a vida tenha permanecido exclusivamente unicelular pela maior parte da história terrestre, o éon Proterozoico testemunhou o surgimento crucial dos eucariotos e da multicelularidade. Tais inovações biológicas culminaram na transição para o éon Fanerozoico, inaugurado pela Explosão Cambriana. Este evento caracteriza-se por uma diversificação sem precedentes, na qual a maioria dos planos corporais dos animais modernos surgiu repentinamente no registro fóssil @sadava2011life[p. 528-530]. No decorrer da era Paleozoica, plantas e artrópodes dominaram a terra firme, seguidos por anfíbios e répteis, até que a maior extinção em massa registrada, no final do período Permiano, dizimou aproximadamente 96% da vida marinha, encerrando a era @sadava2011life[p. 531].

A era subsequente, a Mesozoica, é amplamente reconhecida pelo domínio dos dinossauros, mas também marcou o surgimento de grupos vitais como os primeiros mamíferos e as plantas com flores. O fim dessa era ocorreu há cerca de 65 milhões de anos, quando o impacto de um asteroide na península de Yucatán gerou mudanças ambientais catastróficas, traçando o limite entre os períodos Cretáceo e Terciário (limite KT) e favorecendo a ascensão dos mamíferos @sadava2011life[p. 532-533]. Já na era Cenozoica, a diversificação prosseguiu sob a liderança de mamíferos, aves e angiospermas. No período Quaternário, o registro de ciclos de glaciações e o aparecimento da linhagem humana consolidaram o cenário atual da biodiversidade, encerrando a narrativa de 4,5 bilhões de anos de história explorada no capítulo @sadava2011life[p. 534-535].

#v(1em)
== Principais Marcos Temporais

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




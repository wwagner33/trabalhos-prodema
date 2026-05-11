#import "imports.typ": abnt



#let nome-aluno = "Wellington Wagner Ferreira Sarmento"
#let nome-disciplina = "VAP8111 - Desenvolvimento e Sustentabilidade no Brasil"
#let tipo-trabalho = "Fichamento da Obra"
#let nome-avaliador = "Prof. Dr. Felipe Xavier"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho "Viver no limite: território e multi/transterritorialidade em tempos de in-segurança e contenção" de Rogério Haesbaert],
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

a) *Obra:*  "Viver no limite: território e multi/transterritorialidade em tempos de in-segurança e contenção" @haesbaert2014viver

b) *Autor:* Rogério Haesbaert

c) *Capítulos Analisados:* Parte I: Território e Multiterritorialidade em Questão @haesbaert2014viver[p. 6-41][footnote: a numeração das páginas segue o documento fornecido pelo professor, e não a numeração original da obra.]

= Fichamento de Citações
Este trabalho apresenta um fichamento sistemático de citações da obra "Viver no limite: território e multi/transterritorialidade em tempos de in-segurança e contenção" #cite(<haesbaert2014viver>, form: "year"), do geógrafo Rogério Haesbaert. O levantamento tem como objetivo compilar e estruturar os recortes textuais centrais do autor acerca das noções de território, territorialidade, múltiplos territórios e multiterritorialidade, indicadas pelo Prof. Dr. Felipe Xavier, professor da disciplina.

== Território
Para #cite(<haesbaert2014viver>, form: "prose"), o território é compreendido como uma perspectiva sobre o espaço geográfico que enfatiza as relações de poder @haesbaert2014viver[p. 7]. Sua característica primordial reside no amálgama indissociável entre as dimensões funcional e simbólica @haesbaert2014viver[p. 9, 12]. 

Enquanto a funcionalidade remete à dominação material e ao território como recurso, a dimensão simbólica refere-se à apropriação subjetiva e ao território como abrigo @haesbaert2014viver[p. 12, 19]. Essa dualidade expressa-se no contraste entre o paradigma hegemônico, focado na exploração de superfícies, e o contra-hegemônico, que valoriza o espaço vivido e densificado por relações sociais @haesbaert2014viver[p. 6]. O conceito estrutura-se, portanto, na imbricação de múltiplos poderes, variando conforme os sujeitos e a aplicação do território como categoria analítica, prática ou normativa @haesbaert2014viver[p. 7, 19]. 

A seguir, são apresentadas citações diretas que ilustram esses aspectos fundamentais do conceito de território, tratado na obra analisada.

#citacao_direta(
  [O paradigma territorial hegemônico vê o espaço como mera extensão ou superfície a ser transposta e substrato a ser explorado, a terra-território como instrumento de dominação, recurso basicamente funcional, dentro de uma economia ainda fundamentada no modelo extrativo-agro-exportador.],
  [@haesbaert2014viver[p. 6]]
)

#citacao_direta(
  [Aquilo que propomos denominar de paradigma territorial contra-hegemônico, ao contrário dessa visão mais absoluta, homogeneizante e universal do espaço, o vê antes de tudo como um espaço vivido, densificado pelas múltiplas relações sociais e culturais que fazem do vínculo sociedade-"terra" (ou natureza, se quisermos) um laço muito mais denso...],
  [@haesbaert2014viver[p. 6]]
)

#citacao_direta(
  [Como já discutido no capítulo anterior, tomamos o pressuposto de que espaço, enquanto espaço geográfico, ou seja, aquele que parte da abordagem sobre a relação sociedade/natureza, é mais amplo que território – este sendo visto como um olhar sobre o espaço geográfico que coloca seu foco nas relações de poder, isto é, enfatiza as relações espaço/poder.],
  [@haesbaert2014viver[p. 7]]
)

#citacao_direta(
  [Desde sua origem, o território nasce com uma dupla conotação, material e simbólica, pois etimologicamente aparece tão próximo de terra-territorium quanto de terreo-territor (terror, aterrorizar), ou seja, tem a ver com dominação (jurídico-política) da terra e com a inspiração do terror, do medo...],
  [@haesbaert2014viver[p. 9]]
)

#citacao_direta(
  [Território, assim, em qualquer acepção, tem a ver com poder, mas não apenas com o tradicional poder político. Ele diz respeito tanto ao poder no sentido mais explícito, de dominação, quanto ao poder no sentido mais implícito ou simbólico, de apropriação.],
  [@haesbaert2014viver[p. 9]]
)

#citacao_direta(
[Propomos, assim, iniciar nossa discussão conceitual a partir da distinção, necessária, mas raramente explicitada, entre território como categoria de análise, como categoria da prática e como categoria normativa — distinção esta que se dá, sobretudo, a partir dos distintos sujeitos que estão envolvidos na questão.],
[@haesbaert2014viver[p. 7]]
)

#citacao_direta(
[Portanto, todo território é, ao mesmo tempo e obrigatoriamente, em diferentes amálgamas, funcional e simbólico, pois as relações de poder têm no espaço um componente indissociável tanto na realização de “funções” quanto de “significados”.],
[@haesbaert2014viver[p. 12]]
)

#citacao_direta(
[Milton Santos, sob a inspiração (nem sempre explícita) de Jean Gottman (1973), propõe distinguir o território como recurso, prerrogativa dos “atores hegemônicos”, e o território como abrigo, dos “atores hegemonizados”.],
[@haesbaert2014viver[p. 12]]
)

#citacao_direta(
[O território pode ser concebido a partir da imbricação de múltiplas relações de poder, do poder mais material das relações econômico-políticas ao poder mais simbólico das relações de ordem mais estritamente cultural.],
[@haesbaert2014viver[p. 19]]
)

== Territorialidade
Para #cite(<haesbaert2014viver>, form: "prose"), a territorialidade constitui uma dimensão conceitual mais abrangente que o próprio território, incorporando as relações políticas, econômicas e culturais que orientam a organização espacial e atribuem significado ao lugar @haesbaert2014viver[p. 12]. 

A especificidade da noção de territorialidade, reside em sua forte carga imaterial, transcendendo a mera abstração analítica @haesbaert2014viver[p. 16]. Como "imagem" ou "símbolo", a territorialidade atua como uma estratégia político-cultural eficaz, capaz de existir e mobilizar identidades mesmo na ausência de uma base territorial concretamente manifestada, como ilustrado pelo ideário da "Terra Prometida" @haesbaert2014viver[p. 16]. Dessa forma, o autor opera com o conceito tanto como uma condição genérica para a existência do território quanto como a expressão fundamental de sua dimensão simbólica e vivida @haesbaert2014viver[p. 18]. 

As citações a seguir evidenciam a amplitude estratégica e imaterial conferida ao conceito de territorialidade na referida obra.


#citacao_direta(
  [A territorialidade, além de incorporar uma dimensão mais estritamente política, diz respeito também às relações econômicas e culturais, pois está "intimamente ligada ao modo como as pessoas utilizam a terra, como elas próprias se organizam no espaço e como dão significado ao lugar".],
  [@haesbaert2014viver[p. 12]]
)

#citacao_direta(
  [A territorialidade, no nosso ponto de vista, não é apenas "algo abstrato", num sentido que muitas vezes se reduz ao caráter de abstração analítica, epistemológica. Ela é também uma dimensão imaterial, no sentido de que, enquanto "imagem" ou "símbolo" de um território, existe e pode inserir-se eficazmente como uma estratégia político-cultural, mesmo que o território [...] não esteja concretamente manifestado...],
  [@haesbaert2014viver[p. 16]]
)

#citacao_direta(
  [Optamos aqui por tratar a territorialidade num sentido mais amplo do que território [...], mas sempre com o cuidado de identificar, a cada momento, se estamos nos referindo à territorialidade como condição genérica para a existência de um território, tenha ele existência efetiva ou não [...], ou se estamos nos reportando à dimensão simbólica [...] ou "vivida" do território...],
  [@haesbaert2014viver[p. 18]]
)

#citacao_direta(
[A territorialidade [...] é também uma dimensão imaterial, no sentido de que, enquanto “imagem” ou símbolo de um território, existe e pode inserir-se eficazmente como uma estratégia político-cultural, mesmo que o território, pelo menos nos moldes a que se refere, não esteja concretamente manifestado — como no conhecido exemplo da “Terra Prometida” dos judeus.],
[@haesbaert2014viver[p. 16]]
)

== Múltiplos Territórios
A noção de *"múltiplos territórios"* é estabelecida como uma condição necessária, ainda que não suficiente, para a ocorrência da multiterritorialidade, distinguindo-se desta por referir-se à coexistência de configurações espaciais diversas sem pressupor a sua vivência concomitante @haesbaert2014viver[p. 21]. 

De acordo com #cite(<haesbaert2014viver>, form: "prose"), o sistema capitalista contemporâneo opera sob dois padrões dominantes: a lógica zonal, centrada no controle estatal de áreas contínuas e delimitadas, e a lógica reticular, voltada para a gestão empresarial de fluxos e conexões globais @haesbaert2014viver[p. 21-22]. 

O autor propõe, ainda, uma tipologia que identifica múltiplas territorializações, variando desde espaços de exceção e modelos uniterritoriais fechados até configurações flexíveis e redes multi-identitárias @haesbaert2014viver[p. 24-25]. Adicionalmente, diferencia-se a "pluralidade de territórios", que remete à simples multiplicidade de formas na superfície, dos "territórios plurais", que envolvem a sobreposição de diferentes jurisdições e representações sobre um mesmo cenário espacial @haesbaert2014viver[p. 27].

As passagens a seguir detalham os padrões e as lógicas que fundamentam a categoria de múltiplos territórios na obra analisada.

#citacao_direta(
  [Inicialmente é necessário distinguir aquilo que denominamos "múltiplos territórios" e "multiterritorialidade" – a multiplicidade de territórios como uma condição sine qua non, necessária, mas não suficiente, para a manifestação da multiterritorialidade. Rompendo com o dualismo entre fixidez e mobilidade, território e rede, propusemos uma primeira distinção, muito importante na constituição dos "múltiplos territórios" do capitalismo, entre territórios-zona, mais tradicionais, e territórios-rede, mais envolvidos pela fluidez e a mobilidade.],
  [@haesbaert2014viver[p. 21]]
)

#citacao_direta(
[Poderíamos mesmo, generalizando muito, afirmar que o capitalismo se funda, geograficamente e a partir de uma perspectiva hegemônica, sob dois grandes padrões territoriais — um mais típico da lógica estatal tradicional, preocupada com o controle de fluxos pelo controle de áreas, quase sempre contínuas e de fronteiras claramente definidas; outro mais relacionado à lógica empresarial, também controladora de fluxos, porém prioritariamente através de sua “canalização” em dutos e nódulos de conexão (as redes), de alcance, em última instância, global.],
[@haesbaert2014viver[p. 21-22]]
)

#citacao_direta(
[Arrighi (1996), de forma geograficamente questionável, distinguiu dois “modos opostos de governo ou de lógica do poder” em relação à dinâmica entre capital (ou espaço econômico) e a “organização relativamente estável do espaço político”, duas estratégias geopolíticas (e geoeconômicas) que ele, de modo controverso, denomina de “capitalismo” e “territorialismo”: “Os governantes territorialistas identificam o poder com a extensão e a densidade populacional de seus domínios, concebendo a riqueza/o capital como um meio ou um subproduto da busca de expansão territorial. Os governantes capitalistas, ao contrário, identificam o poder com a extensão de seu controle sobre os recursos escassos e consideram as aquisições territoriais um meio e um subproduto da acumulação de capital”.],
[@haesbaert2014viver[p. 22]]
)

#citacao_direta(
[Ao contrário de algumas interpretações, contudo, não se trata da imposição inexorável de uma lógica reticular dentro de uma genérica “sociedade em rede”. Não se trata de defender, de forma simples, a preponderância dessa forma de organização territorial. [...] Parece recorrente na história humana a existência de relações sociais (de poder) que demandam o domínio de espaços contínuos e mais ou menos delimitados onde se “legisle” em nome de todos os integrantes desses espaços ou territórios.],
[@haesbaert2014viver[p. 23-24]]
)

#citacao_direta(
[Assim, com base em discussões que realizamos em trabalhos anteriores, propomos identificar “múltiplos territórios” — ou melhor, “múltiplas territorializações” — como: a) Territorializações de caráter mais desterritorializante [...] “espaços de indistinção” entre legal e ilegal [...] b) Territorializações mais fechadas, quase “uniterritoriais” no sentido de imporem a correspondência entre poder político e identidade cultural [...] c) Territorializações político-funcionais mais tradicionais, como a do Estado-nação [...] d) Territorializações mais flexíveis, que admitem a sobreposição territorial [...] e) Territorializações efetivamente múltiplas — uma multiterritorialidade em sentido estrito, construída por grupos que se territorializam na conexão flexível de territórios-rede multifuncionais, multigestionários e multi-identitários.],
[@haesbaert2014viver[p. 24-25]]
)

#citacao_direta(
[Distingue-se assim “pluralidade de territórios” e “territórios plurais”, que, longe de uma “armadilha semântica”, permite enfocar, segundo o autor, duas qualificações distintas: A pluralidade de territórios indica sua multiplicidade: “a superfície terrestre como suporte está sujeita a um processo permanente de organização/diferenciação”. Os territórios plurais, além de conceberem a multiplicidade descrita anteriormente, concebem todo espaço terrestre ocupado por distintas representações sobre ele, que tendem a legitimar a jurisdição sobre os habitantes que nele residem.],
[@haesbaert2014viver[p. 26-27]]
)

#citacao_direta(
[Contendo a pluralidade de territórios, os territórios plurais se manifestariam pelo menos de duas formas: • multiplicidade de territórios: território plural, como reunião de vários territórios (e territorialidades) • pluralidade de jurisdições: território plural por abranger diferentes jurisdições (incorporando-as parcialmente ou por sobreposição).],
[@haesbaert2014viver[p. 27]]
)

#citacao_direta(
  [A pluralidade de territórios pode estar compreendida de duas formas nos "territórios plurais" (noção mais próxima de nossa concepção de multiterritorialidade) – uma, vista a partir do "território plural" como conjunto justaposto de diversos territórios compreendidos no seu interior; outra, a partir do "território plural" como conjunto superposto de vários territórios (ou territorialidades) cuja abrangência pode ir bem além dos seus limites físicos.],
  [@haesbaert2014viver[p. 27]]
)

== Multiterritorialidade
Para #cite(<haesbaert2014viver>, form: "prose"), a noção de *"multiterritorialidade"* define-se como uma experiência inovadora resultante da compressão espaço-temporal, caracterizada pela vivência concomitante de múltiplos territórios e territorialidades @haesbaert2014viver[p. 28, 35].

Diferente do simples deslocamento físico, essa categoria enfatiza a conectividade e a mobilidade virtual, que permitem a interação e a ação à distância em contextos geográficos distintos @haesbaert2014viver[p. 31, 35]. 

O autor ressalta que, embora a contemporaneidade ofereça um conjunto ampliado de opções territoriais, o acesso a essa multiterritorialidade efetiva é profundamente seletivo: enquanto elites globais usufruem de um trânsito flexível e múltiplo, grupos subalternos enfrentam a precarização, muitas vezes lutando pelo território básico como abrigo @haesbaert2014viver[p. 34, 37]. Dessa forma, a multiterritorialidade é apresentada como uma intensificação dos processos de reterritorialização, contrapondo-se às interpretações simplistas de desterritorialização @haesbaert2014viver[p. 37-38].

As passagens citadas a seguir detalham a natureza relacional, tecnológica e socialmente seletiva da multiterritorialidade na obra analisada.

#citacao_direta(
  [[...] a existência do que estamos denominando multiterritorialidade, pelo menos no sentido de experimentar vários territórios [e/ou territorialidades] ao mesmo tempo e de, a partir daí, formular uma territorialização efetivamente múltipla, não é exatamente uma novidade, pelo simples fato de que, se o processo de territorialização parte do nível individual ou de pequenos grupos, toda relação social implica uma interação territorial, um entrecruzamento de diferentes territórios.],
  [@haesbaert2014viver[p. 28]]
)

#citacao_direta(
  [A principal novidade é que hoje temos uma diversidade ou um conjunto de opções muito maior de territórios/territorialidades com os/as quais podemos "jogar", uma velocidade (ou facilidade, via Internet, por exemplo) muito maior (e mais múltipla) de acesso e trânsito por essas territorialidades – elas próprias muito mais instáveis e móveis – e, dependendo de nossa condição social, também muito mais opções para desfazer e refazer constantemente essa multiterritorialidade.],
  [@haesbaert2014viver[p. 34]]
)

#citacao_direta(
  [A efetiva multiterritorialidade, hoje, seria uma experiência profundamente inovadora a partir da compressão espaço-temporal que permite [...] pela comunicação instantânea, contatar e mesmo agir [...] sobre territórios completamente distintos do nosso, sem a necessidade de mobilidade física. Trata-se de uma multiterritorialidade envolvida nos diferentes graus daquilo que poderíamos denominar como sendo a conectividade e/ou vulnerabilidade informacional (ou virtual) dos territórios...],
  [@haesbaert2014viver[p. 35]]
)

#citacao_direta(
[A multiterritorialidade aparece muitas vezes como uma alternativa conceitual dentro de um processo considerado por muitos, genericamente, como marcado pela “desterritorialização”. Muito mais do que perdendo ou destruindo nossos territórios, ou melhor, nossos processos de territorialização [...] estamos na maior parte das vezes, especialmente no caso dos grupos hegemônicos, vivenciando a intensificação e complexificação de um processo de reterritorialização muito mais múltiplo, multiterritorial.],
[@haesbaert2014viver[p. 37-38]]
)

#citacao_direta(
[Enquanto uma elite globalizada tem a opção de escolher entre os territórios que melhor lhe aprouver, vivenciando efetivamente uma multiterritorialidade, outros, na base da pirâmide social, não têm sequer a opção do “primeiro” território, o território como abrigo, fundamento mínimo de sua reprodução física cotidiana.],
[@haesbaert2014viver[p. 37]]
)
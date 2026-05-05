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
#let tipo-trabalho = "Respostas para questionamentos"
#let nome-avaliador = "Prof. Dr. Felipe Xavier"

#show: abnt.with(
  arquivo-bibliografia: "referencias.bib", // Define o arquivo para o sistema @obra
  titulo: [#tipo-trabalho a respeito da formação da Cepal e seu posicionamento frente ao desenvolvimentismo da América Latina],
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
  columns: (1fr, 1fr),   // Cria duas colunas de tamanhos iguais (frações)
  gutter: 15pt,          // Espaçamento entre as duas colunas
  
  quadro-obra(
    "O desenvolvimentismo cepalino: problemas teóricos e influências no Brasil",
    [@colistete2001desenvolvimentismo],
    "Renato Perim Colistete", 
    "p. 21-34"
  ),
  
  quadro-obra(
    ["A Comissão Econômica para a América Latina" _in_], 
    [@furtado2013essencial],
    "Rosa Freire d'Aguiar (org.)", 
    "p. 42-52"
  )
)

= Perguntas e Respostas

Seguem as perguntas formuladas pelo professor e as respostas elaboradas com base na leitura das obras indicadas, que são identificadas no corpo das respostas permitindo a identificação de onde foram extraídos os conceitos, dados e fundamentos para a construção dos argumentos.

== *Pergunta 01:* _Para a Cepal, quais as razões para o subdesenvolvimento latino-americano?_

// #block(
//   fill: luma(94.12%, 90.5%),
//   inset: 12pt,
//   above: 1em,
//   below: 3em,
//   outset: 10pt,
//   radius: 5pt,
//   width: 100%,
// )[]
// 
Na proposta teórica da *Comissão Econômica para a América Latina (Cepal)*, o subdesenvolvimento afasta-se das explicações tradicionais que o concebiam como uma fase provisória de atraso natural. Rompendo com essa visão linear, Celso Furtado define que "o subdesenvolvimento é, portanto, um processo histórico autônomo, e não uma etapa pela qual tenham, necessariamente, passado as economias que já alcançaram grau superior de desenvolvimento" @furtado2013essencial[p. 62]. Essa condição particular latino-americana deriva diretamente da forma subordinada como a região se inseriu na divisão internacional do trabalho, o que gerou uma série de estrangulamentos estruturais profundamente interligados.

A base desse processo reside na especialização primário-exportadora da região. As economias latino-americanas desenvolveram "estruturas pouco diversificadas e pouco integradas com um setor primário-exportador dinâmico, mas incapaz de difundir progresso técnico para o resto da economia" @colistete2001desenvolvimentismo[p. 23]. Essa incapacidade de irradiação tecnológica para o mercado interno gera um descompasso estrutural agudo em relação aos países centrais. A teoria cepalina aponta que o "ritmo de incorporação do progresso técnico e o aumento de produtividade seriam significativamente maiores nas economias industriais (centro) do que nas economias especializadas em produtos primários (periferia)" @colistete2001desenvolvimentismo[p. 23]. Como consequência dessa assimetria, os países ricos retêm os frutos do seu avanço, enquanto a periferia não consegue absorver a mão de obra de forma produtiva nem elevar os salários reais de sua população de maneira sustentada.

Esse fosso tecnológico reflete-se diretamente na esfera do comércio internacional, consolidando a chamada deterioração dos termos de troca. Constatou-se que "os preços de exportação dos produtos primários tenderiam a apresentar uma evolução desfavorável frente à dos bens manufaturados produzidos pelos países industrializados" @colistete2001desenvolvimentismo[p. 23]. O agravante dessa deterioração é explicado por Furtado por meio do que ele chama de "disparidade dinâmica da demanda entre centro e periferia" @furtado2013essencial[p. 47]. Segundo a Cepal, o sistema prejudica a região porque a "elasticidade-renda da procura de produtos primários é baixa, [enquanto] a de produtos manufaturados é alta" @furtado2013essencial[p. 47]. Na prática, isso significa que, à medida que a renda global cresce, a demanda externa pelas exportações latino-americanas cresce a passos lentos, enquanto a necessidade interna da periferia por manufaturados importados sofre uma rápida aceleração, gerando crises crônicas no balanço de pagamentos.

Historicamente, essa dependência restrita a poucos produtos de exportação resultou em uma severa vulnerabilidade externa, fazendo com que "as economias latino-americanas se caracterizavam por grande instabilidade" ao sabor dos ciclos econômicos internacionais @furtado2013essencial[p. 43]. Tal fragilidade ficou inegável quando a referida "'vulnerabilidade' externa assumiu dimensões catastróficas depois do crash de 1929", momento em que a queda da demanda internacional paralisou a capacidade de importar da região @furtado2013essencial[p. 43]. Diante de um diagnóstico tão intrincado e do esgotamento desse modelo agrário-exportador, a resposta formulada por essa corrente — o chamado desenvolvimentismo cepalino — foi a de que a "industrialização apoiada pela ação do Estado seria a forma básica de superação do subdesenvolvimento latino-americano", visto que as forças livres de mercado tenderiam apenas a perpetuar a disparidade entre o centro e a periferia @colistete2001desenvolvimentismo[p. 21].

==   *Pergunta 02:* _Quais as influências da Cepal no Brasil e que estratégias foram adotadas para superar essa situação do subdesenvolvimento?_

A formulação teórica e as proposições políticas da *Cepal* exerceram um impacto profundo na trajetória econômica e intelectual do Brasil, orientando o debate sobre como superar as amarras históricas da região. Sua influência no Brasil atingiu o apogeu ao longo das décadas de 1950 e 1960, encontrando um terreno extremamente receptivo. Segundo @colistete2001desenvolvimentismo[p. 21], "esse sucesso ocorreu não só entre _policy makers_ mas também entre empresários industriais e, ao longo do tempo, no meio acadêmico". Essa receptividade derivou da capacidade da Cepal de fornecer uma estrutura conceitual consistente que legitimava o anseio ideológico e prático pela industrialização deliberada e apoiada pelo Estado.

No âmbito do pensamento econômico brasileiro, a herança do estruturalismo cepalino deixou marcas profundas em correntes teóricas posteriores de grande relevância, notadamente a *Teoria da Dependência* e a *Teoria do Capitalismo Tardio* @colistete2001desenvolvimentismo[p. 27]. O legado transferido a essas escolas analíticas manifestou-se em dimensões metodológicas claras, centradas na "ênfase nas estruturas, o papel reduzido dos atores sociais, a predominância de uma perspectiva macro e o desenvolvimento de uma visão peculiar da história" @colistete2001desenvolvimentismo[p. 27]. Em conjunto, essas características consolidaram a adoção de um método histórico-estrutural para explicar a evolução econômica do país, transcendendo a mera análise de variáveis isoladas.

Para romper com a condição periférica e mitigar a vulnerabilidade externa, os teóricos da Cepal postularam que o livre jogo das forças de mercado era insuficiente, prescrevendo um conjunto de estratégias estruturais capitaneadas pelo Estado. Conforme @furtado2013essencial[p. 46], a *Industrialização por Substituição de Importações (ISI)* foi erigida à condição de política deliberada, pois "a substituição espontânea envolvia elevado custo social, pois era fruto de desequilíbrios. Cabia, portanto, programá-la, ou seja, buscar a linha de um desenvolvimento equilibrado". A estratégia consistia em alterar programaticamente a composição das importações para reter os frutos do avanço técnico e absorver a mão de obra excedente.

Complementarmente, a Cepal preconizou o *Planejamento e a Programação Econômica* como instrumentos indispensáveis para orientar o investimento estatal e privado em cenários de escassez de capitais. A intervenção do Estado fundamentava-se no "conceito de 'produtividade social', o qual apontava na direção de políticas globais, vale dizer, de programas de desenvolvimento" @furtado2013essencial[p. 46]. Além disso, reconhecendo que a estreiteza dos mercados nacionais representava um obstáculo ao avanço para fases mais complexas da industrialização, a instituição impulsionou a *Integração Regional*, resultando em projetos como a *Associação Latino-Americana de Livre-Comércio (Alalc)* @furtado2013essencial[p. 48].

Por fim, a superação definitiva do subdesenvolvimento demandava a remoção de rigidezes institucionais históricas, com ênfase na *Reforma Agrária*. @furtado2013essencial[p. 50] diagnosticou a estrutura agrária arcaica como um freio ao desenvolvimento, caracterizada por "uma perversa combinação de latifúndios, que subutilizam as terras, com minifúndios, que subutilizam a mão de obra e degradam o seu preço de oferta". Esse diagnóstico evidenciou que a modernização do campo, mediante uma reforma coordenada, não era apenas uma questão de justiça social, mas um pré-requisito estratégico para o sucesso econômico da industrialização e a expansão do mercado interno de consumo @furtado2013essencial[p. 51].

//------------Como usar um loop for para repetir o trabalho-------

// Os computadores são realmente ótimos em fazer trabalhos repetitivos, e o Swift facilita a repetição de algum código um número fixo de vezes, ou uma vez para cada item em uma matriz, dicionário ou conjunto.

// Vamos começar com algo simples: se tivermos um array de strings, podemos imprimir cada string assim:

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

// Isso faz um loop sobre todos os itens em platforms, colocando-os um por um em os. Não criamos os em outro lugar; ele é criado para nós como parte do loop e disponibilizado apenas dentro das chaves de abertura e fechamento.

// Dentro das chaves está o código que queremos executar para cada item no array, então o código acima imprimirá quatro linhas – uma para cada item do loop. Primeiro ele coloca “iOS” lá, depois chama print(), depois coloca “macOS” lá e chama print(), depois “tvOS”, depois “watchOS”.

// Para tornar as coisas mais fáceis de entender, damos nomes comuns a essas coisas:

// * Chamamos o código dentro das chaves de corpo do loop
// * Chamamos um ciclo através do corpo do laço de iteração do laço .
// * Chamamos os a variável de loop . Isso existe apenas dentro do corpo do loop e mudará para um novo valor na próxima iteração do loop.

// Devo dizer que o nome os não é especial - poderíamos ter escrito isso:

for name in platforms {
    print("Swift works great on \(name).")
}

// Ou mesmo isso:

for rubberChicken in platforms {
    print("Swift works great on \(rubberChicken).")
}

// O código ainda funcionará exatamente da mesma forma.

// Na verdade, o Xcode é muito inteligente aqui: se você escrever for plat, ele reconhecerá que existe um array chamado platforms, e oferecerá o autocompletar de tudo for platform in platforms– ele reconhece que platformsé plural e sugere o nome singular para a variável de loop. Quando você vir a sugestão do Xcode aparecer, pressione Return para selecioná-la.

// Em vez de fazer um loop em uma matriz (ou conjunto ou dicionário - a sintaxe é a mesma!), você também pode fazer um loop em um intervalo fixo de números. Por exemplo, poderíamos imprimir a tabuada de 5 vezes de 1 a 12 assim:

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// Algumas coisas são novas lá, então vamos fazer uma pausa e examiná-las:

// * Eu usei a variável de loop i, que é uma convenção de codificação comum para “número com o qual você está contando”. Se estiver contando um segundo número, você usaria j, e se estiver contando um terceiro, usaria k, mas se estiver contando um quarto, talvez deva escolher nomes de variáveis ​​melhores.
// * A parte 1...12 é um intervalo e significa "todos os números inteiros entre 1 e 12, bem como 1 e 12". Os intervalos são seus próprios tipos de dados exclusivos no Swift.

// Então, quando esse loop for executado pela primeira vez i será 1, então será 2, depois 3, etc, até 12, após o qual o loop termina.

// Você também pode colocar loops dentro de loops, chamados de loops aninhados , assim:

for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}

// Isso mostra algumas outras coisas novas, então, novamente, vamos pausar e olhar mais de perto:

// * Agora há um loop aninhado: contamos de 1 a 12 e, para cada número dentro, contamos de 1 a 12 novamente.
// * Usar print()por si só, sem nenhum texto ou valor sendo passado, apenas iniciará uma nova linha. Isso ajuda a dividir nossa saída para que fique mais bonita na tela.

// Então, quando você vê, x...y você sabe que ele cria um intervalo que começa em qualquer número x e conta até e incluindo qualquer número y.

// Swift tem um tipo de intervalo semelhante, mas diferente, que conta até, mas excluindo o número final: ..<. Isso é melhor visto no código:

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

// Quando isso for executado, ele imprimirá os números 1, 2, 3, 4, 5 no primeiro loop, mas apenas os números 1, 2, 3 e 4 no segundo. Eu pronuncio 1...5 como “um a cinco”, e 1..<5 como “um a cinco”, e você verá palavras semelhantes em outros lugares em Swift.

// Dica: ..< é realmente útil para trabalhar com arrays, onde contamos a partir de 0 e muitas vezes queremos contar até, mas excluindo o número de itens no array.

// Antes de terminarmos com for os loops, há mais uma coisa que quero mencionar: às vezes você quer executar algum código um certo número de vezes usando um intervalo, mas na verdade você não quer a variável de loop - você não quer o i ou j, porque você não o usa.

// Nessa situação, você pode substituir a variável de loop por um sublinhado, assim:

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//------------Por que o Swift tem dois operadores de alcance?---------

// Quando pensamos em faixas de valores, o inglês é bastante confuso. Se eu disser “me dê os números de vendas até ontem”, isso significa incluir ontem ou excluir ontem? Ambos são úteis por si só, então Swift nos dá uma maneira de representar ambos: ..< é o intervalo semi-aberto que especifica “até, mas excluindo” e ... é o operador de intervalo fechado que especifica “até e incluindo”.

// Para facilitar a distinção ao falar, Swift usa regularmente uma linguagem muito específica: “1 a 5” significa 1, 2, 3 e 4, mas “1 até completamente 5” significa 1, 2, 3, 4 e 5. Se você lembre-se, os arrays do Swift começam no índice 0, o que significa que um array contendo três itens tem itens nos índices 0, 1 e 2 – um caso de uso perfeito para o operador de intervalo semi-aberto.

// As coisas ficam mais interessantes quando você quer apenas parte de um intervalo, como “qualquer coisa de 0 para cima” ou “índice 5 até o final do array”. Veja, eles são bastante úteis na programação, então o Swift os torna mais fáceis de criar, permitindo que especifiquemos apenas parte de um intervalo.

// Por exemplo, se tivéssemos um array de nomes como este:

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

// Poderíamos ler um nome individual como este:

print(names[0])

// Com intervalos, também podemos imprimir um intervalo de valores como este:

print(names[1...3])

// No entanto, isso traz um pequeno risco: se nosso array não contiver pelo menos quatro itens, 1...3 ele falhará. Felizmente, podemos usar um intervalo unilateral para dizer “me dê 1 até o final do array”, assim:

print(names[1...])

// Portanto, os intervalos são ótimos para contar valores específicos, mas também são úteis para ler grupos de itens de matrizes.

//------------Como usar um loop while para repetir o trabalho?---------

// Swift tem um segundo tipo de loop chamado while: forneça uma condição e um loop while executará continuamente o corpo do loop até que a condição seja falsa.

// Embora você ainda veja loops while de tempos em tempos, eles não são tão comuns quanto os loops for. Como resultado, eu quero cobri-los para que você saiba que eles existem, mas não vamos nos debruçar sobre eles por muito tempo, ok?

// Aqui está um loop while básico para começarmos:

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

// Isso cria um contador inteiro começando em 10 e, em seguida, inicia um loop while com a condição countdown > 0. Assim, o corpo do loop – imprimindo o número e subtraindo 1 – será executado continuamente até que countdown seja igual ou inferior a 0, ponto em que o loop terminará e a mensagem final será impressa.

// loops while são realmente úteis quando você simplesmente não sabe quantas vezes o loop vai dar a volta. Para demonstrar isso, quero apresentar a você uma funcionalidade realmente útil que Int e Double ambas têm: random(in:). Dê a isso um intervalo de números para trabalhar, e ele enviará de volta um número aleatório Int ou Double em algum lugar dentro desse intervalo.

// Por exemplo, isso cria um novo inteiro entre 1 e 1000

let id = Int.random(in: 1...1000)

// E isso cria um decimal aleatório entre 0 e 1:

let amount = Double.random(in: 0...1)

// Podemos usar essa funcionalidade com um loop while para rolar alguns dados virtuais de 20 lados repetidas vezes, terminando o loop apenas quando um 20 é lançado - um acerto crítico para todos os jogadores de Dungeons & Dragons por aí.

Aqui está o código para fazer isso acontecer:

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!    
print("Critical hit!")

// Você se verá usando loops for e while em seu próprio código: loops for são mais comuns quando você tem uma quantidade finita de dados para percorrer, como um intervalo ou uma matriz, mas os loops while são realmente úteis quando você precisa de uma condição personalizada.

//------------Como pular itens de loop com break e continue---------

// O Swift nos dá duas maneiras de pular um ou mais itens em um loop: continue ignora a iteração do loop atual e break ignora todas as iterações restantes. Como loops while, eles são usados ​​às vezes , mas na prática muito menos do que você imagina.

// Vamos analisá-los individualmente, começando com continue. Quando você está fazendo um loop em uma matriz de dados, o Swift retira um item da matriz e executa o corpo do loop usando-o. Se você chamar continue dentro desse corpo de loop, o Swift parará imediatamente de executar a iteração do loop atual e pulará para o próximo item do loop, onde continuará normalmente. Isso é comumente usado perto do início de loops, onde você elimina variáveis ​​de loop que não passam em um teste de sua escolha.

// Aqui está um exemplo:

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

// Isso cria um array de strings de nome de arquivo, então faz um loop sobre cada um e verifica se tem o sufixo “.jpg” – que é uma imagem. continue é usado com todos os nomes de arquivo que falham nesse teste, para que o restante do corpo do loop seja ignorado.

// Quanto a break, isso sai de um loop imediatamente e pula todas as iterações restantes. Para demonstrar isso, poderíamos escrever algum código para calcular 10 múltiplos comuns para dois números:

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// Isso faz muito:

// 1 - Crie duas constantes para armazenar dois números.
// 2 - Crie uma variável de matriz inteira que armazenará múltiplos comuns de nossos dois números.
// 3 - Conte de 1 a 100.000, atribuindo cada variável de loop a i.
// 4 - Se i for um múltiplo do primeiro e do segundo número, anexe-o à matriz de inteiros.
// 5 - Quando atingirmos 10 múltiplos, chame break para sair do loop.
// 6 - Imprima a matriz resultante.

// Portanto, use continue quando quiser pular o restante da iteração de loop atual e use break quando quiser pular todas as iterações de loop restantes.

//---------------Resumo: Condições e loops------------------------

// Cobrimos muito sobre condições e loops nos capítulos anteriores, então vamos recapitular:

// 1 - Usamos declarações if para verificar se uma condição é verdadeira. Você pode passar em qualquer condição que desejar, mas no final das contas deve se resumir a um booleano.
// 2 - Se desejar, você pode adicionar um bloco de else e/ou vários blocos else if para verificar outras condições. Swift os executa em ordem.
// 3 - Você pode combinar condições usando ||(ou), o que significa que toda a condição é verdadeira se uma das subcondições for verdadeira, ou &&(e), o que significa que toda a condição é verdadeira se ambas as subcondições forem verdadeiras.
// 4 - Se você estiver repetindo muito os mesmos tipos de cheque, poderá usar uma instrução swift. Estes devem sempre ser exaustivos, o que pode significar adicionar um caso padrão.
// 5 - Se um dos seus casos switch usar fallthrough, significa que o Swift executará o seguinte caso depois. Isso não é usado comumente.
// 6 - O operador condicional ternário permite verificar WTF: What, True, False. Embora seja um pouco difícil de ler no início, você verá que isso é muito usado no SwiftUI.
// 7 - Loops ofr nos permitem percorrer arrays, conjuntos, dicionários e intervalos. Você pode atribuir itens a uma variável de loop e usá-la dentro do loop, ou pode usar sublinhado, _, para ignorar a variável de loop.
// 8 - Loops while nos permitem criar loops personalizados que continuarão em execução até que uma condição se torne falsa.
// 9 - Podemos pular alguns ou todos os itens de loop usando continue ou break respectivamente.

// Essa é outra grande quantidade de material novo, mas com condições e loops você já sabe o suficiente para construir um software realmente útil – experimente!
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

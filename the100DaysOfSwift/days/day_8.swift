//-----------------Como fornecer valores padrão para parâmetros-------

// Adicionar parâmetros a funções nos permite adicionar pontos de personalização, para que as funções possam operar em dados diferentes, dependendo de nossas necessidades. Às vezes, queremos disponibilizar esses pontos de personalização para manter nosso código flexível, mas outras vezes você não quer pensar sobre isso – você quer a mesma coisa nove vezes em dez.

// Por exemplo, anteriormente vimos esta função:

func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)

// Isso imprime qualquer tabela de tempos, começando em 1 vezes o número até qualquer ponto final. Esse número sempre vai mudar com base na tabuada que queremos, mas o ponto final parece ser um ótimo lugar para fornecer um padrão sensato - podemos contar até 10 ou 12 na maioria das vezes, deixando aberto o possibilidade de ir para um valor diferente algumas vezes.

// Para resolver esse problema, o Swift nos permite especificar valores padrão para qualquer um ou todos os nossos parâmetros. Nesse caso, poderíamos definir end o valor padrão de 12, o que significa que, se não especificarmos, 12 será usado automaticamente.

// Veja como isso fica no código:

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// Observe como agora podemos chamar printTimesTables() de duas maneiras diferentes: podemos fornecer os dois parâmetros para quando quisermos, mas se não o fizermos – se apenas escrevermos printTimesTables(for: 8)– o valor padrão de 12 será usado para end.

// Na verdade, vimos um parâmetro padrão em ação, em algum código que usamos antes:

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)

// Isso adiciona algumas strings a um array, imprime sua contagem, depois remove todas e imprime a contagem novamente.

// Como uma otimização de desempenho, o Swift fornece aos arrays apenas memória suficiente para armazenar seus itens, além de um pouco mais para que eles possam crescer um pouco ao longo do tempo. Se mais itens forem adicionados ao array, o Swift alocará mais e mais memória automaticamente, de modo que o mínimo possível seja desperdiçado.

// Quando chamamos removeAll(), o Swift remove automaticamente todos os itens do array e libera toda a memória que foi atribuída ao array. Isso geralmente é o que você deseja, porque afinal você está removendo os objetos por um motivo. Mas às vezes – apenas às vezes – você pode estar prestes a adicionar muitos novos itens de volta ao array e, portanto, há uma segunda forma dessa função que remove os itens enquanto mantém a capacidade anterior:

characters.removeAll(keepingCapacity: true)

// Isso é feito usando um valor de parâmetro padrão: keepingCapacity é um booleano com o valor padrão de false para que faça a coisa sensata por padrão, enquanto também deixa aberta a opção de passarmos true por vezes que queremos manter a capacidade existente do array.

// Como você pode ver, os valores de parâmetros padrão nos permitem manter a flexibilidade em nossas funções sem torná-las irritantes para chamar na maioria das vezes - você só precisa enviar alguns parâmetros quando precisar de algo incomum.

//----------------------------Checkpoint 4-----------------------------

// Com funções em seu currículo, é hora de experimentar um pequeno desafio de codificação. Não se preocupe, não é tão difícil, mas pode demorar um pouco para você pensar e pensar em algo. Como sempre, estarei dando algumas dicas se você precisar delas.

// O desafio é este: escreva uma função que aceite um inteiro de 1 a 10.000 e retorne a raiz quadrada inteira desse número. Parece fácil, mas existem alguns problemas:

// 1 - Você não pode usar a função interna do Swift sqrt() ou similar – você precisa encontrar a raiz quadrada você mesmo.
// 2 - Se o número for menor que 1 ou maior que 10.000, você deve lançar um erro "fora dos limites".
// 3 - Você deve considerar apenas raízes quadradas inteiras – não se preocupe com a raiz quadrada de 3 sendo 1,732, por exemplo.
// 4 - Se você não conseguir encontrar a raiz quadrada, lance um erro “sem raiz”.

// Como lembrete, se você tem o número X, a raiz quadrada de X será outro número que, quando multiplicado por ele mesmo, dá X. Então, a raiz quadrada de 9 é 3, porque 3x3 é 9, e a raiz quadrada de 25 é 5, porque 5x5 é 25.

// Darei algumas dicas em breve, mas, como sempre, encorajo você a tentar primeiro – lutar para lembrar como as coisas funcionam e, muitas vezes, ter que pesquisá-las novamente, é uma maneira poderosa de progredir.

// Ainda aqui? Bom, aqui vão algumas dicas:

Este é um problema que você deve “força bruta” – crie um loop com multiplicações dentro, procurando o inteiro que você passou.
A raiz quadrada de 10.000 – o maior número que eu quero que você manipule – é 100, então seu loop deve parar aí.
Se você chegar ao final do seu loop sem encontrar uma correspondência, lance o erro “sem raiz”.
Você pode definir diferentes erros fora dos limites para “menor que 1” e “maior que 10.000” se quiser, mas não é realmente necessário – apenas ter um é bom.

enum squareRootError: Error {
    case outOfBounds, noRoot
}


func isSquareRoot(for number: Int, end: Int = 1_000) {
    for i in 1...10_000 {
    if (i * i) == number {
        print ("The square root of \(number) is \(i)")
    }
    }
}
isSquareRoot(for: 100)

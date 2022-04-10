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

//------------------Como lidar com erros em funções--------------------------

// As coisas dão errado o tempo todo, como quando o arquivo que você queria ler não existe ou quando os dados que você tentou baixar falharam porque a rede estava inativa. Se não tratássemos os erros normalmente, nosso código falharia, então Swift nos faz lidar com erros – ou pelo menos reconhecer quando eles podem acontecer.

// Isso leva três etapas:

// 1 - Informando ao Swift sobre os possíveis erros que podem acontecer.
// 2 - Escrevendo uma função que pode sinalizar erros se eles acontecerem.
// 3 - Chamar essa função e lidar com quaisquer erros que possam acontecer.

// Vamos trabalhar com um exemplo completo: se o usuário nos pedir para verificar a força de sua senha, sinalizaremos um erro grave se a senha for muito curta ou óbvia.

// Então, precisamos começar definindo os possíveis erros que podem acontecer. Isso significa fazer uma nova enumeração baseada no Error tipo existente do Swift, assim:

enum PasswordError: Error {
    case short, obvious
}

// Isso diz que há dois possíveis erros com senha: short e obvious. Não define o que significam , apenas que eles existem.

// O segundo passo é escrever uma função que acionará um desses erros. Quando um erro é acionado – ou lançado no Swift – estamos dizendo que algo fatal deu errado com a função e, em vez de continuar normalmente, ela termina imediatamente sem enviar nenhum valor de volta.

// No nosso caso, vamos escrever uma função que verifica a força de uma senha: se for muito ruim - menos de 5 caracteres ou for extremamente conhecida - então lançaremos um erro imediatamente, mas para todas as outras strings, 'retornará classificações "OK", "Bom" ou "Excelente".

// Veja como isso fica no Swift:

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Vamos quebrar isso…

// 1 - Se uma função for capaz de lançar erros sem manipulá-los, você deve marcar a função como throws antes do tipo de retorno.
// 2 - Não especificamos exatamente que tipo de erro é gerado pela função, apenas que ela pode gerar erros.
// 3 - Estar marcado com throws não significa que a função deve lançar erros, apenas que pode.
// 4 - Quando chega a hora de lançar um erro, escrevemos throw seguido por um de nossos casos PasswordError. Isso sai imediatamente da função, o que significa que não retornará uma string.
// 5 - Se nenhum erro for lançado, a função deve se comportar normalmente – ela precisa retornar uma string.

// Isso completa a segunda etapa de lançar erros: definimos os erros que podem acontecer e escrevemos uma função usando esses erros.

// A etapa final é executar a função e lidar com quaisquer erros que possam ocorrer. Os Swift Playgrounds são bastante negligentes quanto ao tratamento de erros porque são destinados principalmente ao aprendizado, mas quando se trata de trabalhar com projetos reais do Swift, você descobrirá que existem três etapas:

// 1 - Iniciar um bloco de trabalho que pode gerar erros, usando do.
// 2 - Chamando uma ou mais funções de lançamento, usando try.
// 3 - Manipulando quaisquer erros lançados usando catch.

// Em pseudocódigo, fica assim:

do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}

// Se quiséssemos escrever tente isso usando nossa função atual checkPassword(), poderíamos escrever isso:

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

// Se a função checkPassword() funcionar corretamente, ela retornará um valor em result, que será impresso. Mas se algum erro for lançado (o que neste caso haverá), a mensagem de classificação da senha nunca será impressa – a execução pulará imediatamente para o bloco catch.

// Existem algumas partes diferentes desse código que merecem discussão, mas quero focar na mais importante: try. Isso deve ser escrito antes de chamar todas as funções que possam gerar erros e é um sinal visual para os desenvolvedores de que a execução regular do código será interrompida se ocorrer um erro.

// Ao usar try, você precisa estar dentro de um bloco do e certificar-se de ter um ou mais blocos catch capazes de lidar com quaisquer erros. Em algumas circunstâncias, você pode usar uma alternativa escrita como try! que não requer do e catch, mas travará seu código se um erro for lançado - você deve usar isso raramente e somente se tiver certeza absoluta de que um erro não pode ser lançado.

// Quando se trata de capturar erros, você deve sempre ter um bloco catch que seja capaz de lidar com todo tipo de erro. No entanto, você também pode detectar erros específicos, se desejar:

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// À medida que você progride, verá como as funções de lançamento são incorporadas a muitas das estruturas da própria Apple, portanto, mesmo que você não as crie muito, pelo menos precisará saber como usá -las com segurança.

// Dica: A maioria dos erros gerados pela Apple fornece uma mensagem significativa que você pode apresentar ao usuário, se necessário. O Swift disponibiliza isso usando um valor error que é fornecido automaticamente dentro do seu bloco catch, e é comum ler error.localizedDescription para ver exatamente o que aconteceu.

//-------------Por que o Swift nos faz usar try antes de cada função de lançamento?------------


// O uso das funções de lançamento do Swift depende de três palavras-chave exclusivas: do, try e catch. Precisamos de todos os três para poder chamar uma função de lançamento, o que é incomum – a maioria das outras linguagens usa apenas duas, porque elas não precisam escrever try antes de cada função de lançamento.

// A razão pela qual o Swift é diferente é bastante simples: ao nos forçar a usar try antes de cada função de lançamento, estamos reconhecendo explicitamente quais partes do nosso código podem causar erros. Isso é particularmente útil se você tiver várias funções de lançamento em um único bloco do, assim:

do {
    try throwingFunction1()
    nonThrowingFunction1()
    try throwingFunction2()
    nonThrowingFunction2()
    try throwingFunction3()
} catch {
    // handle errors
}

// Como você pode ver, usando try deixa claro que a primeira, terceira e quinta chamadas de função podem gerar erros, mas a segunda e a quarta não.

//----------------------------------Resumo: Funções--------------------------------

// Cobrimos muito sobre funções nos capítulos anteriores, então vamos recapitular:

// 1 - As funções nos permitem reutilizar o código facilmente, separando pedaços de código e dando-lhe um nome.
// 2 - Todas as funções começam com a palavra func, seguida do nome da função. O corpo da função está contido entre chaves de abertura e fechamento.
// 3 - Podemos adicionar parâmetros para tornar nossas funções mais flexíveis – liste-os um por um separados por vírgulas: o nome do parâmetro, depois dois pontos e depois o tipo do parâmetro.
// 4 - Você pode controlar como esses nomes de parâmetros são usados ​​externamente, usando um nome de parâmetro externo personalizado ou usando um sublinhado para desabilitar o nome externo desse parâmetro.
// 5 - Se você acha que há certos valores de parâmetro que você usará repetidamente, você pode fazer com que eles tenham um valor padrão para que sua função leve menos código para escrever e faça a coisa mais inteligente por padrão.
// 6 - As funções podem retornar um valor se você quiser, mas se você quiser retornar vários dados de uma função, você deve usar uma tupla . Eles contêm vários elementos nomeados, mas são limitados de uma forma que um dicionário não é – você lista cada elemento especificamente, junto com seu tipo.
// 7 - As funções podem gerar erros: você cria uma enumeração definindo os erros que deseja que ocorram, lança esses erros dentro da função conforme necessário e, em seguida, usa do, try e catch para tratá-los no site da chamada.

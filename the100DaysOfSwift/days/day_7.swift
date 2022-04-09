//----------Como reutilizar código com funções----------

// Quando você escreve algum código que realmente gosta e deseja usar repetidamente, considere colocá-lo em uma função . As funções são apenas pedaços de código que você separou do resto do seu programa e recebeu um nome para que você possa consultá-las facilmente.

// Por exemplo, digamos que tivéssemos este código simples e agradável:

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

// Essa é uma mensagem de boas-vindas para um aplicativo e você pode querer que ela seja impressa quando o aplicativo for iniciado ou talvez quando o usuário pedir ajuda.

// Mas e se você quisesse que fosse em ambos os lugares? Sim, você poderia simplesmente copiar essas quatro linhas print() e colocá-las em ambos os lugares, mas e se você quisesse esse texto em dez lugares? Ou se você quisesse alterar o texto mais tarde - você realmente se lembraria de alterá-lo em todos os lugares em que aparecesse em seu código?

// É aqui que entram as funções: podemos extrair esse código, dar-lhe um nome e executá-lo quando e onde precisarmos. Isso significa que todas as linhas print() ficam em um lugar e são reutilizadas em outro lugar.

// Veja como isso se parece:

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// Vamos quebrar isso…

// 1 - Ele começa com a palavra-chave func, que marca o início de uma função.
// 2 - Estamos nomeando a função showWelcome. Pode ser qualquer nome que você quiser, mas tente torná-lo memorável –  printInstructions(), displayHelp(), etc são boas escolhas.
// 3 - O corpo da função está contido nas chaves de abertura e fechamento, assim como o corpo dos loops e o corpo das condições.

// Há uma coisa extra lá, e você pode reconhecê-la do nosso trabalho até agora: o ()logo após o showWelcome. Nós nos encontramos pela primeira vez quando olhamos para as cordas, quando eu disse que countnão tem ()depois, mas uppercased()tem.

// Bem, agora você está aprendendo o porquê: eles ()são usados ​​com funções. Eles são usados ​​quando você cria a função, como você pode ver acima, mas também quando você chama a função – quando você pede ao Swift para executar seu código. No nosso caso, podemos chamar nossa função assim:

showWelcome()

// Isso é conhecido como site de chamada da função , que é um nome chique que significa "um lugar onde uma função é chamada".

// Então, o que os parênteses realmente fazem ? Bem, é aí que adicionamos opções de configuração para nossas funções – passamos dados que personalizam a maneira como a função funciona, para que a função se torne mais flexível.

// Como exemplo, já usamos código como este:

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

// isMultiple(of:)é uma função que pertence a inteiros. Se não permitisse qualquer tipo de customização, simplesmente não faria sentido – é um múltiplo de quê ? Claro, a Apple poderia ter feito isso ser algo assim isOdd()ou isEven()nunca precisou ter opções de configuração, mas ao poder escrever de (of: 2)repente a função se torna mais poderosa, porque agora podemos verificar múltiplos de 2, 3, 4, 5, 50 , ou qualquer outro número.

// Da mesma forma, quando estávamos jogando dados virtuais anteriormente, usamos um código como este:

let roll = Int.random(in: 1...20)

// Novamente, random() é uma função, e as opções (in: 1...20) de configuração das marcas de peça – sem isso, não teríamos controle sobre o intervalo de nossos números aleatórios, o que seria significativamente menos útil.

// Podemos fazer nossas próprias funções que estão abertas à configuração, tudo colocando código extra entre os parênteses quando criamos nossa função. Isso deve receber um único inteiro, como 8, e calcular as tabelas de multiplicação para isso de 1 a 12.

// Aqui está isso no código:

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// Observe como eu coloquei number: Int dentro dos parênteses? Isso é chamado de parâmetro e é nosso ponto de personalização. Estamos dizendo que quem chamar esta função deve passar um número inteiro aqui, e o Swift irá aplicá-lo. Dentro da função, number está disponível para uso como qualquer outra constante, então aparece dentro da chamada print().

// Como você pode ver, quando printTimesTable() é chamado, precisamos escrever explicitamente number: 5 – precisamos escrever o nome do parâmetro como parte da chamada da função. Isso não é comum em outras linguagens, mas acho que é muito útil no Swift como um lembrete do que cada parâmetro faz.

// Essa nomenclatura de parâmetros se torna ainda mais importante quando você tem vários parâmetros. Por exemplo, se quisermos personalizar a altura de nossas tabuadas, podemos definir o final do nosso intervalo usando um segundo parâmetro, como este:

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// Agora isso leva dois parâmetros: um inteiro chamado number, e um ponto final chamado end. Ambos precisam ser nomeados especificamente quando printTablesTable()executados, e espero que você possa ver agora por que eles são importantes - imagine se nosso código fosse este:

printTimesTables(5, 20)

// Você consegue se lembrar qual número era qual? Pode ser. Mas você se lembraria daqui a seis meses? Provavelmente não.

// Agora, tecnicamente, damos nomes ligeiramente diferentes para enviar dados e receber dados, e embora muitas pessoas (inclusive eu) ignorem essa distinção, vou pelo menos conscientizá-lo para que você não seja pego de surpresa mais tarde.

// Dê uma olhada neste código:

func printTimesTables(number: Int, end: Int) {}

// Existem ambos number e end são parâmetros: eles são nomes de espaços reservados que serão preenchidos com valores quando a função for chamada, para que tenhamos um nome para esses valores dentro da função.

// Agora veja este código:

printTimesTables(number: 5, end: 20)

// Lá, o 5 e o 20 são argumentos : eles são os valores reais que são enviados para a função para trabalhar, usados ​​para preencher number e end.

// Portanto, temos parâmetros e argumentos : um é um espaço reservado o outro é um valor real , portanto, se você esquecer qual é o que apenas lembre-se de Parâmetro/Espaço reservado, Argumento/Valor real.

// Essa distinção de nome importa? Na verdade não: eu uso “parâmetro” para ambos, e conheço outras pessoas que usam “argumento” para ambos e, honestamente, nunca em minha carreira isso causou o menor problema. Na verdade, como você verá em breve no Swift, a distinção é muito confusa , então não vale a pena pensar nisso.

// Importante: se você preferir usar “argumento” para os dados transmitidos e “parâmetro” para os dados recebidos, isso é com você, mas eu realmente uso “parâmetro” para ambos, e farei isso ao longo deste livro e além .

// Independentemente de você estar chamando-os de “argumentos” ou “parâmetros”, quando você pede ao Swift para chamar a função você deve sempre passar os parâmetros na ordem em que foram listados quando você criou a função.

// Então, para este código:

func printTimesTables(number: Int, end: Int) {}

// Este não é um código válido, porque coloca end antes de number:

printTimesTables(end: 20, number: 5)

// Dica: Todos os dados que você cria dentro de uma função são destruídos automaticamente quando a função é concluída.

//----------------Como retornar valores de funções----------------

// Você viu como criar funções e como adicionar parâmetros a elas, mas as funções geralmente também enviam dados de volta – elas realizam alguns cálculos e retornam o resultado desse trabalho de volta ao site da chamada.

// O Swift tem muitas dessas funções integradas e há dezenas de milhares mais nos frameworks da Apple. Por exemplo, nosso playground sempre esteve import Cocoa no topo, e isso inclui uma variedade de funções matemáticas, como sqrt() calcular a raiz quadrada de um número.

// A função sqrt() aceita um parâmetro, que é o número do qual queremos calcular a raiz quadrada, e ela irá em frente e fará o trabalho e então enviará de volta a raiz quadrada.

// Por exemplo, poderíamos escrever isso:

let root = sqrt(169)
print(root)

// Se você deseja retornar seu próprio valor de uma função, você precisa fazer duas coisas:

// 1 - Escreva uma seta e depois um tipo de dados antes da chave de abertura da sua função, que informa ao Swift que tipo de dados serão enviados de volta.
// 2 - Use a palavra-chave return para enviar de volta seus dados.

// Por exemplo, talvez você queira rolar um dado em várias partes do seu programa, mas em vez de sempre forçar o lançamento de dados a usar um dado de 6 lados, você pode transformá-lo em uma função:

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// Então, isso diz que a função deve retornar um inteiro e o valor real é enviado de volta com a palavra-chave return.

// Usando esta abordagem, você pode chamar rollDice() em muitos lugares em seu programa, e todos eles usarão um dado de 6 faces. Mas se no futuro você decidir usar um dado de 20 lados, você só precisa alterar essa função para ter o resto do seu programa atualizado.

// Importante: Quando você diz que sua função retornará um Int, o Swift garantirá que ela sempre retorne um Int– você não pode esquecer de devolver um valor, pois seu código não será compilado.

// Vamos tentar um exemplo mais complexo: duas strings contêm as mesmas letras, independentemente de sua ordem? Essa função deve aceitar dois parâmetros de string e retornar true se suas letras forem iguais – portanto, “abc” e “cab” devem retornar true porque ambos contêm um “a”, um “b” e um “c”.

// Na verdade, você já sabe o suficiente para resolver esse problema sozinho, mas já aprendeu tanto que provavelmente esqueceu a única coisa que torna essa tarefa tão fácil: se você chamar sorted()qualquer string, receberá uma nova string de volta com todas as letras em ordem alfabética. Portanto, se você fizer isso para ambas as strings, poderá == compará-las para ver se suas letras são as mesmas.

// Vá em frente e tente escrever a função você mesmo. Novamente, não se preocupe se você se esforçar – é tudo muito novo para você, e lutar para lembrar de novos conhecimentos faz parte do processo de aprendizado. Mostrarei a solução em um momento, mas tente você mesmo primeiro.

// Ainda aqui? Ok, aqui está um exemplo de solução:

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

// Vamos separar isso:

// 1 - Ele cria uma nova função chamada areLettersIdentical().
// 2 - A função aceita dois parâmetros de string string1 e string2.
// 3 - A função diz que retorna a Bool, então em algum momento devemos sempre retornar true ou false.
// 4 - Dentro do corpo da função, classificamos ambas as strings e usamos == para comparar as strings - se forem iguais, retornará true, caso contrário, retornará false.

// Esse código classifica string1 e string2, atribuindo seus valores classificados a novas constantes first e second. No entanto, isso não é necessário - podemos pular essas constantes temporárias e apenas comparar os resultados sorted()diretamente, assim:

func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

// Isso é menos código, mas podemos fazer ainda melhor. Veja bem, nós dissemos ao Swift que esta função deve retornar um Boolean, e porque há apenas uma linha de código na função Swift sabe que é aquela que deve retornar dados. Por isso, quando uma função possui apenas uma linha de código, podemos remover a palavra-chave return completamente, assim:

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

// Podemos voltar e fazer o mesmo para a função rollDice() também:

func rollDice() -> Int {
    Int.random(in: 1...6)
}

// Lembre-se, isso só funciona quando sua função contém uma única linha de código e, em particular, essa linha de código deve realmente retornar os dados que você prometeu retornar.

// Vamos tentar um terceiro exemplo. Você se lembra do teorema de Pitágoras da escola? Ele afirma que, se você tiver um triângulo com um ângulo reto dentro, poderá calcular o comprimento da hipotenusa elevando ao quadrado ambos os outros lados, somando-os e calculando a raiz quadrada do resultado

// Você já aprendeu a usar sqrt(), então podemos construir uma função pythagoras() que aceita dois números decimais e retorna outro:

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

// Então, essa é uma função chamada pythagoras(), que aceita dois parâmetros Double e retorna outro Double. Dentro dele, quadra a e b, soma-os, depois passa isso sqrt()e envia de volta o resultado.

// Essa função também pode ser reduzida a uma única linha e ter sua palavra-chave return removida – experimente. Como de costume, mostrarei minha solução depois, mas é importante que você tente.

// Ainda aqui? Ok, aqui está minha solução:

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
// Há uma última coisa que quero mencionar antes de prosseguirmos: se sua função não retornar um valor, você ainda pode usar return por si só para forçar a saída da função mais cedo. Por exemplo, talvez você tenha uma verificação de que a entrada corresponde ao que você esperava e, se não, você deseja sair da função imediatamente antes de continuar.

//---------Quando a palavra-chave return não é necessária em uma função Swift?---------

// Usamos a return palavra-chave para enviar de volta valores de funções em Swift, mas há um caso específico em que ela não é necessária: quando nossa função contém apenas uma única expressão.

// Agora, “expressão” não é uma palavra que eu uso com frequência, mas é importante entender aqui. Quando escrevemos programas, fazemos coisas assim:

// 5 + 8
// Ou isto:

// greet("Paul")

// Essas linhas de código são resolvidas para um único valor: 5 + 8 são resolvidos para 13 e greet("Paul")podem retornar uma string “Oi, Paul!”

// Mesmo alguns códigos mais longos serão resolvidos para um único valor. Por exemplo, se tivéssemos três constantes booleanas como esta:

// let isAdmin = true 
// let isOwner = false
// let isEditingEnabled = false
// Então esta linha de código resolveria para um único valor:

// isOwner == true && isEditingEnabled || isAdmin == true
// Isso se tornaria “verdadeiro”, porque mesmo sendo isOwnerfalso, isAdminé verdadeiro, então toda a expressão se torna verdadeira.

// Assim, muitos códigos que escrevemos podem ser resolvidos em um único valor. Mas também há muito código que não pode ser resolvido para um único valor. Por exemplo, qual é o valor aqui:

// let name = "Otis"

// Sim, isso cria uma constante, mas não se torna um valor por si só – não poderíamos escrever return let name = "Otis".

// Da mesma forma, escrevemos condições como esta:

if name == "Maeve" {
    print("Hello, Maeve!")
}

// Isso também não pode se tornar um valor único, porque tem uma condição lá.

// Agora, tudo isso importa porque essas divisões têm nomes: quando nosso código pode ser resumido a um único valor, como true, false, “Hello” ou 19, chamamos isso de expression . Expressões são coisas que podem ser atribuídas a uma variável ou impressas usando print(). Por outro lado, quando estamos executando ações como criar variáveis, iniciar um loop ou verificar uma condição, chamamos isso de instrução .

// Tudo isso importa porque o Swift nos permite pular o uso da palavra- returnchave quando temos apenas uma expressão em nossa função. Então, essas duas funções fazem a mesma coisa:

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

// Lembre-se, a expressão dentro pode ser tão longa quanto você quiser, mas não pode conter nenhuma instrução – sem loops, sem condições, sem novas variáveis ​​e assim por diante.

// Agora, você pode pensar que isso é inútil e sempre usaria a palavra- returnchave. No entanto, essa funcionalidade é usada muito comumente com o SwiftUI, então vale a pena ter em mente.

// Antes de terminarmos, quero mencionar mais uma coisa. Você viu como podemos usar operadores como +, &&e ||em nossas expressões, porque eles ainda resolvem para um único valor. Bem, o operador ternário também funciona aqui e, na verdade, este é o principal caso de uso para ele: quando você deseja ter uma única expressão, mas não deseja ter um arquivo if.

// Para demonstrar isso, considere a seguinte função:

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

// Se quiséssemos remover as declarações de lá, nãoreturn poderíamos escrever isso:

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}

// Isso não é permitido, porque temos declarações reais lá – ife else.

// No entanto, poderíamos usar o operador ternário assim:

func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// Essa é uma única expressão. Se namefor igual a “Taylor Swift”, resolverá algo assim:

// Swift irá verificar se name é Taylor Swift ou não.
// É, então name == "Taylor Swift"é verdade.
// O operador ternário perceberá que sua condição agora é verdadeira, então ele escolherá “Oh wow” em vez de “Hello, (name)”.
// Então, quando essa função é executada, efetivamente se resume a isso:

func greet(name: String) -> String {
    "Oh wow!"
}

// Deixar-nos colocar a funcionalidade condicional em uma única linha de código é onde o operador ternário realmente brilha. E, como o SwiftUI usa bastante funções de expressão única, isso significa que os operadores ternários também são bastante usados ​​no SwiftUI.

//--------------Como retornar vários valores de funções----------------

// Quando você deseja retornar um único valor de uma função, você escreve uma seta e um tipo de dados antes da chave de abertura da sua função, assim:

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

// Isso compara uma string com a versão em maiúsculas de si mesma. Se a string já estiver totalmente em maiúsculas, nada será alterado e as duas strings serão idênticas, caso contrário, serão diferentes e enviarão de volta false.

// Se você deseja retornar dois ou mais valores de uma função, você pode usar uma matriz. Por exemplo, aqui está um que envia de volta os detalhes de um usuário:

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])") 

// Isso é problemático, porque é difícil lembrar o que user[0] e user[1] são, e se alguma vez ajustarmos os dados nessa matriz user[0] e user[1], podemos acabar sendo outra coisa ou talvez não existindo.

// Poderíamos usar um dicionário em vez disso, mas isso tem seus próprios problemas:

func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user = getUser()
print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])") 

// Sim, agora demos nomes significativos para as várias partes de nossos dados de usuário, mas veja essa chamada para print()- embora saibamos que ambos existirão, ainda precisamos fornecer valores padrão caso as coisas não sejam o que desejamos firstName. Espero lastName.

// Ambas as soluções são muito ruins, mas o Swift tem uma solução na forma de tuplas . Como arrays, dicionários e conjuntos, as tuplas nos permitem colocar vários dados em uma única variável, mas, diferentemente dessas outras opções, as tuplas têm um tamanho fixo e podem ter uma variedade de tipos de dados.

// Veja como nossa função fica quando retorna uma tupla:

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// Vamos quebrar isso…

// 1 - Nosso tipo de retorno agora é (firstName: String, lastName: String), que é uma tupla contendo duas strings.
// 2 - Cada string em nossa tupla tem um nome. Eles não estão entre aspas: são nomes específicos para cada item em nossa tupla, em oposição aos tipos de chaves arbitrárias que tínhamos nos dicionários.
// 3 - Dentro da função, enviamos de volta uma tupla contendo todos os elementos que prometemos, anexados aos nomes: firstName está sendo definido como “Taylor”, etc.
// 4 - Quando chamamos getUser(), podemos ler os valores da tupla usando os nomes das chaves: firstName, lastName, etc.

// Eu sei que as tuplas parecem muito semelhantes aos dicionários, mas são diferentes:

// 1 - Quando você acessa valores em um dicionário, o Swift não pode saber antecipadamente se eles estão presentes ou não. Sim, sabíamos que user["firstName"]estaria lá, mas Swift não pode ter certeza e, portanto, precisamos fornecer um valor padrão.
// 2 - Quando você acessa valores em uma tupla, o Swift sabe com antecedência que está disponível porque a tupla diz que estará disponível.
// 3 - Acessamos valores usando user.firstName: não é uma string, então também não há chance de erros de digitação.
// 4 - Nosso dicionário pode conter centenas de outros valores ao lado de "firstName", mas nossa tupla não pode – devemos listar todos os valores que ele conterá e, como resultado, é garantido que ele contenha todos e nada mais.

// Portanto, as tuplas têm uma vantagem importante sobre os dicionários: especificamos exatamente quais valores existirão e quais tipos eles têm, enquanto os dicionários podem ou não conter os valores que estamos solicitando.

// Há três outras coisas que é importante saber ao usar tuplas.

// Primeiro, se você está retornando uma tupla de uma função, o Swift já sabe os nomes que você está dando a cada item na tupla, então você não precisa repeti-los ao usar return. Então, este código faz a mesma coisa que nossa tupla anterior:

func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

// Em segundo lugar, às vezes você descobrirá que você recebe tuplas onde os elementos não têm nomes. Quando isso acontece, você pode acessar os elementos da tupla usando índices numéricos a partir de 0, assim:

func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)")

// Esses índices numéricos também estão disponíveis com tuplas que têm elementos nomeados, mas sempre achei preferível usar nomes.

// Finalmente, se uma função retorna uma tupla, você pode separar a tupla em valores individuais, se quiser.

// Para entender o que quero dizer com isso, primeiro dê uma olhada neste código:

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

// Isso volta para a versão nomeada de getUser(), e quando a tupla sai, estamos copiando os elementos de lá para conteúdos individuais antes de usá-los. Não há nada de novo aqui; estamos apenas movendo os dados um pouco.

// No entanto, em vez de atribuir a tupla a user, e copiar valores individuais de lá, podemos pular a primeira etapa – podemos separar o valor de retorno getUser()em duas constantes separadas, assim:

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// Essa sintaxe pode machucar sua cabeça no começo, mas na verdade é apenas um atalho para o que tínhamos antes: converter a tupla de dois elementos que recebemos de volta getUser()em duas constantes separadas.

// Na verdade, se você não precisar de todos os valores da tupla, você pode dar um passo adiante usando _ para dizer ao Swift para ignorar essa parte da tupla:

let (firstName, _) = getUser()
print("Name: \(firstName)")

//---------------Como personalizar rótulos de parâmetros----------------------

// Você viu como os desenvolvedores Swift gostam de nomear seus parâmetros de função, porque torna mais fácil lembrar o que eles fazem quando a função é chamada. Por exemplo, poderíamos escrever uma função para rolar um dado um certo número de vezes, usando parâmetros para controlar o número de lados do dado e o número de lançamentos:

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

// Mesmo se você voltar a este código seis meses depois, sinto-me confiante de que rollDice(sides: 6, count: 4)é bastante autoexplicativo.

// Esse método de nomear parâmetros para uso externo é tão importante para o Swift que ele realmente usa os nomes quando se trata de descobrir qual método chamar. Isso é bem diferente de muitas outras linguagens, mas isso é perfeitamente válido em Swift:

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

// Sim, essas são todas as funções chamadas hireEmployee(), mas quando você as chama, o Swift sabe qual delas você quer dizer com base nos nomes dos parâmetros que você fornece. Para distinguir entre as várias opções, é muito comum ver a documentação referindo-se a cada função incluindo seus parâmetros, como este: hireEmployee(name:) ou hireEmployee(title:).

// Às vezes, porém, esses nomes de parâmetros são menos úteis, e há duas maneiras que eu quero olhar.

// Primeiro, pense na função hasPrefix() que você aprendeu anteriormente:

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

// Quando chamamos hasPrefix(), passamos o prefixo para verificar diretamente – não dizemos hasPrefix(string:) ou, pior, hasPrefix(prefix:). Por quê?

// Bem, quando estamos definindo os parâmetros para uma função, podemos adicionar dois nomes: um para uso onde a função é chamada e outro para uso dentro da própria função. hasPrefix() usa isso para especificar _ como o nome externo para seu parâmetro, que é a maneira do Swift dizer “ignore isso” e faz com que não haja rótulo externo para esse parâmetro.

// Podemos usar a mesma técnica em nossas próprias funções, se você achar que lê melhor. Por exemplo, anteriormente tínhamos esta função:

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string)

// Você pode olhar para isso e achar que está exatamente certo, mas também pode olhar string: string e ver uma duplicação irritante. Afinal, o que mais vamos passar lá além de uma string?

// Se adicionarmos um sublinhado antes do nome do parâmetro, podemos remover o rótulo do parâmetro externo da seguinte forma:

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

// Isso é muito usado no Swift, como append() para adicionar itens a um array, ou contains() para verificar se um item está dentro de um array – em ambos os lugares é bastante evidente qual é o parâmetro sem ter um rótulo também.

// O segundo problema com nomes de parâmetros externos é quando eles não estão certos – você quer tê-los, então _não é uma boa ideia, mas eles simplesmente não são lidos naturalmente no site de chamada da função.

// Como exemplo, aqui está outra função que vimos anteriormente:

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// Esse código é Swift válido e podemos deixá-lo como está. Mas o site da chamada não lê bem: printTimesTables(number: 5). Seria muito melhor assim:

func printTimesTables(for: Int) {
    for i in 1...12 {
        print("\(i) x \(for) is \(i * for)")
    }
}

printTimesTables(for: 5)

// Isso é muito melhor no site da chamada – você pode dizer literalmente “imprimir tabela de tempos para 5” em voz alta, e faz sentido. Mas agora temos Swift inválido: embora for seja permitido e leia muito bem no site da chamada, não é permitido dentro da função.

// Você já viu como podemos colocar _ antes do nome do parâmetro para que não precisemos escrever um nome de parâmetro externo. Bem, a outra opção é escrever um segundo nome lá: um para usar externamente e outro para usar internamente.

// Veja como isso se parece:

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

// Há três coisas lá que você precisa olhar de perto:

// 1 - Escrevemos for number: Int: o nome externo é for, o nome interno é number, e é do tipo Int.
// 2 - Quando chamamos a função, usamos o nome externo para o parâmetro: printTimesTables(for: 5).
// 3 - Dentro da função usamos o nome interno para o parâmetro: print("\(i) x \(number) is \(i * number)").

// Portanto, o Swift nos dá duas maneiras importantes de controlar os nomes dos parâmetros: podemos usar _ para o nome do parâmetro externo para que ele não seja usado, ou adicionar um segundo nome para que tenhamos nomes de parâmetros externos e internos.

// Dica: Mencionei anteriormente que tecnicamente os valores que você passa para uma função são chamados de “argumentos”, e os valores que você recebe dentro da função são chamados de parâmetros . É aqui que as coisas ficam um pouco confusas, porque agora temos rótulos de argumentos e nomes de parâmetros lado a lado, ambos na definição da função. Como eu disse, usarei o termo “parâmetro” para ambos, e quando a distinção for importante, você verá que faço a distinção entre eles usando “nome do parâmetro externo” e “nome do parâmetro interno”.

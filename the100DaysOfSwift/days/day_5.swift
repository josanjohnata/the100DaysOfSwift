//
//  day_5.swift
//  day-1
//
//  Created by Jon on 29/03/22.
//

import Foundation


//-------------------Como verificar se uma condição é verdadeira ou falsa-----------------

// Os programas muitas vezes fazem escolhas:

// Se a pontuação do exame do aluno for superior a 80, imprima uma mensagem de sucesso.
// Se o usuário inseriu um nome que vem depois do nome do amigo em ordem alfabética, coloque o nome do amigo em primeiro lugar.
// Se adicionar um número a uma matriz fizer com que ele contenha mais de 3 itens, remova o mais antigo.
// Se o usuário foi solicitado a inserir seu nome e não digitar nada, dê a ele um nome padrão de "Anônimo".
// Swift lida com isso com instruções if, o que nos permite verificar uma condição e executar algum código se a condição for verdadeira. Eles se parecem com isso:

// if someCondition {
//     print("Do something")
// }

// Vamos detalhar isso:

// A condição começa com if, o que sinaliza para Swift, queremos verificar algum tipo de condição em nosso código.
// The someCondition part is where you write your condition – was the score over 80? Does the array contain more than 3 items?
// Se a condição for verdadeira - se a pontuação realmente for superior a 80 - então imprimimos a mensagem "Faça alguma coisa".
// Of course, that isn’t everything in the code: I didn’t mention the little { and } symbols. These are called braces – opening and closing braces, more specifically – although sometimes you’ll hear them referred to as “curly braces” or “curly brackets”.

//Essas chaves são usadas extensivamente em Swift para marcar blocos de código: a chave de abertura inicia o bloco e a chave de fechamento termina. Dentro do bloco de código está todo o código que queremos executar se nossa condição for verdadeira quando estiver marcada, o que, no nosso caso, está imprimindo uma mensagem.

// Você pode incluir o máximo de código que quiser:

var condition = """
if someCondition {
    print("Do something")
    print("Do something else")
    print("Do a third thing")
}
"""

// Claro, o que realmente importa é a parte someCondition, porque é aí que entra o seu código de verificação: em que condição você realmente quer verificar?

// Well, let’s try the score example: if a score constant is over 80, let’s print a message. Here’s how that would look in code:

let scoreC = 85

if scoreC > 80 {
    print("Great job!")
}

// In that code, score > 80 is our condition. You’ll remember > from school meaning “is greater than”, so our complete condition is “if score is greater than 80.” And if it is greater than 80, “Great job!” will be printed – nice!

// That > symbol is a comparison operator, because it compares two things and returns a Boolean result: is the thing on the left greater than the thing on the right? You can also use < for less than, >= for “greater than or equal”, and <= for “less than or equal.”

// Vamos experimentar - o que você acha que esse código vai imprimir?

let speed = 88
let percentage = 85
let ageC = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if ageC >= 18 {
    print("You're eligible to vote")
}

// Try and run the code mentally in your head – which print() lines will actually be run?

// Well, our first one will run if speed is greater than or equal to 88, and because it is exactly 88 the first print() code will be run.

// The second one will run if percentage is less than 85, and because it is exactly 85 the second print() will not run – we used less than, not less than or equal.

// The third will run if age is greater than or equal to 18, and because it’s exactly 18 the third print() will run.

// Now let’s try our second example condition: if the user entered a name that comes after their friend’s name alphabetically, put the friend’s name first. You’ve seen how <, >= and others work great with numbers, but they also work equally well with strings right out of the box:

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// So, if the string inside ourName comes before the string inside friendName when sorted alphabetically, it prints ourName first then friendName, exactly as we wanted.

// Let’s take a look at our third example condition: if adding a number to an array makes it contain more than 3 items, remove the oldest one. You’ve already met append(), count, and remove(at:), so we can now put all three together with a condition like this:

// Make an array of 3 numbers
var numbersC = [1, 2, 3]

// Add a 4th
numbersC.append(4)

// If we have over 3 items
if numbersC.count > 3 {
    // Remove the oldest number
    numbersC.remove(at: 0)
}

// Display the result
print(numbersC)

// Agora vamos dar uma olhada na nossa quarta condição de exemplo: se o usuário foi solicitado a inserir seu nome e não digitou nada, dê a ele um nome padrão de "Anônimo".

// To solve this you’ll first need to meet two other comparison operators you’ll use a lot, both of which handle equality. The first is == and means “is equal to,” which is used like this:

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

// The second is !=, which means “is not equal to”, and is used like this:

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

// No nosso caso, queremos verificar se o nome de usuário inserido pelo usuário está vazio, o que poderíamos fazer assim:

// Create the username variable
var username = "taylorswift13"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

// That "" is an empty string: we start the string and end the string, with nothing in between. By comparing username to that, we’re checking if the user also entered an empty string for their username, which is exactly what we want.

// Agora, existem outras maneiras de fazer essa verificação, e é importante que você entenda o que eles fazem.

// First, we could compare the count of the string – how many letters it has – against 0, like this:

if username.count == 0 {
    username = "Anonymous"
}

// Comparar uma string com outra não é muito rápido em nenhum idioma, então substituímos a comparação de string por uma comparação de inteiros: o número de letras na string é igual a 0?

// In many languages that’s very fast, but not in Swift. You see, Swift supports all sorts of complex strings – literally every human language works out of the box, including emoji, and that just isn’t true in so many other programming languages. However, this really great support has a cost, and one part of that cost is that asking a string for its count makes Swift go through and count up all the letters one by one – it doesn’t just store its length separately from the string.

// So, think about the situation where you have a massive string that stores the complete works of Shakespeare. Our little check for count == 0 has to go through and count all the letters in the string, even though as soon as we have counted at least one character we know the answer to our question.

// As a result, Swift adds a second piece of functionality to all its strings, arrays, dictionaries, and sets: isEmpty. This will send back true if the thing you’re checking has nothing inside, and we can use it to fix our condition like this:

if username.isEmpty == true {
    username = "Anonymous"
}

// That’s better, but we can go one step further. You see, ultimately what matters is that your condition must boil down to either true or false; Swift won’t allow anything else. In our case, username.isEmpty is already a Boolean, meaning it will be true or false, so we can make our code even simpler:

if username.isEmpty {
    username = "Anonymous"
}

// If isEmpty is true the condition passes and username gets set to Anonymous, otherwise the condition fails.

//-----------------------Como verificar várias condições----------------------------

// Quando usamos if, devemos fornecer ao Swift algum tipo de condição que será verdadeira ou falsa depois de avaliada. Se você quiser verificar vários valores diferentes, você pode colocá-los um após o outro assim:

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
}

if age < 18 {
    print("Sorry, you're too young to vote.")
}

// No entanto, isso não é muito eficiente se você pensar bem: nossas duas condições são mutuamente exclusivas, porque se alguém é maior ou igual a 18 (a primeira condição) então não pode ser menor que 18 (a segunda condição), e O oposto também é verdade. Estamos fazendo o Swift fazer um trabalho que simplesmente não é necessário.

// Nessa situação, o Swift nos fornece uma condição mais avançada que nos permite adicionar um else bloco ao nosso código – algum código para ser executado se a condição não for verdadeira.

// Usando else, poderíamos reescrever nosso código anterior para isso:

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

// Agora o Swift só precisa verificar age uma vez: se for maior ou igual a 18 o primeiro print()código é executado, mas se for qualquer valor menor que 18 o segundo print()código é executado.

// Então, agora nossa condição fica assim:

if someCondition {
    print("This will run if the condition is true")
} else {
    print("This will run if the condition is false")
}

// Há uma condição ainda mais avançada chamada else if, que permite executar uma nova verificação se a primeira falhar. Você pode ter apenas um desses, se quiser, ou ter vários else if, e até combinar else if com um , else se necessário. No entanto, você só pode ter um else, porque isso significa "se todas as outras condições forem falsas".

// Veja como isso se parece:

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

// Você pode continuar adicionando mais e mais else if condições se quiser, mas cuidado para que seu código não fique muito complicado!

// Além de usar else e else if fazer condições mais avançadas, você também pode verificar mais de uma coisa. Por exemplo, podemos querer dizer “se a temperatura de hoje estiver acima de 20 graus Celsius, mas abaixo de 30, imprima uma mensagem”.

// Isso tem duas condições, então podemos escrever isso:

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

// Embora isso funcione bem o suficiente, o Swift oferece uma alternativa mais curta: podemos usar &&para combinar duas condições, e a condição inteira só será verdadeira se as duas partes dentro da condição forem verdadeiras.

// Então, poderíamos mudar nosso código para isso:

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// Você deve ler &&como “e”, para que todas as nossas condições sejam “se temp for maior que 20 e temp for menor que 30, imprima uma mensagem”. É chamado de operador lógico porque combina booleanos para criar um novo booleano.

// &&tem uma contrapartida que é dois símbolos de pipe, ||, que significa "ou". Considerando &&que só fará uma condição ser verdadeira se ambas as sub condições forem verdadeiras, ||fará uma condição ser verdadeira se qualquer uma das sub condições for verdadeira.

// Por exemplo, poderíamos dizer que um usuário pode comprar um jogo se tiver pelo menos 18 anos ou, se tiver menos de 18 anos, deve ter permissão de um dos pais. Poderíamos escrever isso usando ||assim:

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}

// Isso imprimirá “Você pode comprar o jogo”, porque embora a primeira metade da nossa condição falhe – o usuário não tem pelo menos 18 anos – a segunda metade passa, porque eles têm o consentimento dos pais.

// Lembre-se, usar == true em uma condição pode ser removido, porque obviamente já estamos verificando um booleano. Então, poderíamos escrever isso em vez disso:

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

// Para terminar com a verificação de várias condições, vamos tentar um exemplo mais complexo que combina if, else if, else, e ||tudo ao mesmo tempo, e até mostra como as enumerações se encaixam nas condições.

// Neste exemplo, vamos criar uma enumeração chamada TransportOption, que contém cinco casos: avião, helicóptero, bicicleta, carro e scooter. Em seguida, atribuiremos um valor de exemplo a uma constante e executaremos algumas verificações:

// * Se estivermos indo para algum lugar de avião ou helicóptero, imprimiremos “Vamos voar!”
// * Se formos de bicicleta, imprimiremos “Espero que haja uma ciclovia…”
// * Se formos de carro, imprimiremos “Hora de ficar preso no trânsito”.
// * Caso contrário, imprimiremos “Vou alugar uma scooter agora!”

// Aqui está o código para isso:

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// Eu gostaria de escolher algumas partes desse código:

// 1 - Quando definimos o valor para transport, precisamos ser explícitos a que estamos nos referindo TransportOption.airplane. Não podemos simplesmente escrever .airplane porque Swift não entende que queremos dizer a TransportOption e numeração.
// 2 - Uma vez que isso tenha acontecido, não precisamos escrever TransportOption mais porque Swift sabe transport que deve ser algum tipo de arquivo TransportOption. Assim, podemos verificar se é igual a .airplane em vez de TransportOption.airplane.
// 3 - O código usado ||para verificar se transport é igual .airplane ou igual a .helicopter, e se algum deles for verdadeiro então a condição é verdadeira, e “Vamos voar!” é impresso.
// 4 - Se a primeira condição falhar – se o modo de transporte não for .airplane ou .helicopter– então a segunda condição será executada: o modo de transporte é .bicycle? Em caso afirmativo, "Espero que haja uma ciclovia..." é impresso.
// 5 - Se também não vamos de bicicleta, verificamos se vamos de carro. Se formos, “Hora de ficar preso no trânsito”. é impresso.
// 6 - Finalmente, se todas as condições anteriores falharem, o else bloco será executado, e isso significa que estamos indo de scooter.

//------------Como usar instruções de switch para verificar várias condições-------------

// You can use if and else if repeatedly to check conditions as many times as you want, but it gets a bit hard to read. For example, if we had a weather forecast from an enum we could choose which message to print based on a series of conditions, like this:

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

// Isso funciona, mas tem problemas:

// Continuamos tendo que escrever forecast, mesmo que estejamos verificando a mesma coisa toda vez.
// I accidentally checked .rain twice, even though the second check can never be true because the second check is only performed if the first check failed.
// Eu não verifiquei .snow, então estamos perdendo a funcionalidade.
// Podemos resolver todos esses três problemas usando uma maneira diferente de verificar as condições chamada switch. Isso também nos permite verificar casos individuais, um por um, mas agora Swift pode ajudar. No caso de uma enum, ela conhece todos os casos possíveis que a enum pode ter, portanto, se perdermos uma ou verificarmos uma duas vezes, ela reclamará.

// So, we can replace all those if and else if checks with this:

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

// Vamos detalhar isso:

// Começamos com a switch forecast, que diz à Swift que é o valor que queremos verificar.
// Em seguida, temos uma sequência de instruções de case, cada uma das quais são valores que queremos comparar com a forecast.
// Each of our cases lists one weather type, and because we’re switching on forecast we don’t need to write Weather.sun, Weather.rain and so on – Swift knows it must be some kind of Weather.
// Após cada caso, escrevemos dois pontos para marcar o início do código a ser executado se esse caso for correspondido.
// Usamos uma chave de fechamento para finalizar a instrução do switch.
// If you try changing .snow for .rain, you’ll see Swift complains loudly: once that we’ve checked .rain twice, and again that our switch statement is not exhaustive – that it doesn’t handle all possible cases.

// If you’ve ever used other programming languages, you might have noticed that Swift’s switch statement is different in two places:

// All switch statements must be exhaustive, meaning that all possible values must be handled in there so you can’t leave one off by accident.
// Swift executará o primeiro caso que corresponder à condição que você está verificando, mas não mais. Outras linguagens geralmente continuam executando outro código de todos os casos subsequentes, o que geralmente é totalmente a coisa padrão errada a fazer.
// Embora ambas as afirmações sejam verdadeiras, Swift nos dá um pouco mais de controle se precisarmos.

// First, yes all switch statements must be exhaustive: you must ensure all possible values are covered. If you’re switching on a string then clearly it’s not possible to make an exhaustive check of all possible strings because there is an infinite number, so instead we need to provide a default case – code to run if none of the other cases match.

// Por exemplo, poderíamos alternar uma string contendo um nome de lugar:

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

// That default: at the end is the default case, which will be run if all cases have failed to match.

// Remember: Swift checks its cases in order and runs the first one that matches. If you place default before any other case, that case is useless because it will never be matched and Swift will refuse to build your code.

// Em segundo lugar, se você quiser explicitamente que Swift continue executando casos subsequentes, usefallthrough. Isso não é comumente usado, mas às vezes - apenas às vezes - pode ajudá-lo a evitar a repetição do trabalho.

// Por exemplo, há uma famosa música de Natal chamada The Twelve Days of Christmas e, à medida que a música continua, mais e mais presentes são amassados em uma pessoa infeliz que, por volta do sexto dia, tem uma casa bastante cheia.

// Poderíamos fazer uma aproximação simples dessa música usando fallthrough. Primeiro, veja como o código ficaria sem fallthrough:

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

// Isso imprimirá “5 anéis de ouro”, o que não está certo. No dia 1, apenas "Uma perdiz em uma pereira" deve ser impressa, no dia 2 deve ser "2 pombas tartaruga", depois "Uma perdiz em uma pereira", no dia 3 deve ser "3 galinhas francesas", "2 pombas tartaruga" e... bem, você entendeu a ideia.

// We can use fallthrough to get exactly that behavior:

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// That will match the first case and print “5 golden rings”, but the fallthrough line means case 4 will execute and print “4 calling birds”, which in turn uses fallthrough again so that “3 French hens” is printed, and so on. It’s not a perfect match to the song, but at least you can see the functionality in action!

//------------Como usar o operador condicional ternário para testes rápidos--------------

// Há uma última maneira de verificar as condições em Swift, e quando você vê-lo, é provável que você se pergunte quando é útil. Para ser justo, por muito tempo eu raramente usei essa abordagem, mas como você verá mais tarde, é muito importante com o SwiftUI.

// This option is called the ternary conditional operator. To understand why it has that name, you first need to know that +, -, ==, and so on are all called binary operators because they work with two pieces of input: 2 + 5, for example, works with 2 and 5.

// Os operadores ternários trabalham com três entradas e, de fato, como o operador condicional ternário é o único operador ternário em Swift, muitas vezes você o ouvirá chamado apenas de "operador ternário".

// De qualquer forma, chega de nomes: o que isso realmente faz? Bem, o operador ternário nos permite verificar uma condição e retornar um dos dois valores: algo se a condição for verdadeira e algo se for falsa.

// For example, we could create a constant called age that stores someone’s age, then create a second constant called canVote that will store whether that person is able to vote or not:

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

// When that code runs, canVote will be set to “Yes” because age is set to 18.

// As you can see, the ternary operator is split into three parts: a check (age >= 18), something for when the condition is true (“Yes”), and something for when the condition is false (“No”). That makes it exactly like a regular if and else block, in the same order.

// Se ajudar, Scott Michaud sugeriu um mnemônico útil: WTF. Significa "o que, verdadeiro, falso" e corresponde à ordem do nosso código:

// Qual é a nossa condição? Bem, é age >= 18.
// O que fazer quando a condição é verdadeira? Envie de volta "Sim", para que possa ser armazenado incanVote.
// E se a condição for falsa? Envie de volta "Não".
// Vejamos alguns outros exemplos, comece com um fácil que leia uma hora no formato de 24 horas e imprima uma das duas mensagens:

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

// Observe como isso não atribui o resultado em nenhum lugar - o caso verdadeiro ou falso é impresso dependendo do valor da hour.

// Or here’s one that reads the count of an array as part of its condition, then sends back one of two strings:

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// It gets a little hard to read when your condition use == to check for equality, as you can see here:

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

// The = theme == part is usually the bit folks find hard to read, but remember to break it down:

//O quê?theme == .dark
//Verdadeiro: “preto”
//Falso: “branco”
//So if theme is equal to .dark return “Black”, otherwise return “White”, then assign that to background.

//Now, you might be wondering why the ternary operator is useful, particularly when we have regular if/else conditions available to us. I realize it’s not a great answer, but you’ll have to trust me on this: there are some times, particularly with SwiftUI, when we have no choice and must use a ternary.

//Você pode ver mais ou menos qual é o problema com o nosso código para verificar as horas:

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

// If we wanted to write that out using if and else we’d either need to write this invalid code:

print(
    if hour < 12 {
        "It's before noon"
    } else {
        "It's after noon"
    }
)

// Or run print() twice, like this:

if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}

// Esse segundo funciona bem aqui, mas se torna quase impossível no SwiftUI, como você verá muito mais tarde. Então, mesmo que você possa olhar para o operador ternário e se perguntar por que você o usaria, confie em mim: isso importa!

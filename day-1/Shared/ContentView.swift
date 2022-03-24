// Variaveis são declaradas com o termo `var`

var movies = "Avengers"
var time = 2.23
var isItGood = true

// Constantes são declaradas com o termo `let`

let myName = "Josan"
let pi = 3.14
let imAGirl = false

// Strings são declaradas entre aspas dupla

let phrase = "This is a String"

// Você pode usar pontuação, emoji e outros caracteres, como este:

let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// E você pode até usar outras aspas duplas dentro de sua string, contanto que você tenha o cuidado de colocar uma barra invertida antes delas para que o Swift entenda que elas estão dentro da string ao invés de terminar a string:

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Não há limite realista para o comprimento de suas cordas, o que significa que você pode usar uma corda para armazenar algo muito longo, como as obras completas de Shakespeare. No entanto, o que você descobrirá é que o Swift não gosta de quebras de linha em suas strings. Então, esse tipo de código não é permitido:

// let movie = "A day in
// the life of an
// Apple engineer"

// Para fazer comentários em várias linhas, usamos 3 aspas dupla

let movie = """
A day in
the life of an
Apple engineer
"""

// -------------------Funcionalidades Importantes------------------------

// Para ver o comprimento de uma string usamos o .count ap;os o nome da váriavel

// print(movie.count)

// Outra funcionalidade é o uppercased() que retorna a mesma string com as letras em maiúculas.

// print(result.uppercased())

// Outra funcionalidade útil de string é chamada hasPrefix(), e nos permite saber se uma string começa com algumas letras de nossa escolha:

// print(movie.hasPrefix("A day"))

// Há também uma contrapartida hasSuffix(), que verifica se a string termina com algum texto;

// print(filename.hasSuffix(".jpg"))

// ---------------------Numbers---------------------------

// Na declaração de números inteiros é similar a declaração de strings, sendo que podemos separar os números com Underscore "_"  Ex.: let reallyBig = 1_000_000_000.
let score = 10
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// print(score)

// Em vez de fazer novas constantes a cada vez, o Swift tem algumas operações especiais que ajustam um inteiro de alguma forma e atribuem o resultado de volta ao número original.

// Por exemplo, isso cria uma countervariável igual a 10 e adiciona mais 5 a ela:

var counter = """

var counter = 10
counter = counter + 5
//Em vez de escrever counter = counter + 5, você pode usar o operador abreviado +=, que adiciona um número diretamente ao inteiro em questão:

counter += 5
print(score)
// Isso faz exatamente a mesma coisa, apenas com menos digitação. Chamamos esses operadores de atribuição compostos e eles vêm em outras formas:

counter *= 2
print(score)
counter -= 10
print(score)
counter /= 2
print(score)

// Antes de terminarmos com os inteiros, quero mencionar uma última coisa: como strings, os inteiros têm algumas funcionalidades úteis anexadas. Por exemplo, você pode chamar isMultiple(of:)um inteiro para descobrir se é um múltiplo de outro inteiro.

// Então, poderíamos perguntar se 120 é um múltiplo de três assim:

let number = 120
print(number.isMultiple(of: 3))
// Estou chamando isMultiple(of:)uma constante lá, mas você pode usar o número diretamente se quiser:

print(120.isMultiple(of: 3))

"""

// --------------------------Float Numbers------------------------

var floatNumber = """
// Primeiro, quando você cria um número de ponto flutuante, o Swift o considera um Double. Isso é abreviação de “número de ponto flutuante de precisão dupla”, que eu percebo ser um nome bastante estranho – a maneira como lidamos com números de ponto flutuante mudou muito ao longo dos anos, e embora o Swift faça um bom trabalho ao simplificar isso às vezes você pode encontrar algum código mais antigo que é mais complexo. Nesse caso, significa que o Swift aloca o dobro da quantidade de armazenamento que algumas linguagens mais antigas fariam, o que significa que Doublepode armazenar números absolutamente enormes.

// Em segundo lugar, o Swift considera os decimais como um tipo de dados totalmente diferente dos inteiros, o que significa que você não pode misturá-los. Afinal, os números inteiros são sempre 100% precisos, enquanto os decimais não são, então o Swift não permitirá que você coloque os dois juntos, a menos que você peça especificamente para que isso aconteça.

// Na prática, isso significa que você não pode fazer coisas como adicionar um inteiro a um decimal, então esse tipo de código produzirá um erro:

let a = 1
let b = 2.0
let c = a + b
// Sim, podemos ver que bé realmente apenas o inteiro 2 mascarado como um decimal, mas o Swift ainda não permitirá que esse código seja executado. Isso é chamado de segurança de tipo : o Swift não nos permite misturar diferentes tipos de dados por acidente.

// Se você quiser que isso aconteça, você precisa dizer ao Swift explicitamente que ele deve tratar o Doubleinterior bcomo um Int:

let c = a + Int(b)
// Ou trate o Intinterior acomo um Double:

let c = Double(a) + b
// Terceiro, o Swift decide se você deseja criar um Doubleou um Intcom base no número que você fornece – se houver um ponto ali, você tem um Double, caso contrário é um Int. Sim, mesmo que os números após o ponto sejam 0.

// Assim:

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3
// Combinado com a segurança de tipo, isso significa que, uma vez que o Swift tenha decidido que tipo de dados uma constante ou variável mantém, ela deve sempre manter o mesmo tipo de dados. Isso significa que este código está bem:

var name = "Nicolas Cage"
name = "John Travolta"
// Mas esse tipo de código não é:

var name = "Nicolas Cage"
name = 57
// Isso diz ao Swift nameque armazenará uma string, mas então ele tenta colocar um inteiro lá.

// Finalmente, os números decimais têm o mesmo intervalo de operadores e operadores de atribuição compostos que os inteiros:

var rating = 5.0
rating *= 2
// Muitas APIs mais antigas usam uma maneira ligeiramente diferente de armazenar números decimais, chamada CGFloat. Felizmente, o Swift nos permite usar Doublenúmeros regulares em todos os lugares em que um CGFloaté esperado, portanto, embora você veja CGFloataparecer de vez em quando, pode simplesmente ignorá-lo.
"""

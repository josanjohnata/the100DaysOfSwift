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

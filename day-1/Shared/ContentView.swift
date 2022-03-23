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



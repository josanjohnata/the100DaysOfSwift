// Criar um booleano é como fazer os outros tipos de dados, exceto que você deve atribuir um valor inicial de true ou false, assim:
import Cocoa


let goodDogs = true
let gameOver = false

// Ao contrário dos outros tipos de dados, os booleanos não possuem operadores aritméticos como +e -– afinal, o que seria verdadeiro + verdadeiro igual? No entanto, os booleanos possuem um operador especial, !, que significa “não”. Isso inverte o valor de um booleano de true para false ou false para true.

// Por exemplo, poderíamos inverter o valor de um booleano assim:
var isBool = """
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)
"""

// Isso imprimirá “true” e depois “false” quando for executado, porque isAuthenticatedcomeçou como false, e definimos como não false, que é true, e depois o invertemos novamente para que volte a false.

// Os booleanos têm uma pequena funcionalidade extra que pode ser útil. Em particular, se você chamar toggle()um booleano, ele mudará um valor true para false e um valor false para true. Para testar isso, tente fazer gameOveruma variável e modificá-la assim:
var testToggle = """
var gameOver2 = false
print(gameOver2)

gameOver2.toggle()
print(gameOver2)
"""

// Isso imprimirá false primeiro e, depois de chamar toggle(), imprimirá true. Sim, é o mesmo que usar !um pouco menos de código, mas é surpreendentemente útil quando você está lidando com código complexo!

//------------------Concatenar strings---------------------------------------------

// Swift nos dá duas maneiras de combinar strings: unindo-as usando +, e uma técnica especial chamada interpolação de strings que pode colocar variáveis ​​de qualquer tipo diretamente dentro de strings.

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

// Você pode fazer isso várias vezes se precisar:

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
// print(lyric)

// Observe como estamos usando +para unir duas strings, mas quando usamos Inte Doublesomamos números? Isso é chamado de sobrecarga de operador – a capacidade de um operador +significar coisas diferentes dependendo de como é usado. Para strings, também se aplica a +=, que adiciona uma string diretamente a outra.

// Essa técnica funciona muito bem para pequenas coisas, mas você não gostaria de fazer muito isso. Você vê, cada vez que o Swift vê duas strings sendo unidas usando +ele tem que fazer uma nova string delas antes de continuar, e se você tem muitas coisas sendo unidas, é um desperdício.

// Pense nisso por exemplo:

let luggageCode = "1" + "2" + "3" + "4" + "5"

// Swift não pode juntar todas essas strings de uma só vez. Em vez disso, ele juntará os dois primeiros para fazer “12”, depois juntará “12” e “3” para fazer “123”, depois juntará “123” e “4” para fazer “1234” e, finalmente, juntará “1234” e “5” para fazer “12345” – faz strings temporárias para armazenar “12”, “123” e “1234” mesmo que elas não sejam usadas quando o código termina.

// O Swift tem uma solução melhor chamada interpolação de strings e nos permite criar strings com eficiência a partir de outras strings, mas também de inteiros, números decimais e muito mais.

// Se você se lembra, eu disse anteriormente que você pode incluir aspas duplas dentro de strings desde que elas tenham uma barra invertida antes delas para que o Swift saiba tratá-las especialmente:

let quoteExemp = "Then he tapped a sign saying \"Believe\" and walked away."

// Algo muito semelhante é usado com a interpolação de strings: você escreve uma barra invertida dentro de sua string e coloca o nome de uma variável ou constante entre parênteses.

// Por exemplo, poderíamos criar uma constante de string e uma constante de inteiro e combiná-las em uma nova string:

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
// print(message)

// Quando esse código for executado, ele imprimirá “Olá, meu nome é Taylor e tenho 26 anos”.

// A interpolação de strings é muito mais eficiente do que usar + para unir strings uma a uma, mas também há outro benefício importante: você pode extrair inteiros, decimais e muito mais sem trabalho extra.

// Veja bem, usando + nos permite adicionar strings a strings, inteiros a inteiros e decimais a decimais, mas não nos permite adicionar inteiros a strings. Portanto, esse tipo de código não é permitido:

let number = 11
// let missionMessage = "Apollo " + number + " landed on the moon."

// Você pode pedir ao Swift para tratar o número como uma string se quiser, assim:

let missionMessage = "Apollo " + String(number) + " landed on the moon."

// Ainda é mais rápido e fácil de ler usar a interpolação de string:

let missionMessage2 = "Apollo \(number) landed on the moon."

//Dica: você pode colocar cálculos dentro da interpolação de strings, se desejar. Por exemplo, isso imprimirá “5 x 5 é 25”:

// print("5 x 5 is \(5 * 5)")

// -------------------------Recapitulando o que estudamos-------------------------------

var rec = """
1 - Swift nos permite criar constantes usando let, e variáveis ​​usando var.
2 - Se você não pretende alterar um valor, certifique-se de usar letpara que o Swift possa ajudá-lo a evitar erros.
3 - As strings de Swift contêm texto, desde strings curtas até romances inteiros. Eles funcionam muito bem com emoji e qualquer idioma do mundo e têm funcionalidades úteis, como counte uppercased().
4 - Você cria strings usando aspas duplas no início e no final, mas se quiser que sua string passe por várias linhas, você precisa usar três aspas duplas no início e no final.
5 - Swift chama seus números inteiros de inteiros , e eles podem ser positivos ou negativos. Eles também têm funcionalidades úteis, como isMultiple(of:).
6 - Em Swift, os números decimais são chamados Double, abreviação de número de ponto flutuante de tamanho duplo. Isso significa que eles podem conter números muito grandes, se necessário, mas também não são 100% precisos – você não deve usá-los quando for necessário 100% de precisão, como ao lidar com dinheiro.
7 - Existem muitos operadores aritméticos integrados, como +, -, *e /, juntamente com os operadores de atribuição compostos especiais, como os +=que modificam as variáveis ​​diretamente.
8 - Você pode representar um estado verdadeiro ou falso simples usando um booleano, que pode ser invertido usando o !operador ou chamando toggle().
9 - A interpolação de strings nos permite colocar constantes e variáveis ​​em nossas strings de maneira simplificada e eficiente.
"""

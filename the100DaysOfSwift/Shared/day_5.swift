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

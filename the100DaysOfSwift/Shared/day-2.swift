// Criar um booleano é como fazer os outros tipos de dados, exceto que você deve atribuir um valor inicial de true ou false, assim:

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
"""
var gameOver2 = false
print(gameOver2)

gameOver2.toggle()
print(gameOver2)
"""

// Isso imprimirá false primeiro e, depois de chamar toggle(), imprimirá true. Sim, é o mesmo que usar !um pouco menos de código, mas é surpreendentemente útil quando você está lidando com código complexo!

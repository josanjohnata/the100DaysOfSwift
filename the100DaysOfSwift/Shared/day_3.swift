//
//  day_3.swift
//  day-1
//
//  Created by Jon on 25/03/22.
//

import Foundation

// ------------------------Tipos de dados complexos, parte 1--------------------------

// É extremamente comum querer ter muitos dados em um único lugar, sejam os dias da semana, uma lista de alunos de uma turma, a população de uma cidade nos últimos 100 anos, ou qualquer um dos inúmeros outros exemplos.

// No Swift, fazemos esse agrupamento usando um array . Arrays são seus próprios tipos de dados como String, Inte Double, mas em vez de conter apenas uma string, eles podem conter zero strings, uma string, duas strings, três, cinquenta, cinquenta milhões ou até mais strings - eles podem se adaptar automaticamente para armazenar como quantos você precisar, e sempre mantenha os dados na ordem em que você os adiciona.

// Vamos começar com alguns exemplos simples de criação de arrays:

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// Para visualizar os itens de um arry, pegamos ele pelo índice começando com o 0(zero) na primeira possição.
var index = """
print(beatles[0])
print(numbers[1])
print(temperatures[2])
"""

// Para adicionar novos itens na nossa matriz, usamos o append()

//beatles.append("Allen")
//beatles.append("Adrian")
//beatles.append("Novall")
//beatles.append("Vivian")

// No entanto, o Swift observa o tipo de dados que você está tentando adicionar e garantirá que sua matriz contenha apenas um tipo de dados por vez. Então, esse tipo de código não é permitido :

// temperatures.append("Chris")

// O swift não permite que misture tipos diferentes de dados. Exemplo:

//let firstBeatle = beatles[0]
//let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber

// Isso é segurança de tipo, assim como o Swift não nos permite misturar inteiros e decimais, exceto que é levado a um nível mais profundo. Sim, todos beatlese numbersambos são arrays, mas são tipos especializados de arrays: um é um array de strings e o outro é um array de inteiros.

// Você pode ver isso mais claramente quando quiser começar com uma matriz vazia e adicionar itens a ela um por um. Isso é feito com uma sintaxe muito precisa:

//var scores = Array<Int>()
//scores.append(100)
//scores.append(80)
//scores.append(85)
//print(scores[1])

//Já cobrimos as últimas quatro linhas, mas a primeira linha mostra como temos um tipo de array especializado – não é qualquer array, é um array que contém inteiros. Isso é o que permite que o Swift saiba com certeza que beatles[0]deve ser sempre uma string, e também o que nos impede de adicionar inteiros a um array de strings.
//
//Os parênteses de abertura e fechamento depois Array<Int>estão lá porque é possível personalizar a maneira como a matriz é criada, se necessário. Por exemplo, você pode querer preencher o array com muitos dados temporários antes de adicionar o material real mais tarde.
//
//Você pode fazer outros tipos de array especializando-o de diferentes maneiras, assim:

//var albums = Array<String>()
//albums.append("Folklore")
//albums.append("Fearless")
//albums.append("Red")

//Arrays são tão comuns no Swift que existe uma maneira especial de criá-los: em vez de escrever Array<String>, você pode escrever [String]. Então, esse tipo de código é exatamente o mesmo de antes:
//
//var albums = [String]()
//albums.append("Folklore")
//albums.append("Fearless")
//albums.append("Red")

//quero mencionar algumas funcionalidades úteis que vêm com arrays.
//
//Primeiro, você pode usar .countpara ler quantos itens estão em uma matriz, assim como fez com as strings:
//
//print(albums.count)
//Segundo, você pode remover itens de uma matriz usando remove(at:)para remover um item em um índice específico ou removeAll()para remover tudo:
//
//var characters = ["Lana", "Pam", "Ray", "Sterling"]
//print(characters.count)
//
//characters.remove(at: 2)
//print(characters.count)
//
//characters.removeAll()
//print(characters.count)


//characters.removeAll()
//print(characters.count)
//Isso imprimirá 4, depois 3 e 0 à medida que os caracteres são removidos.
//
//Terceiro, você pode verificar se uma matriz contém um item específico usando contains(), assim:
// O contains retorna um booleano

//let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
//print(bondMovies.contains("Frozen"))

//Quarto, você pode classificar um array usando sorted(), assim:

//let cities = ["London", "Tokyo", "Rome", "Budapest"]
//print(cities.sorted())
//Isso retorna uma nova matriz com seus itens classificados em ordem crescente, o que significa alfabeticamente para strings, mas numericamente para números – a matriz original permanece inalterada.
//
//Finalmente, você pode reverter um array chamando reversed()-o:
//
//let presidents = ["Bush", "Obama", "Trump", "Biden"]
//let reversedPresidents = presidents.reversed()
//print(reversedPresidents)
//Dica: Quando você inverte um array, o Swift é muito inteligente – ele não faz o trabalho de reorganizar todos os itens, mas apenas lembra para si mesmo que você quer que os itens sejam revertidos. Então, quando você imprimir reversedPresidents, não se surpreenda ao ver que não é mais apenas um array simples!
//
//Arrays são extremamente comuns no Swift, e você terá muitas oportunidades de aprender mais sobre eles à medida que progride. Ainda melhor sorted(), reversed(), e muitas outras funcionalidades de array também existem para strings – usar sorted()there coloca as letras da string em ordem alfabética, transformando algo como “swift” em “fistw”.

//----------------------Como armazenar e encontrar dados em dicionários-------------------

//Você viu como as matrizes são uma ótima maneira de armazenar dados que têm uma ordem específica, como dias da semana ou temperaturas de uma cidade. Arrays são uma ótima opção quando os itens devem ser armazenados na ordem em que você os adiciona, ou quando você pode ter itens duplicados lá, mas muitas vezes acessar dados por sua posição no array pode ser irritante ou até perigoso.
//
//Por exemplo, aqui está uma matriz contendo os detalhes de um funcionário:
//
//var employee = ["Taylor Swift", "Singer", "Nashville"]
//Eu lhe disse que os dados são sobre um funcionário, então você pode adivinhar o que várias partes fazem:
//
//print("Name: \(employee[0])")
//print("Job title: \(employee[1])")
//print("Location: \(employee[2])")
//Mas isso tem alguns problemas. Primeiro, você não pode realmente ter certeza de que employee[2]é a localização deles – talvez seja a senha deles. Segundo, não há garantia de que o item 2 esteja lá, principalmente porque transformamos o array em uma variável. Esse tipo de código causaria sérios problemas:
//
//print("Name: \(employee[0])")
//employee.remove(at: 1)
//print("Job title: \(employee[1])")
//print("Location: \(employee[2])")
//Isso agora imprime Nashville como o título do trabalho, o que está errado, e fará com que nosso código falhe quando ler employee[2], o que é simplesmente ruim .
//
//O Swift tem uma solução para esses dois problemas, chamados de dicionários . Os dicionários não armazenam itens de acordo com sua posição como os arrays, mas vamos decidir onde os itens devem ser armazenados.
//
//Por exemplo, poderíamos reescrever nosso exemplo anterior para ser mais explícito sobre o que é cada item:
//
//let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
//Se dividirmos isso em linhas individuais, você terá uma ideia melhor do que o código faz:
//
//let employee2 = [
//    "name": "Taylor Swift",
//    "job": "Singer",
//    "location": "Nashville"
//]
//Como você pode ver, agora estamos sendo muito claros: o nome é Taylor Swift, o trabalho é Singer e o local é Nashville. Swift chama as strings à esquerda – nome, trabalho e localização – as chaves do dicionário, e as strings à direita são os valores .
//
//Quando se trata de ler dados do dicionário, você usa as mesmas chaves que usou ao criá-lo:
//
//print(employee2["name"])
//print(employee2["job"])
//print(employee2["location"])
//Se você tentar isso em um playground, verá que o Xcode lança vários avisos ao longo das linhas de “Expressão implicitamente coagida de 'String?' para qualquer'". Pior ainda, se você observar a saída do seu playground, verá que ela é impressa Optional("Taylor Swift")em vez de apenas Taylor Swift– o que dá?
//
//Bem, pense sobre isso:
//
//print(employee2["password"])
//print(employee2["status"])
//print(employee2["manager"])
//Tudo isso é um código Swift válido, mas estamos tentando ler as chaves do dicionário que não têm um valor associado a elas. Claro, o Swift pode simplesmente travar aqui da mesma forma que irá travar se você ler um índice de array que não existe, mas isso tornaria muito difícil trabalhar com ele - pelo menos se você tiver um array com 10 itens que você sabe que é seguro leia os índices de 0 a 9. (“Indices” é apenas a forma plural de “index”, caso você não tenha certeza.)
//
//Portanto, o Swift oferece uma alternativa: quando você acessa dados dentro de um dicionário, ele nos diz “você pode receber um valor de volta, mas pode não receber nada”. Swift chama esses opcionais porque a existência de dados é opcional - pode estar lá ou não.
//
//Swift irá até mesmo avisá-lo quando você escrever o código, embora de uma forma bastante obscura – ele dirá “Expressão implicitamente coagida de 'String?' para 'Qualquer'”, mas na verdade significará “esses dados podem não estar lá – tem certeza de que deseja imprimi-los?”
//
//Opcionais são uma questão bastante complexa que abordaremos em detalhes mais adiante, mas por enquanto vou mostrar uma abordagem mais simples: ao ler um dicionário, você pode fornecer um valor padrão para usar se a chave não existir .
//
//Veja como isso se parece:
//
//print(employee2["name", default: "Unknown"])
//print(employee2["job", default: "Unknown"])
//print(employee2["location", default: "Unknown"])
//Todos os exemplos usaram strings para chaves e valores, mas você pode usar outros tipos de dados para qualquer um deles. Por exemplo, podemos rastrear quais alunos se formaram na escola usando strings para nomes e booleanos para seu status de graduação:
//
//let hasGraduated = [
//    "Eric": false,
//    "Maeve": true,
//    "Otis": false,
//]
//Ou podemos rastrear anos em que as Olimpíadas ocorreram junto com seus locais:
//
//let olympics = [
//    2012: "London",
//    2016: "Rio de Janeiro",
//    2021: "Tokyo"
//]
//
//print(olympics[2012, default: "Unknown"])
//Você também pode criar um dicionário vazio usando os tipos explícitos que deseja armazenar e definir as chaves uma a uma:
//
//var heights = [String: Int]()
//heights["Yao Ming"] = 229
//heights["Shaquille O'Neal"] = 216
//heights["LeBron James"] = 206
//Observe como precisamos escrever [String: Int]agora, para significar um dicionário com strings para suas chaves e inteiros para seus valores.
//
//Como cada item do dicionário deve existir em uma chave específica, os dicionários não permitem a existência de chaves duplicadas. Em vez disso, se você definir um valor para uma chave que já existe, o Swift substituirá o valor anterior.
//
//Por exemplo, se você estiver conversando com um amigo sobre super-heróis e supervilões, você pode armazená-los em um dicionário como este:
//
//var archEnemies = [String: String]()
//archEnemies["Batman"] = "The Joker"
//archEnemies["Superman"] = "Lex Luthor"
//Se o seu amigo discorda que o Coringa é o arqui-inimigo do Batman, você pode simplesmente reescrever esse valor usando a mesma chave:
//
//archEnemies["Batman"] = "Penguin"
//Por fim, assim como os arrays e os outros tipos de dados que vimos até agora, os dicionários vêm com algumas funcionalidades úteis que você desejará usar no futuro – counte removeAll()ambos existem para dicionários e funcionam exatamente como para arrays.

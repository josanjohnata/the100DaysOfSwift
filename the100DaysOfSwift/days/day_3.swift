//
//  day_3.swift
//  day-1
//
//  Created by Jon on 25/03/22.
//

import Foundation

// ------------------------Tipos de dados complexos, parte 1--------------------------

// É extremamente comum querer ter muitos dados em um único lugar, sejam os dias da semana, uma lista de alunos de uma turma, a população de uma cidade nos últimos 100 anos, ou qualquer um dos inúmeros outros exemplos.

// No Swift, fazemos esse agrupamento usando um array . Arrays são seus próprios tipos de dados como String, Int e Double, mas em vez de conter apenas uma string, eles podem conter zero strings, uma string, duas strings, três, cinquenta, cinquenta milhões ou até mais strings - eles podem se adaptar automaticamente para armazenar como quantos você precisar, e sempre mantenha os dados na ordem em que você os adiciona.

// Vamos começar com alguns exemplos simples de criação de arrays:

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// Para visualizar os itens de um array, pegamos ele pelo índice começando com o 0(zero) na primeira posição.
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

// Isso é segurança de tipo, assim como o Swift não nos permite misturar inteiros e decimais, exceto que é levado a um nível mais profundo. Sim, todos beat lese numbers ambos são arrays, mas são tipos especializados de arrays: um é um array de strings e o outro é um array de inteiros.

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
//Primeiro, você pode usar .count para ler quantos itens estão em uma matriz, assim como fez com as strings:
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
//Por fim, assim como os arrays e os outros tipos de dados que vimos até agora, os dicionários vêm com algumas funcionalidades úteis que você desejará usar no futuro – count e removeAll()ambos existem para dicionários e funcionam exatamente como para arrays.

// ------------Como usar conjuntos para pesquisa rápida de dados------------------

// Até agora você aprendeu sobre duas formas de coletar dados em Swift: arrays e dicionários. Existe uma terceira maneira muito comum de agrupar dados, chamada de conjunto – eles são semelhantes aos arrays, exceto que você não pode adicionar itens duplicados e eles não armazenam seus itens em uma ordem específica.

// Criar um conjunto funciona como criar um array: diga ao Swift que tipo de dados ele armazenará, então vá em frente e adicione coisas. Existem duas diferenças importantes, porém, e elas são melhor demonstradas usando algum código.

// Primeiro, veja como você faria um conjunto de nomes de atores:

// let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

//Observe como isso realmente cria um array primeiro e depois coloca esse array no conjunto? Isso é intencional e é a maneira padrão de criar um conjunto a partir de dados fixos. Lembre-se, o conjunto removerá automaticamente quaisquer valores duplicados e não lembrará a ordem exata que foi usada na matriz.
//
//Se você está curioso para saber como o conjunto ordenou os dados, tente imprimi-lo:
//
//print(people)

//Você pode ver os nomes na ordem original, mas também pode obter uma ordem completamente diferente – o conjunto simplesmente não se importa com a ordem em que seus itens vêm.
//
//A segunda diferença importante ao adicionar itens a um conjunto é visível quando você adiciona itens individualmente. Aqui está o código:
//
//var people = Set<String>()
//people.insert("Denzel Washington")
//people.insert("Tom Cruise")
//people.insert("Nicolas Cage")
//people.insert("Samuel L Jackson")
//Observe como estamos usando insert()? Quando tínhamos um array de strings, adicionamos itens chamando append(), mas esse nome não faz sentido aqui – não estamos adicionando um item ao final do conjunto, porque o conjunto armazenará os itens na ordem que desejar .
//
//Agora, você pode pensar que os conjuntos soam como matrizes simplificadas – afinal, se você não pode ter duplicatas e perde a ordem de seus itens, por que não usar apenas matrizes? Bem, ambas as restrições realmente se transformam em uma vantagem.
//
//Primeiro, não armazenar duplicatas às vezes é exatamente o que você deseja. Há uma razão pela qual escolhi atores no exemplo anterior: o Screen Actors Guild exige que todos os seus membros tenham um nome artístico único para evitar confusão, o que significa que duplicatas nunca devem ser permitidas. Por exemplo, o ator Michael Keaton (Homem-Aranha De Volta ao Lar, Toy Story 3, Batman e mais) na verdade se chama Michael Douglas, mas porque já havia um Michael Douglas na guilda (Avengers, Falling Down, Romancing the Stone e mais), ele tinha que ter um nome único.
//
//Em segundo lugar, em vez de armazenar seus itens na ordem exata que você especifica, os conjuntos armazenam-nos em uma ordem altamente otimizada que torna muito rápida a localização de itens. E a diferença não é pequena: se você tiver uma matriz de 1000 nomes de filmes e usar algo como contains()verificar se contém “O Cavaleiro das Trevas”, Swift precisa passar por todos os itens até encontrar um que corresponda – isso pode significar verificar todos 1000 nomes de filmes antes de retornar false, porque O Cavaleiro das Trevas não estava na matriz.
//
//Em comparação, chamar contains()um set é tão rápido que você lutaria para medi-lo de forma significativa. Caramba, mesmo se você tivesse um milhão de itens no conjunto, ou mesmo 10 milhões de itens, ele ainda seria executado instantaneamente, enquanto um array pode levar minutos ou mais para fazer o mesmo trabalho.
//
//Na maioria das vezes, você se verá usando arrays em vez de conjuntos, mas às vezes – apenas às vezes – você descobrirá que um conjunto é exatamente a escolha certa para resolver um problema específico, e fará com que o código lento seja executado em pouco tempo em absoluto.
//
//Dica: Ao lado contains()de , você também encontrará count para ler o número de itens em um conjunto e sorted()retornar uma matriz classificada contendo os itens do conjunto.

//------------------------Como criar e usar enums--------------------------
//Um enum – abreviação de enumeration – é um conjunto de valores nomeados que podemos criar e usar em nosso código. Eles não têm nenhum significado especial para o Swift, mas são mais eficientes e seguros, então você os usará muito em seu código.
//
//Para demonstrar o problema, digamos que você queira escrever algum código para permitir que o usuário selecione um dia da semana. Você pode começar assim:
//
//var selected = "Monday"
//Mais tarde, no seu código, você o altera, assim:
//
//selected = "Tuesday"
//Isso pode funcionar bem em programas muito simples, mas dê uma olhada neste código:
//
//selected = "January"
//Ops! Você digitou acidentalmente um mês em vez de um dia – o que seu código fará? Bem, você pode ter a sorte de ter um colega detectando o erro enquanto revisa seu código, mas que tal isso:
//
//selected = "Friday "
//Que tem espaço no final de sexta-feira, e “sexta-feira” com espaço é diferente de “sexta-feira” sem espaço aos olhos de Swift. Novamente, o que seu código faria?
//
//Usar strings para esse tipo de coisa requer uma programação muito cuidadosa, mas também é bastante ineficiente – realmente precisamos armazenar todas as letras de “Friday” para rastrear um único dia?
//
//É aqui que entram os enums: eles nos permitem definir um novo tipo de dados com um punhado de valores específicos que ele pode ter. Pense em um booleano, que só pode ter true ou false – você não pode configurá-lo para “talvez” ou “provavelmente”, porque isso não está no intervalo de valores que ele entende. Enums são os mesmos: podemos listar antecipadamente o intervalo de valores que ele pode ter, e o Swift garantirá que você nunca cometa um erro ao usá-los.
//
//Então, poderíamos reescrever nossos dias da semana em um novo enum assim:
//
//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}
//Isso chama o novo enum Weekdays fornece cinco casos para lidar com os cinco dias da semana.
//
//Agora, em vez de usar strings, usaríamos o enum. Tente isso em seu playground:
//
//var day = Weekday.monday
//day = Weekday.tuesday
//day = Weekday.friday
//Com essa alteração você não pode acidentalmente usar “Friday” com um espaço extra ali, ou colocar um nome de mês – você deve sempre escolher um dos dias possíveis listados na enumeração. Você verá até o Swift oferecer todas as opções possíveis quando digitar Weekday., porque sabe que você selecionará um dos casos.
//
//Swift faz duas coisas que tornam as enumerações um pouco mais fáceis de usar. Primeiro, quando você tem muitos casos em uma enumeração, você pode escrever apenas case uma vez e, em seguida, separar cada caso com uma vírgula:
//
//enum Weekday {
//    case monday, tuesday, wednesday, thursday, friday
//}
//Em segundo lugar, lembre-se de que uma vez que você atribui um valor a uma variável ou constante, seu tipo de dados se torna fixo – você não pode definir uma variável para uma string primeiro e depois para um inteiro. Bem, para enums, isso significa que você pode pular o nome do enum após a primeira atribuição, assim:
//
//var day = Weekday.monday
//day = .tuesday
//day = .friday
//Swift sabe que .tuesday deve se referir Weekday.tuesday porque day sempre deve ser algum tipo de Weekday.
//
//Embora não seja visível aqui, um grande benefício dos enums é que o Swift os armazena de forma otimizada – quando dizemos que o Weekday.mondaySwift provavelmente armazenará isso usando um único inteiro como 0, que é muito mais eficiente para armazenar e verificar do que as letras M, o, n, d, a, y.



//
//  day_4.swift
//  day-1

////  Created by Jon on 28/03/22.


import Foundation

//Swift é capaz de descobrir que tipo de dados uma constante ou variável contém com base no que atribuímos a ela. No entanto, às vezes não queremos atribuir um valor imediatamente, ou às vezes queremos substituir a escolha de tipo da Swift, e é aí que entram as anotações de tipo.

//Até agora, temos feito constantes e variáveis como esta:

//let surname = "Lasso"
//var score = 0
//This uses type inference: Swift infers that surname is a string because we’re assigning text to it, and then infers that score is an integer because we’re assigning a whole number to it.

//As anotações de tipo nos permitem ser explícitos sobre quais tipos de dados queremos e se parecem com isso:

//let surname: String = "Lasso"
//var score: Int = 0
//Now we’re being explicit: surname must be a string, and score must be an integer. That’s exactly what Swift’s type inference would have done anyway, but sometimes it isn’t – sometimes you will want to choose a different type.

//For example, maybe score is a decimal because the user can get half points, so you’d write this:

//var score: Double = 0
//Without the : Double part Swift would infer that to be an integer, but we’re overriding that and saying it’s definitely a decimal number.

//Analisamos alguns tipos de dados até agora, e é importante que você saiba seus nomes para que possa usar a anotação de tipo correta quando necessário.

//Stringcontém texto:

//let playerName: String = "Roy"
//Intcontém números inteiros:

//var luckyNumber: Int = 13
//Doublecontém números decimais:

//let pi: Double = 3.141
//Boolé verdadeiro ou falso:

//var isAuthenticated: Bool = true
//Arraycontém muitos valores diferentes, tudo na ordem em que você os adiciona. Isso deve ser especializado, como [String]:

//var albums: [String] = ["Red", "Fearless"]
//Dictionarycontém muitos valores diferentes, onde você decide como os dados devem ser acessados. Isso deve ser especializado, como [String: Int]:

//var user: [String: String] = ["id": "@twostraws"]
//Setcontém muitos valores diferentes, mas os armazena em uma ordem otimizada para verificar o que ele contém. Isso deve ser especializado, como Set<String>:

//var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
//Conhecer todos esses tipos é importante para momentos em que você não deseja fornecer valores iniciais. Por exemplo, isso cria uma matriz de strings:

//var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
//A anotação de tipo não é necessária lá, porque a Swift pode ver que você está atribuindo uma matriz de strings. No entanto, se você quisesse criar uma matriz vazia de strings, precisaria saber o tipo:

//var teams: [String] = [String]()
//Again, the type annotation isn’t required, but you still need to know that an array of strings is written as [String] so that you can make the thing. Remember, you need to add the open and close parentheses when making empty arrays, dictionaries, and sets, because it’s where Swift allows us to customize the way they are created.

//Algumas pessoas preferem usar anotação de tipo e, em seguida, atribuir uma matriz vazia a ela assim:

//var cities: [String] = []
//Eu prefiro usar a inferência de tipo o máximo possível, então eu escreveria isso:
//
//var clues = [String]()
//Além de tudo isso, existem enums. As enums são um pouco diferentes das outras porque nos permitem criar novos tipos próprios, como uma enum contendo dias da semana, uma enum contendo qual tema de interface do usuário o usuário deseja ou até mesmo uma enum contendo qual tela está sendo exibida atualmente em nosso aplicativo.

//Os valores de uma enum têm o mesmo tipo que a própria enum, então poderíamos escrever algo assim:

//enum UIStyle {
//    case light, dark, system
//}

//var style = UIStyle.light
//This is what allows Swift to remove the enum name for future assignments, so we can write style = .dark – it knows any new value for style must be some kind UIStyle

//Now, there’s a very good chance you’ll be asking when you should use type annotations, so it might be helpful for you to know that I prefer to use type inference as much as possible, meaning that I assign a value to a constant or variable and Swift chooses the correct type automatically. Sometimes this means using something like var score = 0.0 so that I get a Double.

//A exceção mais comum a isso é com constantes para as quais ainda não tenho valor. Veja, a Swift é muito inteligente: você pode criar uma constante que ainda não tem um valor, mais tarde fornecer esse valor, e a Swift garantirá que não a usemos acidentalmente até que um valor esteja presente. Isso também garantirá que você só defina o valor uma vez, para que ele permaneça constante.

//Por exemplo:

//let username: String
// lots of complex logic
//username = "@twostraws"
// lots more complex logic
//print(username)
//That code is legal: we’re saying username will contain a string at some point, and we provide a value before using it. If the assignment line – username = "@twostraws" – was missing, then Swift would refuse to build our code because username wouldn’t have a value, and similarly if we tried to set a value to username a second time Swift would also complain.

//This kind of code requires a type annotation, because without an initial value being assigned Swift doesn’t know what kind of data username will contain.

//Regardless of whether you use type inference or type annotation, there is one golden rule: Swift must at all times know what data types your constants and variables contain. This is at the core of being a type-safe language, and stops us doing nonsense things like 5 + true or similar.

//Importante: Embora a anotação de tipo possa nos permitir substituir a inferência de tipo da Swift até certo ponto, nosso código final ainda deve ser possível. Por exemplo, isso não é permitido:

//let score: Int = "Zero"
//A Swift simplesmente não pode converter "Zero" em um inteiro para nós, mesmo com uma anotação de tipo solicitando, então o código simplesmente não será construído.

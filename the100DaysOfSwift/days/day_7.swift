//----------Como reutilizar código com funções----------

// Quando você escreve algum código que realmente gosta e deseja usar repetidamente, considere colocá-lo em uma função . As funções são apenas pedaços de código que você separou do resto do seu programa e recebeu um nome para que você possa consultá-las facilmente.

// Por exemplo, digamos que tivéssemos este código simples e agradável:

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

// Essa é uma mensagem de boas-vindas para um aplicativo e você pode querer que ela seja impressa quando o aplicativo for iniciado ou talvez quando o usuário pedir ajuda.

// Mas e se você quisesse que fosse em ambos os lugares? Sim, você poderia simplesmente copiar essas quatro linhas print() e colocá-las em ambos os lugares, mas e se você quisesse esse texto em dez lugares? Ou se você quisesse alterar o texto mais tarde - você realmente se lembraria de alterá-lo em todos os lugares em que aparecesse em seu código?

// É aqui que entram as funções: podemos extrair esse código, dar-lhe um nome e executá-lo quando e onde precisarmos. Isso significa que todas as linhas print() ficam em um lugar e são reutilizadas em outro lugar.

// Veja como isso se parece:

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// Vamos quebrar isso…

// 1 - Ele começa com a palavra-chave func, que marca o início de uma função.
// 2 - Estamos nomeando a função showWelcome. Pode ser qualquer nome que você quiser, mas tente torná-lo memorável –  printInstructions(), displayHelp(), etc são boas escolhas.
// 3 - O corpo da função está contido nas chaves de abertura e fechamento, assim como o corpo dos loops e o corpo das condições.

// Há uma coisa extra lá, e você pode reconhecê-la do nosso trabalho até agora: o ()logo após o showWelcome. Nós nos encontramos pela primeira vez quando olhamos para as cordas, quando eu disse que countnão tem ()depois, mas uppercased()tem.

// Bem, agora você está aprendendo o porquê: eles ()são usados ​​com funções. Eles são usados ​​quando você cria a função, como você pode ver acima, mas também quando você chama a função – quando você pede ao Swift para executar seu código. No nosso caso, podemos chamar nossa função assim:

showWelcome()

// Isso é conhecido como site de chamada da função , que é um nome chique que significa "um lugar onde uma função é chamada".

// Então, o que os parênteses realmente fazem ? Bem, é aí que adicionamos opções de configuração para nossas funções – passamos dados que personalizam a maneira como a função funciona, para que a função se torne mais flexível.

// Como exemplo, já usamos código como este:

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

// isMultiple(of:)é uma função que pertence a inteiros. Se não permitisse qualquer tipo de customização, simplesmente não faria sentido – é um múltiplo de quê ? Claro, a Apple poderia ter feito isso ser algo assim isOdd()ou isEven()nunca precisou ter opções de configuração, mas ao poder escrever de (of: 2)repente a função se torna mais poderosa, porque agora podemos verificar múltiplos de 2, 3, 4, 5, 50 , ou qualquer outro número.

// Da mesma forma, quando estávamos jogando dados virtuais anteriormente, usamos um código como este:

let roll = Int.random(in: 1...20)

// Novamente, random() é uma função, e as opções (in: 1...20) de configuração das marcas de peça – sem isso, não teríamos controle sobre o intervalo de nossos números aleatórios, o que seria significativamente menos útil.

// Podemos fazer nossas próprias funções que estão abertas à configuração, tudo colocando código extra entre os parênteses quando criamos nossa função. Isso deve receber um único inteiro, como 8, e calcular as tabelas de multiplicação para isso de 1 a 12.

// Aqui está isso no código:

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// Observe como eu coloquei number: Int dentro dos parênteses? Isso é chamado de parâmetro e é nosso ponto de personalização. Estamos dizendo que quem chamar esta função deve passar um número inteiro aqui, e o Swift irá aplicá-lo. Dentro da função, number está disponível para uso como qualquer outra constante, então aparece dentro da chamada print().

// Como você pode ver, quando printTimesTable() é chamado, precisamos escrever explicitamente number: 5 – precisamos escrever o nome do parâmetro como parte da chamada da função. Isso não é comum em outras linguagens, mas acho que é muito útil no Swift como um lembrete do que cada parâmetro faz.

// Essa nomenclatura de parâmetros se torna ainda mais importante quando você tem vários parâmetros. Por exemplo, se quisermos personalizar a altura de nossas tabuadas, podemos definir o final do nosso intervalo usando um segundo parâmetro, como este:

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// Agora isso leva dois parâmetros: um inteiro chamado number, e um ponto final chamado end. Ambos precisam ser nomeados especificamente quando printTablesTable()executados, e espero que você possa ver agora por que eles são importantes - imagine se nosso código fosse este:

printTimesTables(5, 20)

// Você consegue se lembrar qual número era qual? Pode ser. Mas você se lembraria daqui a seis meses? Provavelmente não.

// Agora, tecnicamente, damos nomes ligeiramente diferentes para enviar dados e receber dados, e embora muitas pessoas (inclusive eu) ignorem essa distinção, vou pelo menos conscientizá-lo para que você não seja pego de surpresa mais tarde.

// Dê uma olhada neste código:

func printTimesTables(number: Int, end: Int) {}

// Existem ambos number e end são parâmetros: eles são nomes de espaços reservados que serão preenchidos com valores quando a função for chamada, para que tenhamos um nome para esses valores dentro da função.

// Agora veja este código:

printTimesTables(number: 5, end: 20)

// Lá, o 5 e o 20 são argumentos : eles são os valores reais que são enviados para a função para trabalhar, usados ​​para preencher number e end.

// Portanto, temos parâmetros e argumentos : um é um espaço reservado o outro é um valor real , portanto, se você esquecer qual é o que apenas lembre-se de Parâmetro/Espaço reservado, Argumento/Valor real.

// Essa distinção de nome importa? Na verdade não: eu uso “parâmetro” para ambos, e conheço outras pessoas que usam “argumento” para ambos e, honestamente, nunca em minha carreira isso causou o menor problema. Na verdade, como você verá em breve no Swift, a distinção é muito confusa , então não vale a pena pensar nisso.

// Importante: se você preferir usar “argumento” para os dados transmitidos e “parâmetro” para os dados recebidos, isso é com você, mas eu realmente uso “parâmetro” para ambos, e farei isso ao longo deste livro e além .

// Independentemente de você estar chamando-os de “argumentos” ou “parâmetros”, quando você pede ao Swift para chamar a função você deve sempre passar os parâmetros na ordem em que foram listados quando você criou a função.

// Então, para este código:

func printTimesTables(number: Int, end: Int) {}

// Este não é um código válido, porque coloca end antes de number:

printTimesTables(end: 20, number: 5)

// Dica: Todos os dados que você cria dentro de uma função são destruídos automaticamente quando a função é concluída.
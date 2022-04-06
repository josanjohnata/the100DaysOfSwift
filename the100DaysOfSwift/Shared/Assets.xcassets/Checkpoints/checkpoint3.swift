// Agora que você pode usar condições e loops, gostaria que tentasse um problema clássico de ciência da computação. Não é difícil de entender, mas pode demorar um pouco para você resolver dependendo da sua experiência anterior!

// O problema é chamado fizz buzz e tem sido usado em entrevistas de emprego, testes de admissão em universidades e muito mais desde que me lembro. Seu objetivo é fazer um loop de 1 a 100 e, para cada número:

// Se for múltiplo de 3, imprima “Fizz”
// Se for múltiplo de 5, imprima “Buzz”
// Se for um múltiplo de 3 e 5, imprima “FizzBuzz”
// Caso contrário, basta imprimir o número.
// Então, aqui estão alguns valores de exemplo que você deve ter quando seu código for executado:

// 1 deve imprimir “1”
// 2 deve imprimir “2”
// 3 deve imprimir “Fizz”
// 4 deve imprimir “4”
// 5 deve imprimir “Buzz”
// 6 deve imprimir “Fizz”
// 7 deve imprimir “7”
// …
// 15 deve imprimir “FizzBuzz”
// …
// 100 deve imprimir “Buzz”
// Antes de começar: Este problema parece extremamente simples, mas muitos desenvolvedores lutam para resolvê-lo. Eu já vi isso acontecer pessoalmente, então não se estresse com isso – apenas tentar resolver o problema já te ensina sobre isso.

// Você já sabe tudo o que precisa para resolver esse problema, mas se quiser algumas dicas, adicionarei algumas abaixo.

// Por favor, vá em frente e tente construir o playground agora.

// Ainda aqui? Bom, aqui vão algumas dicas:

// Você pode verificar se um número é múltiplo de outro usando .isMultiple(of:). Por exemplo, i.isMultiple(of: 3).
// Nesse caso, você precisa verificar primeiro 3 e 5 porque é o mais específico, depois 3, depois 5 e, finalmente, tem um elsebloco para lidar com todos os outros números.
// Você pode usar &&para verificar números que são múltiplos de 3 e 5 ou ter uma ifinstrução aninhada.
// Você precisa contar de 1 a 100, então use ...em vez de ..<.

for i in 1...100{
    if i.isMultiple(of:3) && i.isMultiple(of:5){
        print("FizzBuzz")
    } else if i.isMultiple(of:3){
        print("Fizz")
    } else if i.isMultiple(of:5){
        print("Buzz")
    } else {
        print(i)
    }
}

// ou

for j in 1...100{
    if j % 3 == 0 && j % 5 == 0{
        print("FizzBuzz")
    } else if j % 3 == 0{
        print("Fizz")
    } else if j % 5 == 0{
        print("Buzz")
    } else {
        print(j)
    }
}
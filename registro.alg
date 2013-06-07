algoritmo "semnome"
// Função : Trabalhando com Regostros
// Autor : Ronaldo Matos Rodrigues
// Data : 7/6/2013
// Aprendendo

tipo
  produto = registro
    cod:    inteiro
    nome:   caractere
    valor : real
    qtd :   inteiro
  fim_registro

var

prod: vetor[1..3] de produto

inicio

// Atribuindo valores no registro
// Exemplo

// indice 1
prod[1].cod   <- 111
prod[1].nome  <- "Teclado"
prod[1].valor <- "50.00"
prod[1].qtd   <- 100

// indice 2
prod[2].cod   <- 222
prod[2].nome  <- "Mouse"
prod[2].valor <- "20.00"
prod[2].qtd   <- 200

// indice 3
prod[3].cod   <- 333
prod[3].nome  <- "Monitor"
prod[3].valor <- "30.00"
prod[3].qtd   <- 300


//==== IMPRIMINDO VALORES NA TELA ====\\

// Exibindo valores do indice 1
escreval("Código do produto: ", prod[1].cod)
escreval("Nome do produto: ", prod[1].nome)
escreval("Valor do produto: ", prod[1].valor)
escreval("Quantidade do produto: ", prod[3].qtd)

// ========== Será mostrado na tela as seguintes informações ========== \\
//
// Código do produto: 111
// Nome do produto: Teclado
// Valor do produto: 50.00
// Quantidade do produto: 100
//
// ========== FIM ==========\\






fimalgoritmo

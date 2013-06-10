algoritmo "semnome"
// Função :
// Autor :
// Data : 8/6/2013
// Seção de Declarações 
var

funcionario : vetor[1..3, 1..4] de caractere
i, op: inteiro


inicio
escreval("")
escreval("  ===== CADASTRO DE FUNCIONARIOS =====  ")
escreval("")
para i de 1 ate 3 faca
  escreva("Informe o nome do funcionario ", i, " : ")
  leia(funcionario[i, 1])
  
  escreva("Informe o nome da Mãe do funcionario ", i, " : ")
  leia(funcionario[i, 2])

  escreva("Informe o nome do Pai do funcionario ", i, " : ")
  leia(funcionario[i, 3])
  
  escreva("Informe o sexo do funcionairo M/F", i, " : ")
  leia(funcionario[i, 4])
  
  repita
     escreva("Caractere inválido, só é aceito M ou F: ")
     leia(funcionario[i, 4])
  ate(funcionario[i, 4] = "M") ou (funcionario[i, 4] = "m") ou (funcionario[i, 4] = "F") ou (funcionario[i, 4] = "f")

  escreval("")
fimpara

limpatela

escreval("")
escreval("  ===== LISTA DE FUNCIONAIROS CADSTRADOS  =====  ")
escreval("")

para i de 1 ate 3 faca
  escreval("[",i,"] - ", funcionario[i, 1])
fimpara

escreval("")
escreva ("Selecione o numero do funcionario para mais detalhes: ")
leia(op)

repita
  escreva ("Numero inválido, tente novamente: ")
  leia(op)
ate (op < 4)


limpatela

escreval("")
escreval("  ===== Dados do Funcionario: ", funcionario[op, 1], " =====  ")
escreval("")

escreval("Nome do Funcionario: ", funcionario[op, 1])
escreval("Nome da Mae: ", funcionario[op, 2])
escreval("Nome do Pai: ", funcionario[op, 3])

se (funcionario[op, 4] = "m") ou (funcionario[op, 4] = "M")  entao
   escreval("Sexo: Masculino")
fimse

se (funcionario[op, 4] = "f") ou (funcionario[op, 4] = "F")  entao
   escreval("Sexo: Feminino")
fimse



escreval("")
escreval("=======================================")


fimalgoritmo

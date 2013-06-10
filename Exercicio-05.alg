algoritmo "exercicio5"
// Função :Escrever um algoritmo que leia o nome e o sexo de 56 pessoas e informe o nome e se ela é homem ou mulher. No
//final informe total de homens e de mulheres.
// Autor : Ronaldo Matos Rodrigues
// Data : 10/6/2013
// Seção de Declarações 
var
pessoa : vetor[1..5, 1..2] de caractere
i, sexoM, sexoF : inteiro

inicio
sexoM <- 0
sexoF <- 0

para i de 1 ate 5 faca
  escreva("Escreva o nome da pessoa ", i, " : ")
  leia(pessoa[i, 1])
  
  escreva("Escreva o Sexo da pessoa ", i, " (M/F): ")
  leia(pessoa[i, 2])
  
  se (pessoa[i, 2] = "M") ou (pessoa[i, 2] = "m") entao
     sexoM <- sexoM + 1
  fimse
  
  se (pessoa[i, 2] = "F") ou (pessoa[i, 2] = "f") entao
     sexoF <- sexoF + 1
  fimse
  
  escreval("")
fimpara

limpatela

escreval("")

escreval("Total de mulheres: ", sexoF)
escreval("Total de Homens: ", sexoM)



fimalgoritmo

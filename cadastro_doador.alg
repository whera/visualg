algoritmo "semnome"
// Função :
// Autor :
// Data : 11/6/2013
// Seção de Declarações 
var
doador : vetor[1..100, 1..5] de caractere
id : inteiro
sair : caractere
temp: caractere

// PROCEDIMENTO MENU
procedimento exibeMenu
  var
    opMenu : inteiro
  inicio
    opMenu <- 0
    
    escreval("==================================================================================")
    escreval("================================  MENU PRINCIPAL  ================================")
    escreval("==================================================================================")
    escreval("")
    
    escreval("  [1] - Cadastrar novo doador no sistema")
    escreval("  [2] - Exibir todos os doadores cadastrados")
    escreval("  [3] - Exibir doadores com idade entre 18 e 55 anos com tipo sanguíneo 'A-'")
    escreval("  [4] - Sair do sistema")
    
    escreval("")
    escreval("Doadores cadastrados: ", id)
    escreval("==================================================================================")
    escreval("")
    repita
      escreva("Selecione uma das opções: ")
      leia(opMenu)
    ate(opMenu <= 4)
    
    se(opMenu = 1)entao
      limpatela
      cadastrar
      limpatela
      exibeMenu
    fimse
    
    se(opMenu = 2)entao
     limpatela
     exibeCadastrados
    fimse
    
    se(opMenu = 3)entao
      limpatela
      Escreva_Dados_Paciente
    fimse
    
    se(opMenu = 4)entao
      opMenu <- 0
      limpatela
      escreval("")
      escreva("Deseja mesmo sair do sistema? (S/N): ")
      leia(sair)
      se(sair = "N") entao
        limpatela
        exibeMenu
      fimse
      se(sair = "S") entao
        limpatela

      fimse
    fimse
    
    
fimprocedimento

//Procedimento responsável por exibir o formulário de cadastro
procedimento cadastrar
  var
  
  inicio
    id <- id + 1
    escreval("")
    escreval("==================================================================================")
    escreval("============================  FORMULÁRIO DE CADASTRO  ============================")
    escreval("==================================================================================")
    escreval("")
    escreval("ID: ", id)
    repita
      escreva("Nome: ")
      leia(doador[id, 1])
    ate(doador[id, 1] <> "")
    
    repita
      escreva("Idade: ")
      leia(doador[id, 2])
    ate(doador[id, 2] <> "")
    
    repita
      escreva("Tipo sanguíneo: ") // O, A, B, AB
      leia(doador[id, 3])
    ate(doador[id, 3] = "O") ou (doador[id, 3] = "A") ou (doador[id, 3] = "B") ou (doador[id, 3] = "AB")
    
    repita
      escreva("Fator RH: ")
      leia(doador[id, 4])
    ate(doador[id, 4] = "+") ou (doador[id, 4] = "-")
    
    escreva("Data da última doação: ")
    leia(doador[id, 5])
    
  

fimprocedimento

//PROCEDUMENTO RESPONSÁVEL POR EXIBIR TODOS OS CADASTRADOS.
procedimento exibeCadastrados
  var
  i_cadastrados: inteiro
  
  inicio
    escreval("")
    escreval("==================================================================================")
    escreval("============================   LISTA DE CADASTRADOS   ============================")
    escreval("==================================================================================")
    escreval("")
    
    para i_cadastrados de 1 ate 100 faca
      se(doador[i_cadastrados, 1] <> "") entao
        escreval("  ",i_cadastrados, " - ", doador[i_cadastrados, 1])
      fimse
    fimpara
    
    escreval("==================================================================================")
    escreval("")
    escreva("Clique na tecla [ENTER] para voltar ao menu : ")
    leia(temp)
    limpatela
    ExibeMenu
  
  
fimprocedimento

//Exibir doadores com idade entre 18 e 55 anos com tipo sanguíneo 'A-'
procedimento Escreva_Dados_Paciente
  var
    p :inteiro
  inicio
  escreval("")
  escreval("==================================================================================")
  escreval("============================   LISTA DE CADASTRADOS   ============================")
  escreval("==================================================================================")
  escreval("=========  Doadores com idade entre 18 e 55 anos com tipo sanguíneo 'A-' =========")
  escreval("==================================================================================")
  escreval("")
  para p de 1 ate 100 faca
     se(doador[p, 1] <> "") entao
        se (caracpnum(doador[p, 2]) >= 18) e (caracpnum(doador[p, 2]) <= 55) e (doador[p, 3] = "A") e (doador[p, 4] = "-") entao
           escreval(p, " - ", doador[p, 1])
        fimse
     fimse
  fimpara
  escreval("")
  escreval("==================================================================================")
  escreval("")
  escreva("Clique na tecla [ENTER] para voltar ao menu : ")
  leia(temp)
  limpatela
  ExibeMenu
fimprocedimento


inicio
  id <- 0 // Atibuimos o valor ZERO no variavel ID
  
  exibeMenu // Chamamos o procedimento responsável por exibir o menu
fimalgoritmo

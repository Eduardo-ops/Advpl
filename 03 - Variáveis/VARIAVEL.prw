#Include "Protheus.ch"
#include 'Parmtype.ch'

/*

TIPO DE DADOS

NUMÉRICO: 3 / 21.000 / 0.4 / 200000
LÓGICO: .T. / .F.
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {"VALO1","VALOR2","VALOR3"}
BLOCO DE CÓDIGO: { || VALOR := 1, MsAlert("Valor é igual a "+cValToChar(VALOR)) }

 */

user Function VARIAVEL()

// Variáveis que recebe valor numérico
Local nNum := 66

// Variáveis que recebe valor lógico
Local lLogic := .T.

// Variáveis que recebe valor do tipo caractere/string
Local cCarac := "Nome"

// Variáveis que recebe valor Date
Local dData := DATE()

// Variáveis que recebe valor do tipo Array
Local aArray := {"João","Maria","Jose"}

// Variáveis que recebe valores em bloco de código e também, técnica de concatenação
Local bBloco := { || nValor := 2, MsgAlert("O número é: ", + cValToChar(nValor)) }

/* 
    Função que retorna qualquer tipo de valor que ela recebe como parâmetro em string,um exemplo seria, 
    no processo de concatenação, onde usaremos para mostrar o valor de uma variável.
*/
cValToChar(xParametro)

Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cCarac))
Alert(dDAta)
Alert(aArray[1])
Eval(bBloco)

return

#Include "Protheus.ch"
#include 'Parmtype.ch'

/*

TIPO DE DADOS

NUM�RICO: 3 / 21.000 / 0.4 / 200000
L�GICO: .T. / .F.
CARACTERE: "D" / 'C'
DATA: DATE()
ARRAY: {"VALO1","VALOR2","VALOR3"}
BLOCO DE C�DIGO: { || VALOR := 1, MsAlert("Valor � igual a "+cValToChar(VALOR)) }

 */

user Function VARIAVEL()

// Vari�veis que recebe valor num�rico
Local nNum := 66

// Vari�veis que recebe valor l�gico
Local lLogic := .T.

// Vari�veis que recebe valor do tipo caractere/string
Local cCarac := "Nome"

// Vari�veis que recebe valor Date
Local dData := DATE()

// Vari�veis que recebe valor do tipo Array
Local aArray := {"Jo�o","Maria","Jose"}

// Vari�veis que recebe valores em bloco de c�digo e tamb�m, t�cnica de concatena��o
Local bBloco := { || nValor := 2, MsgAlert("O n�mero �: ", + cValToChar(nValor)) }

/* 
    Fun��o que retorna qualquer tipo de valor que ela recebe como par�metro em string,um exemplo seria, 
    no processo de concatena��o, onde usaremos para mostrar o valor de uma vari�vel.
*/
cValToChar(xParametro)

Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cCarac))
Alert(dDAta)
Alert(aArray[1])
Eval(bBloco)

return

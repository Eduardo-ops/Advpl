#Include "Protheus.ch"
#include 'Parmtype.ch'

/* 

TIPOS DE FUN��ES

FUNCTION()
USER FUNCTION()
STATIC FUNCTION()
MAIN FUNCTION()

 */

/* 
    Fun��es restritas ao desenvolvimento da �rea de intelig�ncia do Protheus, 
    uma function pode carregar at� 10 caracteres emn seu nome.
    Function s�o somente criadas pela totvs, s�o padr�o do sistema em si geral.
*/
 Function MATA001CLI()

    Alert("Teste")

 Return

 /*  
    Fun��es user function, s�o fun��es definidas pelo usu�rio(fun��es personalizadas), que n�o pertencem as fun��es padr�o do protheus, 
    podendo ser invocada por qualquer outra fun��o padr�o do protheus.
    As fun��o por padr�o vem sempre com dois caracteres de in�cio, s�o eles: U_, nesse caso, seguindo a regra de que 
    toda fun��o deve conter 10 caracteres, as user function sempre ser�o 8, somando com os dois obrigat�rios informados
    acima, totalizando 10.
 */
 user Function U_MATA001C()

     Alert("Teste")

 RETURN

 /* 
    Static function, s�o fun��es que s� podem ser invocadas por outras fun��es dentro de um mesmo arquivo de programa .prw
  */
Function MATA001C()

    CriaSX1("MATA001C")

return

static function CriaSX1(XPARAMETRO)

return

/* 
    Main Function s�o fun��es que tamb�m s�o restritas ao padr�o protheus, s�o utilizadas para tratamentos especiais
    no ERP.
 */
Main Function SIGAADV()
    alert("Teste")
return

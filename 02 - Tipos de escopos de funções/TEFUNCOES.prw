#Include "Protheus.ch"
#include 'Parmtype.ch'

/* 

TIPOS DE FUNÇÕES

FUNCTION()
USER FUNCTION()
STATIC FUNCTION()
MAIN FUNCTION()

 */

/* 
    Funções restritas ao desenvolvimento da área de inteligência do Protheus, 
    uma function pode carregar até 10 caracteres emn seu nome.
    Function são somente criadas pela totvs, são padrão do sistema em si geral.
*/
 Function MATA001CLI()

    Alert("Teste")

 Return

 /*  
    Funções user function, são funções definidas pelo usuário(funções personalizadas), que não pertencem as funções padrão do protheus, 
    podendo ser invocada por qualquer outra função padrão do protheus.
    As função por padrão vem sempre com dois caracteres de início, são eles: U_, nesse caso, seguindo a regra de que 
    toda função deve conter 10 caracteres, as user function sempre serão 8, somando com os dois obrigatórios informados
    acima, totalizando 10.
 */
 user Function U_MATA001C()

     Alert("Teste")

 RETURN

 /* 
    Static function, são funções que só podem ser invocadas por outras funções dentro de um mesmo arquivo de programa .prw
  */
Function MATA001C()

    CriaSX1("MATA001C")

return

static function CriaSX1(XPARAMETRO)

return

/* 
    Main Function são funções que também são restritas ao padrão protheus, são utilizadas para tratamentos especiais
    no ERP.
 */
Main Function SIGAADV()
    alert("Teste")
return

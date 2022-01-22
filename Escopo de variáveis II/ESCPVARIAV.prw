#Include "Protheus.ch"
#include 'Parmtype.ch'

// VARIÁVEL STATIC
Static cStat :=''

user function ESCPVARIAV()

    // VARIAVEIS LOCAIS
    Local nVar0 := 1
    Local nVar1 := 20

    // VARIAVEIS PRIVATE
    Private cPri := 'private'

    // VARIÁVEIS PUBLIC
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, @nVar1)

RETURN

// FUNÇÃO STATIC
Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nVAlor1 := 0

    // Alterando conteudo variável
    nValor2 := 10

    // Mostrar conteudo de variável private
    Alert("Private: " + cPri)

    // Alterar valor de variável public
    Alert("Publica: " + __cPublic)

    MsgAlert("Variavel Static: " + cStat)

RETURN

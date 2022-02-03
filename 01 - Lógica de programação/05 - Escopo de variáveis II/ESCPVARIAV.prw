#Include "Protheus.ch"
#include 'Parmtype.ch'

// VARI�VEL STATIC
Static cStat :=''

user function ESCPVARIAV()

    // VARIAVEIS LOCAIS
    Local nVar0 := 1
    Local nVar1 := 20

    // VARIAVEIS PRIVATE
    Private cPri := 'private'

    // VARI�VEIS PUBLIC
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, @nVar1)

RETURN

// FUN��O STATIC
Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nVAlor1 := 0

    // Alterando conteudo vari�vel
    nValor2 := 10

    // Mostrar conteudo de vari�vel private
    Alert("Private: " + cPri)

    // Alterar valor de vari�vel public
    Alert("Publica: " + __cPublic)

    MsgAlert("Variavel Static: " + cStat)

RETURN

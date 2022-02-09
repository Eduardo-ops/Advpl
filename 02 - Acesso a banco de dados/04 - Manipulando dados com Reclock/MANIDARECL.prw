#include 'protheus.ch'
#include 'parmtype.ch'

User Function MANIDARECL()

    Local aArea := SB1->(GetArea())

    DbSelectArea('SB1')
    SB1->(DbSetOrder(1))
    SB1->(DBGoTop())

    // Iniciando a transa��o
    Begin Transaction

    MsgInfo("Transa��o iniciada")
    MsgInfo("A descri��o do produto ser� alterada:", "Aten��o")

    IF SB1->(DBSEEK(FWxFilial('SB1') + '042'))
        RecLock('SB1', .F.) // Trava registro para altera��o
        Replace B1_DESC With "GRAMPEADOR TESTE ADVPL"
        SB1->(MsUnlock())
    ENDIF

    End Transaction
    RestArea(aArea)

RETURN

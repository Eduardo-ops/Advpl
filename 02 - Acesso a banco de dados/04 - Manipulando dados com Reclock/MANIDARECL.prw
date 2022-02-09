#include 'protheus.ch'
#include 'parmtype.ch'

User Function MANIDARECL()

    Local aArea := SB1->(GetArea())

    DbSelectArea('SB1')
    SB1->(DbSetOrder(1))
    SB1->(DBGoTop())

    // Iniciando a transação
    Begin Transaction

    MsgInfo("Transação iniciada")
    MsgInfo("A descrição do produto será alterada:", "Atenção")

    IF SB1->(DBSEEK(FWxFilial('SB1') + '042'))
        RecLock('SB1', .F.) // Trava registro para alteração
        Replace B1_DESC With "GRAMPEADOR TESTE ADVPL"
        SB1->(MsUnlock())
    ENDIF

    End Transaction
    RestArea(aArea)

RETURN

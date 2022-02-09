#include 'protheus.ch'
#include 'parmtype.ch'

/*
    Alterando um determinado campo de uma tabela do banco de dados.

    Begin transaction - Controle de transações, utilizado para iniciar transações que envolvam inclusões, alteração
                        e disarm.
    RecLock()         - Permite a inclusão ou alteralção de um registro de um aliado informado.
                        Caso seja configurado com o 2° parâmetro o valor de .T., o registro inserido permanece 
                        bloqueado em modo exclusivo para o processo que está realizando a inserção, até que a 
                        instruçáo MSunlock() seja chamada.
                        Caso seja configurado com o 2° parâmetro o valor de .F., tenta realizar um bloqueio do registro 
                        atualmente posicionado no alias especificado, para permitir realizar alterações nos campos 
                        deste registro.
    Replace           - Substitui todas as instâncias de uma cadeia de caracteres especificada por uma nova cadeia de 
                        caracteres, ou seja, troca um valor pelo outro informado na troca.
    MsUnlock          - Deve ser chamada para indicar o final da operação iniciado pelo RecLock() e internamente fazer 
                        a atualização dos valores atuais no registro da tabela. 
*/

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

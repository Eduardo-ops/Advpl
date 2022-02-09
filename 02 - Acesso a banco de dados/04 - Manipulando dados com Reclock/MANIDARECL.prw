#include 'protheus.ch'
#include 'parmtype.ch'

/*
    Alterando um determinado campo de uma tabela do banco de dados.

    Begin transaction - Controle de transa��es, utilizado para iniciar transa��es que envolvam inclus�es, altera��o
                        e disarm.
    RecLock()         - Permite a inclus�o ou alteral��o de um registro de um aliado informado.
                        Caso seja configurado com o 2� par�metro o valor de .T., o registro inserido permanece 
                        bloqueado em modo exclusivo para o processo que est� realizando a inser��o, at� que a 
                        instru��o MSunlock() seja chamada.
                        Caso seja configurado com o 2� par�metro o valor de .F., tenta realizar um bloqueio do registro 
                        atualmente posicionado no alias especificado, para permitir realizar altera��es nos campos 
                        deste registro.
    Replace           - Substitui todas as inst�ncias de uma cadeia de caracteres especificada por uma nova cadeia de 
                        caracteres, ou seja, troca um valor pelo outro informado na troca.
    MsUnlock          - Deve ser chamada para indicar o final da opera��o iniciado pelo RecLock() e internamente fazer 
                        a atualiza��o dos valores atuais no registro da tabela. 
*/

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

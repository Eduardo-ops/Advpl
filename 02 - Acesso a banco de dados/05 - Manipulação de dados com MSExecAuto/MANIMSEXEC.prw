#include 'protheus.ch'
#include 'parmtype.ch'

User Function MANIMSEXEC()

    Local aArea := GetArea()
    Local aDados:= {}
    Private lMSErroAuto := .F.

    // Adicionando dados no array para incluirmos na tabela SB1
    aDados := {;
                {"B1_COD", "043", NIL},;
                {"B1_DESC", "PRODUTO TESTE ADVPL", NIL},;
                {"B1_TIPO", "MP", NIL},;
                {"B1_UM","UN", NIL},;
                {"B1_LOCPAD", "01", NIL};
                }
    // Início de controle de transação
    Begin transaction
        //Chamando cadastro de produtos
        MSExecAuto({|x,y|MATA010(x,y)}, aDados,3)

        //Caso ocorra algum problema
        IF lMSErroAuto
            Alert("Ocorreram erros durante a operação")
            MostraErro()
            DisarmTransaction()
        ELSE
            msgInfo("Operação realizada com sucesso!!!")
        ENDIF

    End transaction

    RestArea(aArea)

RETURN 

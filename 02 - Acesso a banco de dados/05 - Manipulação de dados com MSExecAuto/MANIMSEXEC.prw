#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    C�digo que permite inclus�o de dados na tabela SB1, cadastro de clientes.

    MSExecAuto()  - Fazer manuten��o autom�tica (inclus�o, altera��o e exclus�o) das rotinas de manipula��o de dados 
                    do sistema, automatizando o processo de entrada de dados sem a necessidade de desenvolver rotinas 
                    especificas.
    Mostra Erro() - Esta fun��o mostra os erros gerados na execu��o dos processos autom�ticos.
*/

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
    // In�cio de controle de transa��o
    Begin transaction
        //Chamando cadastro de produtos
        MSExecAuto({|x,y|MATA010(x,y)}, aDados,3)

        //Caso ocorra algum problema
        IF lMSErroAuto
            Alert("Ocorreram erros durante a opera��o")
            MostraErro()
            DisarmTransaction()
        ELSE
            msgInfo("Opera��o realizada com sucesso!!!")
        ENDIF

    End transaction

    RestArea(aArea)

RETURN 

#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    Código que permite inclusão de dados na tabela SB1, cadastro de clientes.

    MSExecAuto()  - Fazer manutenção automática (inclusão, alteração e exclusão) das rotinas de manipulação de dados 
                    do sistema, automatizando o processo de entrada de dados sem a necessidade de desenvolver rotinas 
                    especificas.
    Mostra Erro() - Esta função mostra os erros gerados na execução dos processos automáticos.
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

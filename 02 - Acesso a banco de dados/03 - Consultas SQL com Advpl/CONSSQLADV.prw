#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'

/* 
        RetSQLName() - Retorna o nome físico da tabela, baseado em um alias, para que seja usado nas construições
        de SELECT FROM TABELA da query.
        TCQuery      - TcQuery é o comando em ADVPL que executa um SQL no banco de dados e retorna o resultado em 
        uma área de trabalho.
        EoF()        - Final de arquivo.
        DBSkip()     - 
*/

User Function CONSSQLADV()

        Local aArea := SB1->(GetArea())
        Local cQuery := ""
        Local aDados := {}
        Local nCount := 0

        // Realizando consulta no banco de dados
        cQuery := " SELECT "
        cQuery += " B1_COD AS CODIGO, "
        cQuery += " B1_DESC AS DESCRICAO "
        cQuery += " FROM "
        cQuery += " "+ RetSQLName("SB1")+ " SB1 "
        cQuery += " WHERE "
        cQuery += " B1_TIPO != 'MP' "

        //Executando a consulta acima
        TCQuery cQuery New Alias "TMP"

        // Enquanto a tabela temporária(TMP)não estiver fim
        WHILE ! TMP->(EoF())
            AADD(aDados, TMP->CODIGO)
            AADD(aDados, TMP->DESCRICAO)
            TMP->(DBSkip()) //Desloca 1 registro "para frente", respeitando seu valor default (1)
        ENDDO

        Alert(Len(aDados))

        For nCount := 1 To Len(aDados)
                MsgInfo(aDados[nCount])
        NEXT nCount

        TMP->(DBCloseArea())
        RestArea(aArea)

RETURN

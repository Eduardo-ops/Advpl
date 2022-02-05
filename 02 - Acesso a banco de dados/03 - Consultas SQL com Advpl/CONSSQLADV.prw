#include 'protheus.ch'
#include 'parmtype.ch'
#include 'TopConn.ch'

/* 
        EoF() - Final de arquivo
*/

User Function CONSSQLADV()

        Local aArea := SB1->(GetArea())
        Local cQuery := ""
        Local aDados := {}
        Local nCount := 0

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
            TMP->(DBSkip())
        ENDDO

        Alert(Len(aDados))

        For nCount := 1 To Len(aDados)
                MsgInfo(aDados[nCount])
        NEXT nCount

        TMP->(DBCloseArea())
        RestArea(aArea)

RETURN

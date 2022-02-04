#include 'protheus.ch'
#include 'parmtype.ch'

User Function CONSSQLADV()

        Local aArea := SB1->(GetArea())
        Local cQuery := ""
        Local aDados := {}

        cQuery := "SELECT"
        cQuery += "B1_COD AS CODIGO"
        cQuery += "B1_DESC AS DESCRICAO"
        cQuery += "FROM"
        cQuery += " " + RestSQLName("SB1")+ "SB1"
        cQuery += "WHERE"
        cQuery += "B1_MSBLQL != '1' "

RETURN

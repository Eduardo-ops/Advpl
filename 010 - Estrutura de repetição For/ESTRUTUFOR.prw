#include 'protheus.ch'
#include 'parmtype.ch'

User Function ESTRUTUFOR()

    Local nCount
    Local nNum := 0
    Local nNum2 := 0

    FOR nCount := 0 to 10

        nNum += nCount

    NEXT
    Alert("Valor:" + cValToChar(nNum))

    // Configurado para o loop sempre andar na sequência de dois em dois.
    FOR nCount := 0 to 10 STEP 2

        nNum2 += nCount

    NEXT
    Alert("Valor de nNum2 seguindo a sequência de dois em dois do loop configurado:" + cValToChar(nNum2))

RETURN

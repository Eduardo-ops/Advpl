#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    Posicione() - Função utilizada para posicionar uma tabela em determinado registo.
*/

User Function INDICES()

    Local aArea := SB1->(GetArea())
    Local cMsg := ""

    DbSelectArea("SB1")
    SB1->(DbSetOrder(1))
    SB1->(DBGoTop())

    // Recebendo valor do campo B1_DSC da tabela SB1 da coluna de codigo 004
    cMsg := Posicione( 'SB1',; 
                        1,; 
                        FWXFilial('SB1')+'004',; 
                        'B1_DESC')

    Alert("Descrição do produto trabalhado: " + cMsg)

    RestArea(aArea)

RETURN 

#include 'protheus.ch'
#include 'parmtype.ch'

/* 
   Fonte que pega determinada informação do banco de dados e mostrando na tela do protheus.

   GetArea()      -
   DbSelectArea() - 
   DbSetOrder()   -
   DBGoTop()      -
   DBSeek()       -
   FWXFilial()    -
   RestArea()     - 
*/

User Function BANCO001()

    // Fazendo referncia a tabela SB1
    Local aArea := SB1->(GetArea())

    // Abrindo a tabela
    DbSelectArea("SB1")

    // Posiciona no índice 1
    SB1->(DbSetOrder(1))
    SB1->(DBGoTop())

    // Posiciona o produto de código 004
    IF SB1->(DBSeek(FWXFilial("SB1") + "004"))
        Alert(SB1->B1_DESC)
    ENDIF

    // Saindo da tabela
    RestArea(aArea)

RETURN

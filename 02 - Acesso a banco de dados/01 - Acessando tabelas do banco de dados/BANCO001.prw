#include 'protheus.ch'
#include 'parmtype.ch'

/* 
   Fonte que pega determinada informa��o do banco de dados e mostrando na tela do protheus.

   GetArea()      - Fun��o que retorna um array de dados de um alias(Ex: Tabela).
   DbSelectArea() - Fun��o que define o alias como ativo, todas as opera��es subsequentes ser� realizado nessa �rea 
                    de trabalho do alias informado.
   DbSetOrder()   - Define o �ndice que ser� utilizado na �rea de trabalho ativa(tabela), ou seja, 
                    pela �rea previamente selecionada atrav�s da fun��o dbSelectArea().
   DBGoTop()      - Fun��o que permite posicionar o arquivo l�gico em seu primeiro registro, no in�cio.
   DBSeek()       - Fun��o que busca um determinado registro em sua area de trabalho.
   FWXFilial()    - Fun��o que retorna o c�digo da filial conforme a tabela.
   RestArea()     - Fun��o que restaura dados que foram armazenados com a fun��o GetArea.
*/

User Function BANCO001()

    // Fazendo referencia a tabela SB1 e armazenando seus dados no array aArea
    Local aArea := SB1->(GetArea())

    // Definindo a tabela como ativa
    DbSelectArea("SB1")

    // Posiciona no �ndice 1
    SB1->(DbSetOrder(1))
    SB1->(DBGoTop())

    // Posiciona o produto de c�digo 004
    IF SB1->(DBSeek(FWXFilial("SB1") + "004"))
        Alert(SB1->B1_DESC)
    ENDIF

    // Saindo da tabela
    RestArea(aArea)

RETURN

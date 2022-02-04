#include 'protheus.ch'
#include 'parmtype.ch'

/* 
   Fonte que pega determinada informação do banco de dados e mostrando na tela do protheus.

   GetArea()      - Função que retorna um array de dados de um alias(Ex: Tabela).
   DbSelectArea() - Função que define o alias como ativo, todas as operações subsequentes será realizado nessa área 
                    de trabalho do alias informado.
   DbSetOrder()   - Define o índice que será utilizado na área de trabalho ativa(tabela), ou seja, 
                    pela área previamente selecionada através da função dbSelectArea().
   DBGoTop()      - Função que permite posicionar o arquivo lógico em seu primeiro registro, no início.
   DBSeek()       - Função que busca um determinado registro em sua area de trabalho.
   FWXFilial()    - Função que retorna o código da filial conforme a tabela.
   RestArea()     - Função que restaura dados que foram armazenados com a função GetArea.
*/

User Function BANCO001()

    // Fazendo referencia a tabela SB1 e armazenando seus dados no array aArea
    Local aArea := SB1->(GetArea())

    // Definindo a tabela como ativa
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

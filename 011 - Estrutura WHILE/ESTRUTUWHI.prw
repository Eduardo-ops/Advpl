#include 'protheus.ch'
#include 'parmtype.ch'

User Function ESTRUTUWHI()

    Local nNum1 := 0
    Local nNum2 := 10
    Local nNum3 := 1
    Local cNome:= "Teste"

    // Estrutura sempre irá ser executada enquanto o nNum1 for menor do que nNum2
    WHILE nNum1 < nNum2

        nNum1++

    ENDDO
    Alert("A soma de nNum1 + nNum2 é igual a: " + cValToChar(nNum1 + nNum2))

    // Estrutura sempre irá ser executada enquanto nNum3 for diferente que 10 e cNome diferente de Protheus
    WHILE nNum3 != 10 .AND. cNome != "Protheus"

        nNum3++
        IF nNum3 == 7
            cNome := "Protheus"
        ENDIF
    ENDDO
    Alert("Valor da variável nNum3 é igual a: " + cValToChar(nNum3))
    Alert("Valor da variável cNome é igual a: " + cValToChar(cNome))   

RETURN





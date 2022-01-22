#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRUTURIF()

    // UTILIZAÇÃO DE IF ELSE

    Local nNum1 := 10
    Local nNum2 := 20
    Local nNum3 := 40
    Local nNum4 := 12

    IF(nNum1 <= nNum2)

        MsgAlert("A variável nNum1 é menor do que nNum2!")

    ELSE

        Alert("A variável nNum1 é maior do que nNum2!")

    ENDIF

    //UTILIZAÇÃO DE IF ELSE COM ELSEIF

    IF(nNum3 < nNum4)

        MsgAlert("Variável nNum3 é menor do que nNum4")

    ELSEIF (nNum3 == nNum4)

        MasgAlert("Variável nNum3 é identica a nNum4")

    ELSEIF (nNum3 != nNum4)

        Alert("Variável nNum3 é diferente de nNum4")

    ENDIF
    
RETURN

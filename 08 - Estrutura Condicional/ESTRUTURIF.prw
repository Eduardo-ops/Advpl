#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRUTURIF()

    // UTILIZA��O DE IF ELSE

    Local nNum1 := 10
    Local nNum2 := 20
    Local nNum3 := 40
    Local nNum4 := 12

    IF(nNum1 <= nNum2)

        MsgAlert("A vari�vel nNum1 � menor do que nNum2!")

    ELSE

        Alert("A vari�vel nNum1 � maior do que nNum2!")

    ENDIF

    //UTILIZA��O DE IF ELSE COM ELSEIF

    IF(nNum3 < nNum4)

        MsgAlert("Vari�vel nNum3 � menor do que nNum4")

    ELSEIF (nNum3 == nNum4)

        MasgAlert("Vari�vel nNum3 � identica a nNum4")

    ELSEIF (nNum3 != nNum4)

        Alert("Vari�vel nNum3 � diferente de nNum4")

    ENDIF
    
RETURN

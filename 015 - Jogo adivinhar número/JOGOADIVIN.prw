#include 'protheus.ch'
#include 'parmtype.ch'

User Function JOGOADIVIN()
    Local nNum := 50
    Local nJogada := 0
    Local nCount := 0

    WHILE (nCount != 5)
        nJogada := Val(FWInputBox("Informe seu n�mero de adivinha��o: "))
        Alert("N�mero escolhido: " + cValToChar(nJogada))

        IF (nJogada == nNum) 
            MsgAlert("Voc� acertou o n�mero e finalizou o jogo, parab�ns!!!")
        ELSEIF (nJogada > nNum)
            MsgAlert("Dica: N�mero informado � maior do que o do jogo!")
        ELSE
            MsgAlert("Dica: N�mero informado � menor do que o do jogo!")
        ENDIF

        nCount++
        IF (nCount == 5)
            Alert("Sua quantidade de tentativas excederam, suba no escrit�rio do Armando.")
        ENDIF

        IF (nJogada == nNum)
            nCount := 5
        ENDIF
    ENDDO

RETURN

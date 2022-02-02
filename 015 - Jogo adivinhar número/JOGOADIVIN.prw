#include 'protheus.ch'
#include 'parmtype.ch'

User Function JOGOADIVIN()
    Local nNum := 50
    Local nJogada := 0
    Local nCount := 0

    WHILE (nCount != 5)
        nJogada := Val(FWInputBox("Informe seu número de adivinhação: "))
        Alert("Número escolhido: " + cValToChar(nJogada))

        IF (nJogada == nNum) 
            MsgAlert("Você acertou o número e finalizou o jogo, parabéns!!!")
        ELSEIF (nJogada > nNum)
            MsgAlert("Dica: Número informado é maior do que o do jogo!")
        ELSE
            MsgAlert("Dica: Número informado é menor do que o do jogo!")
        ENDIF

        nCount++
        IF (nCount == 5)
            Alert("Sua quantidade de tentativas excederam, suba no escritório do Armando.")
        ENDIF

        IF (nJogada == nNum)
            nCount := 5
        ENDIF
    ENDDO

RETURN

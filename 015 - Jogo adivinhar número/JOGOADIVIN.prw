#include 'protheus.ch'
#include 'parmtype.ch'

User Function JOGOADIVIN()
    Local nNum := Randomize(1, 100)
    Local nJogada := 0
    Local nCount := 0

    MsgAlert("Bem vindo ao jogo de adivinhação protheus!")
    MsgAlert("Você tem 5 tentativas para adivinhar.")
    MsgAlert("Escolha números de 1 a 100")

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

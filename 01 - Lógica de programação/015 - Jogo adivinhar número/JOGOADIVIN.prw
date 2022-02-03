#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    O Advpl irá selecionar um número de 1 a 100(automaticamente). O desafio do jogador é descobir qual número 
    foi definido pelo Advpl. A cada tentativa o jogador receberá uma dica, dizendo se o valor que informou é maior
    ou menor do número sorteado. São no total de 5 tentativas para adivinhar o número.
 */

User Function JOGOADIVIN()
    Local nNum := Randomize(1, 100)// Retornará um número de 1 a 100
    Local nJogada := 0
    Local nCount := 0

    MsgAlert("Bem vindo ao jogo de adivinhação protheus!")
    MsgAlert("Você tem 5 tentativas para adivinhar.")
    MsgAlert("Escolha números de 1 a 100")

    WHILE (nCount != 5)
        nJogada := Val(FWInputBox("Informe seu número de adivinhação: "))
        Alert("Número escolhido: " + cValToChar(nJogada))

        // Verificando se o jogador acertou o número ou não.
        IF (nJogada == nNum) 
            MsgAlert("Você acertou o número e finalizou o jogo, parabéns!!!")
        ELSEIF (nJogada > nNum)
            MsgAlert("Dica: Número informado é maior do que o do jogo!")
        ELSE
            MsgAlert("Dica: Número informado é menor do que o do jogo!")
        ENDIF

        // Contador de tentativas
        nCount++

        // Informa quando o limite de tentativas já chegou ao limite.
        IF (nCount == 5)
            Alert("Sua quantidade de tentativas excederam, suba no escritório do Armando.")
        ENDIF

       /*  
        Definindo o valor de tentativas ao máximo do limite estabelecido, conforme o jogador acerte o número
        de adivinhação, pois a estrutura sempre funciona enquanto o número de tentativas for diferente de seu
        limite de 5. 
        */
        IF (nJogada == nNum)
            nCount := 5
        ENDIF
    ENDDO

RETURN

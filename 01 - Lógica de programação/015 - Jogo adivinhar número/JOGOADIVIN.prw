#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    O Advpl ir� selecionar um n�mero de 1 a 100(automaticamente). O desafio do jogador � descobir qual n�mero 
    foi definido pelo Advpl. A cada tentativa o jogador receber� uma dica, dizendo se o valor que informou � maior
    ou menor do n�mero sorteado. S�o no total de 5 tentativas para adivinhar o n�mero.
 */

User Function JOGOADIVIN()
    Local nNum := Randomize(1, 100)// Retornar� um n�mero de 1 a 100
    Local nJogada := 0
    Local nCount := 0

    MsgAlert("Bem vindo ao jogo de adivinha��o protheus!")
    MsgAlert("Voc� tem 5 tentativas para adivinhar.")
    MsgAlert("Escolha n�meros de 1 a 100")

    WHILE (nCount != 5)
        nJogada := Val(FWInputBox("Informe seu n�mero de adivinha��o: "))
        Alert("N�mero escolhido: " + cValToChar(nJogada))

        // Verificando se o jogador acertou o n�mero ou n�o.
        IF (nJogada == nNum) 
            MsgAlert("Voc� acertou o n�mero e finalizou o jogo, parab�ns!!!")
        ELSEIF (nJogada > nNum)
            MsgAlert("Dica: N�mero informado � maior do que o do jogo!")
        ELSE
            MsgAlert("Dica: N�mero informado � menor do que o do jogo!")
        ENDIF

        // Contador de tentativas
        nCount++

        // Informa quando o limite de tentativas j� chegou ao limite.
        IF (nCount == 5)
            Alert("Sua quantidade de tentativas excederam, suba no escrit�rio do Armando.")
        ENDIF

       /*  
        Definindo o valor de tentativas ao m�ximo do limite estabelecido, conforme o jogador acerte o n�mero
        de adivinha��o, pois a estrutura sempre funciona enquanto o n�mero de tentativas for diferente de seu
        limite de 5. 
        */
        IF (nJogada == nNum)
            nCount := 5
        ENDIF
    ENDDO

RETURN

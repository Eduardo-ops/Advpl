#include 'protheus.ch'
#include 'parmtype.ch'

User Function JOGOADIVIN()
    Local nNum := 50
    Local nJogada := 0
    
    nJogada := FWInputBox("Informe seu n�mero de adivinha��o: ")
    Alert("N�mero escolhido: " + cValToChar(nJogada))

RETURN

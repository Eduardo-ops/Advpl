#include 'protheus.ch'
#include 'parmtype.ch'

User Function JOGOADIVIN()
    Local nNum := 50
    Local nJogada := 0
    
    nJogada := FWInputBox("Informe seu número de adivinhação: ")
    Alert("Número escolhido: " + cValToChar(nJogada))

RETURN

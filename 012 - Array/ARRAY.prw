#include 'protheus.ch'
#include 'parmtype.ch'

User Function ARRAY()

    /* 
        Array s�o cole��es de valores, semelhante a uma lista.
        Cada item de um arrau � referenciado pela indica��o de sua numera��o, iniciando pela posi��o num�rica 1.
    */

    Local dData := Date()
    Local aValores := {"Jo�o", dData, 100}

    Alert("Valor do array aValores na posi��o 2:" + aValores[2])
    Alert("Valor do array aValores na posi��o 3: " + aValores[3])

RETURN

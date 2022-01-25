#include 'protheus.ch'
#include 'parmtype.ch'

User Function ARRAY()

    /* 
        Array são coleções de valores, semelhante a uma lista.
        Cada item de um arrau é referenciado pela indicação de sua numeração, iniciando pela posição numérica 1.
    */

    Local dData := Date()
    Local aValores := {"João", dData, 100}

    Alert("Valor do array aValores na posição 2:" + aValores[2])
    Alert("Valor do array aValores na posição 3: " + aValores[3])

RETURN

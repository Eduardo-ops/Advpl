#include 'protheus.ch'
#include 'parmtype.ch'

user function OPERADORRA()

    Local nNum1 := 20
    Local nNum2 := 20

    //OPERADORES RELACIONAIS

    // COMPARA��O DE MENOR - Compara se nNum1 � menor que nNum2
    Alert(nNum1 < nNum2)

    // COMPARA��O DE MAIOR - Compara se nNum1 � maior que nNum2
    Alert(nNum1 > nNum2)

    // COMPARA��O DE IGUAL - Compara se nNum1 � igual a nNum2, e n�o para determinar valor, pois o valor � :=
    Alert(nNum1 = nNum2)

    // COMPARA��O DE IGUALDADE - Compara se nNum1 � exatamente igual a cada caractere de nNum2
    Alert(nNum1 == nNum2)

    // COMPARA��O DE MENOR OU IGUAL - Compara se nNum1 � menor ou igual a nNum2
    Alert(nNUm1 <= nNUm2)

    //COMPARA��O DE MAIOR OU IGUAL - Compara se nNum1 � maior ou igual a nNum2
    Alert(nNum1 >= nNum2)

    //COMPARA��O DE DIFEREN�A - Compara se nNum1 � diferente de nNum2
    Alert(nNum1 != nNum2)

    // OPERADORES DE ATRIBUI��O

    // ATRIBUI��O SIMPLES - Vari�vel nNum1 recebe 10
    nNum1 := 10

    // nNum1 = nNum1 + nNum2
    nNum1 += nNum2

    //nNum = nNum1 - nNum2
    nNum1 -= nNum2

    //nNum = nNum1 * nNum2
    nNum1 *= nNum2

    //nNum = nNum1 / nNum2
    nNum1 /= nNum2

RETURN

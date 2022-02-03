#include 'protheus.ch'
#include 'parmtype.ch'

user function OPERADORRA()

    Local nNum1 := 20
    Local nNum2 := 20

    //OPERADORES RELACIONAIS

    // COMPARAÇÃO DE MENOR - Compara se nNum1 é menor que nNum2
    Alert(nNum1 < nNum2)

    // COMPARAÇÃO DE MAIOR - Compara se nNum1 é maior que nNum2
    Alert(nNum1 > nNum2)

    // COMPARAÇÃO DE IGUAL - Compara se nNum1 é igual a nNum2, e não para determinar valor, pois o valor é :=
    Alert(nNum1 = nNum2)

    // COMPARAÇÃO DE IGUALDADE - Compara se nNum1 é exatamente igual a cada caractere de nNum2
    Alert(nNum1 == nNum2)

    // COMPARAÇÃO DE MENOR OU IGUAL - Compara se nNum1 é menor ou igual a nNum2
    Alert(nNUm1 <= nNUm2)

    //COMPARAÇÃO DE MAIOR OU IGUAL - Compara se nNum1 é maior ou igual a nNum2
    Alert(nNum1 >= nNum2)

    //COMPARAÇÃO DE DIFERENÇA - Compara se nNum1 é diferente de nNum2
    Alert(nNum1 != nNum2)

    // OPERADORES DE ATRIBUIÇÃO

    // ATRIBUIÇÃO SIMPLES - Variável nNum1 recebe 10
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

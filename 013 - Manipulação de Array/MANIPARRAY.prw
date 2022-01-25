#include 'protheus.ch'
#include 'parmtype.ch'

User Function MANIPARRAY()

    /* 
        ADD()    - Permite a inser��o de um item em um array j� existente.
        AINS()   - Permite a inser��o de um elemento em qualquer posi��o de array.
        ACLONE() - Realiza a c�pia de um array para o outro.
        ADEL()   - Permite a exclus�o do de um elemento do array, tornando o �ltimo valor null.
        ASIZE()  - Redefine a estrutura de um array pr�-existente, adicionando ou removendo.
        LEN()    - Retorna a quantidade de elementos de um array.
     */

    Local aArray1 := {10, 20, 20}
    Local nCount := 0

    // Utilizando ADD para adicionar mais um elemento do array1
    AAdd(aArray1,100)

    // Utilizando LEN para verificar o tamanho do array, ou seja, sua quantidade total de elemento.
    Alert(LEN(aArray1))

    // Utilizando AINS para adicionar o valor 200 no elemento j� existente no array, linhas 22 e 23
    AIns(aArray1,2)
    aArray1[2] := 200
    Alert(aArray1[2])
    Alert(LEN(aArray1))

    // Clonando um array para o outro
    aArray2 := AClone(aArray1)

    // Mostrando o array clonado
    FOR nCount := 1 to LEN(aArray2)
        Alert(aArray2[nCount])
    NEXT

    /* 
        Excluindo o elemento 3 do array, por�m, o elemento 3 torna-se null, ainda existindo no array o determinado
        elemento 
    */
    ADel(aArray2,3)
    Alert(aArray2[3])
    Alert(LEN(aArray2))

    /* 
        Reestruturando o aArray2 para um total de 2 elemento, ou seja, ele � um array de 3 elemento, no entanto, estamos
        reestruturando o mesmo para ser somente de 2 elemento. 
    */
    ASize(aArray2,2)
    Alert(LEN(aArray2))

RETURN 

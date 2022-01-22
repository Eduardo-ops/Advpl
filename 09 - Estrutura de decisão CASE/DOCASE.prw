#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    Estrutura DoCase é semelhante ao If Else, porém, é sempre utilizada quando o número é maior de uma 
    expressão deve ser avaliada, geralmente, surge a necessidade quando a mais de um comando a ser usado de if else.
 */

user function DOCASE()

    Local cData := "22/01/2022"

    DO CASE

    CASE cData == "16/12/2022"
        Alert("Não é natal: " + cData)

    CASE cData == "25/12/2022"
        Alert("É natal!!!")

    OTHERWISE
        MsgAlert("Não sei qual dia é hoje!")

    ENDCASE

RETURN

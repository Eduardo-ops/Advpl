#include 'protheus.ch'
#include 'parmtype.ch'

User Function BLOCOCODIG()

    /* 
        Bloco de c�digo � uma fun��o 'inline', onde pode ser declarados par�metros de entrada, e dentro dele 
        podemos colocar uma ou mais express�es ADVPL separadas por v�rgula, como por exemplo atribui��es de 
        valores em vari�veis e chamadas de fun��es ou m�todos.
    */

    Local bBloco := {|| Alert("Ol� Mundo!!!")}

    // Declara��o de bloco de nota com passagem de par�metro
    Local bBlocoII := {|cMensagem| Alert(cMensagem)}

    Eval(bBloco)

    // Passando o valor do par�metro recebido no bloco de c�digo na declara��o acima.
    Eval(bBlocoII,"Ola Mundo II")

RETURN

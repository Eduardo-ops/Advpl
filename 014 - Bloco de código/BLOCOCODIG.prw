#include 'protheus.ch'
#include 'parmtype.ch'

User Function BLOCOCODIG()

    /* 
        Bloco de código é uma função 'inline', onde pode ser declarados parâmetros de entrada, e dentro dele 
        podemos colocar uma ou mais expressões ADVPL separadas por vírgula, como por exemplo atribuições de 
        valores em variáveis e chamadas de funções ou métodos.
    */

    Local bBloco := {|| Alert("Olá Mundo!!!")}

    // Declaração de bloco de nota com passagem de parâmetro
    Local bBlocoII := {|cMensagem| Alert(cMensagem)}

    Eval(bBloco)

    // Passando o valor do parâmetro recebido no bloco de código na declaração acima.
    Eval(bBlocoII,"Ola Mundo II")

RETURN

#Include "Protheus.ch"
#include 'Parmtype.ch'

/* 
    A declaração de escopo de variável, é a propiedade que determina onde uma variável poderá ser utilizada 
    como um identificador em um programa, ou seja, onde ela vai ser declarada.
    A definição do escopo é efetudada sempre no momento da declaração de variável.
 */

 // Exemplo declaração de variável e seu escopo.
 Local nNumero := 100

/* 
    A declaração de escopo de variável, não é obrigatório desde de que a variável seja atribuida com seu valor,
    nesse caso, toda variável declarada sem sua declaração de escopo, é considerada uma variavel private.
 */

// Exemplo de variável declarada sem seu escopo informado, tornando assim, uma variável private.
nNumero := 1000

/* 
    IDENTIFICADORES DE ESCOPO

    Local
    Static 
    Private
    Public

 */

/* 
    VARIÁVEL DE ESCOPO LOCAL

    Variáveis locais, são visíveis em qualquer lugar do código fonte em que esteja foram declaradas.
 */
User Function VLocal()

    Local nNumero: = 100

RETURN

/* 
    VARIÁVEL STATIC

    
 */

#Include "Protheus.ch"
#include 'Parmtype.ch'

/* 
    A declara��o de escopo de vari�vel, � a propiedade que determina onde uma vari�vel poder� ser utilizada 
    como um identificador em um programa, ou seja, onde ela vai ser declarada.
    A defini��o do escopo � efetudada sempre no momento da declara��o de vari�vel.
 */

 // Exemplo declara��o de vari�vel e seu escopo.
 Local nNumero := 100

/* 
    A declara��o de escopo de vari�vel, n�o � obrigat�rio desde de que a vari�vel seja atribuida com seu valor,
    nesse caso, toda vari�vel declarada sem sua declara��o de escopo, � considerada uma variavel private.
 */

// Exemplo de vari�vel declarada sem seu escopo informado, tornando assim, uma vari�vel private.
nNumero := 1000

/* 
    IDENTIFICADORES DE ESCOPO

    Local
    Static 
    Private
    Public

 */

/* 
    VARI�VEL DE ESCOPO LOCAL

    Vari�veis locais, s�o vis�veis em qualquer lugar do c�digo fonte em que esteja foram declaradas.
 */
User Function VLocal()

    Local nNumero: = 100

RETURN

/* 
    VARI�VEL STATIC

    
 */

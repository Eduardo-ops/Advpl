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
User Function Vlocal()

    Local nNumero: = 100

RETURN

/* 
    VARI�VEL STATIC

    O comportamento de vari�veis estaticas, dependem de onde s�o declaradas, caso sejam declaradas dentro de um corpo
    de uma fun��o ou procedimento, seu escope ser� limitado aquela rotina, caso contr�rio, seu escopo afeta todas
    as fun��es declaradas no fonte em si.
*/
User Function Vstatic()

    Static nNumero := 90

RETURN

/* 
    VARI�VEIS PRIVATE

    Vari�vel private, � vis�vel em todo o programa enquanto n�o for destru�da.
    � destru�da sempre que a sua fun��o onde foi criada termine ou uma fun��o interna do do programa chame uma 
    vari�vel com o mesmo nome, por�m, com outro valor.
*/
 User Function Vprivate()
 
     Private nNum := 32

RETURN

/* 
    VARI�VEL PUBLIC

    Uma vez criada, a vari�vel public � vis�vel em todo o programa em que foi declarada, at� que seja escondida por
    uma vari�vel de escopo private, criado com o mesmo nome.
*/
 User Function Vpublic()
    
    Public nNum := 12

RETURN

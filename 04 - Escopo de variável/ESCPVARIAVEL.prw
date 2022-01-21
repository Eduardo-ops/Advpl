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
User Function Vlocal()

    Local nNumero: = 100

RETURN

/* 
    VARIÁVEL STATIC

    O comportamento de variáveis estaticas, dependem de onde são declaradas, caso sejam declaradas dentro de um corpo
    de uma função ou procedimento, seu escope será limitado aquela rotina, caso contrário, seu escopo afeta todas
    as funções declaradas no fonte em si.
*/
User Function Vstatic()

    Static nNumero := 90

RETURN

/* 
    VARIÁVEIS PRIVATE

    Variável private, é visível em todo o programa enquanto não for destruída.
    É destruída sempre que a sua função onde foi criada termine ou uma função interna do do programa chame uma 
    variável com o mesmo nome, porém, com outro valor.
*/
 User Function Vprivate()
 
     Private nNum := 32

RETURN

/* 
    VARIÁVEL PUBLIC

    Uma vez criada, a variável public é visível em todo o programa em que foi declarada, até que seja escondida por
    uma variável de escopo private, criado com o mesmo nome.
*/
 User Function Vpublic()
    
    Public nNum := 12

RETURN

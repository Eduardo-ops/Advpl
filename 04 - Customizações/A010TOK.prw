#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    O cliente solicita o desenvolvimento de uma tratativa no 
    sistema protheus da empresa, onde não pode ser permitido 
    que o usuário inclua produtos do tipo "PA" com a conta contábil "001".
*/

/*
    {Protheus.doc} A010TOK
    Faz a verificação se o tipo de produto é PA e conta contabil é 001
    @type function
    @version 12.1.27
    @author Eduardo Isidoro - eduardo.isidoro@totvs.com.br
    @since 09/03/2022
*/

User Function A010TOK()
	Local lExecuta := .T.
	Local cTipo := AllTrim(M->B1_TIPO)
	Local cConta := AllTrim(M->B1_CONTA)

	IF (cTipo = "PA" .AND. cConta = "001")
		lExecuta := .F.
		Alert("A conta <b>" + cConta + " não pode ser associada com um produto do tipo <b>" + cTipo)
	ENDIF

RETURN(lExecuta)

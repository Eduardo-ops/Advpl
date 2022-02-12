#include 'protheus.ch'
#include 'parmtype.ch'

/*

    Fonte que nos permite usar uma rotina personalizada, implementando determinadas funcionalidades como 
    o incluir, alterar excluir e outras.

    mBrowse() - Permite, por meio de uma interface, que o usuário visualize todos os registros de um arquivo
                de dados, conforme a necessidade da aplicação.

    Sintaxe: mBrowse( <nLinha1>, <nColuna1>, <nLinha2>, <nColuna2>, <cAlias>, <aFixe>, <cCpo>, <nPar>, 
                      <cCorFun>, <nClickDef>, <aColors>, <cTopFun>, <cBotFun>, <nPar14>, <bInitBloc>, 
                      <lNoMnuFilter>, <lSeeAll>, <lChgAll>, <cExprFilTop>, <nInterval>, <uPar22>, <uPar23> )

    TDN Referente a função: https://tdn.totvs.com/pages/viewpage.action?pageId=24346981
*/

User Function MBROWSE()

	Local cAlias := "SB1"
	Private cCadastro := "Cadastro Produtos MBROWSE - Rotina personalizada"
	Private aRotina := {}

	// Funcionalidades da rotina
	AADD(aRotina, { "Pesquisar", "AxPesqui",   0, 1 })
	AADD(aRotina, { "Visualizar","AxVisual",   0, 2 })
	AADD(aRotina, { "Incluir",   "AxInclui",   0, 3 })
	AADD(aRotina, { "Alterar",   "AxAltera",   0, 4 })
	AADD(aRotina, { "Excluir",   "AxDeleta",   0, 5 })
	AADD(aRotina, { "Ola",       "U_OlaMundo", 0, 6 })

	dbSelectArea(cAlias)
	dbSetOrder(1)
	mBrowse(,,,,cAlias)

RETURN NIL

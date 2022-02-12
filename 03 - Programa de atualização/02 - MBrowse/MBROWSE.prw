#include 'protheus.ch'
#include 'parmtype.ch'

User Function MBROWSE()

	Local cAlias := "SB1"
	Private cCadastro := "Cadastro Produtos MBROWSE - Rotina personalizada"
	Private aRotina := {}

	AADD(aRotina,{"Pesquisar", "AxPesqui",0,1})
	AADD(aRotina,{"Visualizar", "AxVisual",0,2})
	AADD(aRotina,{"Incluir", "AxInclui",0,3})
	AADD(aRotina,{"Alterar", "AxAltera",0,4})
	AADD(aRotina,{"Excluir","AxDeleta",0,5})
	AADD(aRotina,{"Ola","U_OlaMundo",0,6})

	dbSelectArea(cAlias)
	dbSetOrder(1)
	mBrowse(,,,,cAlias)

RETURN NIL

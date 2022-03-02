#include 'protheus.ch'
#include 'parmtype.ch'

User Function MBROWSEII()

	Local cAlias := "SA2"
	Local aCores := {}
	Local cFiltra := "A2_FILIAL == '" + xFilial('SA2') + "' .AND. A2_EST == 'SP'"
	Private cCadastro := "Cadastro MBROWSEII Rotina Personalizada"
	Private aRotina:= {}
	Private aIndexSA2 := {}
	Private bFiltraBrw := {|| FilBrowse(cAlias, @aIndexSA2, @cFiltra)}

	AADD(aRotina,{"Pesquisar",  "AxPesqui"   , 0,1})
	AADD(aRotina,{"Visualizar", "AxVisual"   , 0,2})
	AADD(aRotina,{"Incluir",    "U_BInclui"  , 0,3})
	AADD(aRotina,{"Alterar",    "U_BAltera"  , 0,4})
	AADD(aRotina,{"Exluir",    "U_BDelete"   , 0,5})
	AADD(aRotina,{"Legenda",    "U_BLegenda" , 0,6})

	DbSelectArea(cAlias)
	DbSetOrder(1)

	Eval(bFiltraBrw)

	dbGoTop()
	mBrowse(6,1,22,75,cAlias)

	EndFilBrw(cAlias,aIndexSA2)

RETURN

#include 'protheus.ch'
#include 'parmtype.ch'

/* Tela SA2 personalizada */

User Function MBROWSEII()
	Local cAlias := "SA2"
	Local aCores := {}
	Local cFiltra := "A2_FILIAL == '"+xFilial('SA2')+"' .AND. A2_EST == 'SP'"
	Private cCadastro := "Cadastro MBROWSEII Rotina Personalizada"
	Private aRotina:= {}
	Private aIndexSA2 := {}
	Private bFiltraBrw := {|| FilBrowse(cAlias, @aIndexSA2, @cFiltra)}

	AADD(aRotina,{"Pesquisar"  , "AxPesqui"   ,0,1})
	AADD(aRotina,{"Visualizar" , "AxVisual"   ,0,2})
	AADD(aRotina,{"Incluir"    ,"U_BInclui"   ,0,3})
	AADD(aRotina,{"Alterar"    ,"U_BAltera"   ,0,4})
	AADD(aRotina,{"Exluir"     ,"U_BDelete"   ,0,5})
	AADD(aRotina,{"Legenda"    ,"U_BLegenda"  ,0,6})

	//Cores legendas
	AADD(aCores,{"A2_TIPO == 'F'"  ,"BR_VERDE"   })// Se o campo Tipo do fornecedor for igual a F(Físico), legenda recebe a cor verde;
	AADD(aCores,{"A2_TIPO == 'J'"  ,"BR_AMARELO" })
	AADD(aCores,{"A2_TIPO == 'X'"  ,"BR_VIOLETA" })
	AADD(aCores,{"A2_TIPO == 'R'"  ,"BR_MARROM"  })
	AADD(aCores,{"Empty(A2_TIPO)"  ,"BR_PRETO"   })

	dbSelectArea(cAlias)
	dbSetOrder(1)

	Eval(bFiltraBrw)

	dbGoTop()
	mBrowse(6,1,22,75,cAlias,,,,,,aCores)

	EndFilBrw(cAlias,aIndexSA2)

RETURN

//---------------------------------------------------------
// Função BInclui - Inclusão
//---------------------------------------------------------
User Function BInclui(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxInclui(cAlias,nReg,nOpc)

	IF nOpcao == 1
		MsgInfo("Inclusão realizada com sucesso!")
	ELSE
		MsgAlert("Inclusão Cancelada.")
	ENDIF
RETURN

//---------------------------------------------------------
// Função BAltera - Alterar
//---------------------------------------------------------
User Function BAltera(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxAltera(cAlias,nReg,nOpc)

	IF nOpcao == 1
		MsgInfo("Fornecedor alterado com sucesso!!!")
	ELSE
		MsgAlert("Alteração cancelada.")
	ENDIF
RETURN

//---------------------------------------------------------
// Função BDelete - Exclusão
//---------------------------------------------------------
User Function BDelete(cAlias,nReg,nOpc)
	Local nOpcao := 0
	nOpcao := AxDeleta(cAlias,nReg,nOpc)

	IF nOpcao == 1
		MsgInfo("Fornecedor excluído com sucesso!!!")
	ELSE
		MsgAlert("Exclusão cancelada.")
	ENDIF
RETURN

//---------------------------------------------------------
// Função BLegenda - Legenda
//---------------------------------------------------------
User Function BLegenda()
	Local aLegenda := {}

	AADD(aLegenda,{"BR_VERDE"   ,"Fornecedor Física"  })
	AADD(aLegenda,{"BR_AMARELO" ,"Fornecedor Jurídico"})
	AADD(aLegenda,{"BR_VIOLETA" ,"Exportação"         })
	AADD(aLegenda,{"BR_MARROM"  ,"Fornecedor Rural"   })
	AADD(aLegenda,{"BR_PRETO"   ,"Não classificado"   })

	BrwLegenda(cCadastro, "Legenda", aLegenda)
RETURN


#include 'totvs.ch'
#include "fwmbrowse.CH"
#include 'fwmvcdef.ch'

User Function telazzw1()
	Local oBrowse := Nil
	Private aRotina := MenuDef()
	Private cCadastro := "Consulta de Logs"

	oBrowse := FWMBrowse():New()
	oBrowse:SetAlias("ZZW")//Seleciona o Alias que estamos trabalhando.
	oBrowse:SetDescription(cCadastro)// "Descrição"

     // Remove os botões de navegação na edição ou visualização do model
	oBrowse:SetUseCursor(.F.)
    oBrowse:Activate()
Return


Static Function MenuDef()
	Local aRotina := {}
	//Adicionando opcoes do menu
	ADD OPTION aRotina TITLE "Visualizar" ACTION 'AXVISUAL' OPERATION MODEL_OPERATION_VIEW   ACCESS 0 //OPERATION 1

Return aRotina

/*
	ADD OPTION aRotina TITLE "Pesquisar" ACTION 'AXPESQUI' OPERATION 1 ACCESS 0 //"Pesquisar"
    aAdd(aRotina, {"Pesquisar", "AXPESQUI", 0, 1})
    aAdd(aRotina, {"Visualizar", "AXVISUAL", 0, 2})
	ADD OPTION aRotina TITLE "Incluir" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 3 ACCESS 0 //"Incluir"
	ADD OPTION aRotina TITLE "Alterar" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 4 ACCESS 0 //"Alterar"
	ADD OPTION aRotina TITLE "Excluir" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 5 ACCESS 0 //"Excluir"
*/

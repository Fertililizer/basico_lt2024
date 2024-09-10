#include 'totvs.ch'
#include "fwmbrowse.CH"
#include 'fwmvcdef.ch'

User Function browSa1()
	Local oBrowse := Nil
	Private aRotina := MenuDef()

	oBrowse := FWMBrowse():New()
	oBrowse:SetAlias("SA1")//Seleciona o Alias que estamos trabalhando.
	oBrowse:SetDescription("Cadastro de Clientes")// "Descrição"

    // Remove os botões de navegação na edição ou visualização do model
	oBrowse:SetUseCursor(.F.)
    oBrowse:Activate()

Return

Static Function MenuDef()
	Local aRotina := {}
	ADD OPTION aRotina TITLE "Pesquisar" ACTION 'AxPesqui' OPERATION 1 ACCESS 0 //"Pesquisar"
	ADD OPTION aRotina TITLE "Visualizar" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 2 ACCESS 0 //"Visualizar"
	ADD OPTION aRotina TITLE "Incluir" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 3 ACCESS 0 //"Incluir"
	ADD OPTION aRotina TITLE "Alterar" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 4 ACCESS 0 //"Alterar"
	ADD OPTION aRotina TITLE "Excluir" ACTION 'VIEWDEF.MYFUNCTION' OPERATION 5 ACCESS 0 //"Excluir"

Return aRotina

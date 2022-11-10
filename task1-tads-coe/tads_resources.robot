*** Settings ***
Documentation	Resources dos testes da página do TADS
Library		SeleniumLibrary

*** Variables ***
${BROWSER}	chrome
${TITULO_PAGINA}	//h1[@class='h2'][contains(.,'UFPR - Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas (TADS)')]
${MENU_COE}	//a[@role='menuitem'][contains(.,'COE (Estágio)')]
${MEMBROS_COE}	//p[contains(.,'Membros do COE (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]

*** Keywords ***

Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
	Close Browser

Acessar o site do TADS "${URL}"
	Go To	${URL}
	Wait Until Element Is Visible	locator=${TITULO_PAGINA}

Clicar no menu "${NOME_MENU}"
	click Element	locator=${MENU_COE}

Verificar se aparece na página "Membros do COE"
	Wait Until Element Is Visible 	locator=${MEMBROS_COE}
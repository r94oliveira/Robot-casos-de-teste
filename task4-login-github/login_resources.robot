*** Settings ***
Documentation	Resources dos testes da página do github
Library		SeleniumLibrary

*** Variables ***
${BROWSER}	Chrome

*** Keywords ***

Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
	Close Browser

Acessar o site do github "${URL}"
	Go To	${URL}
	Wait Until Element Is Visible	locator=//h1[contains(.,'Sign in to GitHub')]

Preencher nome de usuário "${NOME_USUARIO}"
    Input Text    locator=//input[contains(@id,'login_field')]    text=${NOME_USUARIO}

Preencher senha de usuário "${SENHA_USUARIO}"
    Input Text    locator=//input[contains(@id,'password')]    text=${SENHA_USUARIO}

Clicar para logar
	click Element	locator=//input[contains(@type,'submit')]
	
Verificar se logado
	Wait Until Element Is Visible 	locator=//span[@class='d-inline d-md-none d-lg-inline'][contains(.,'request')]
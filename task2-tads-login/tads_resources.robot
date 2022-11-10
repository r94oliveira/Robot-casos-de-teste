*** Settings ***
Documentation	Resources dos testes da página do TADS
Library		SeleniumLibrary

*** Variables ***
${BROWSER}	Firefox
${TITULO_PAGINA}	//h1[@class='h2'][contains(.,'UFPR - Curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas (TADS)')]
${MENU_COE}	//a[@role='menuitem'][contains(.,'COE (Estágio)')]
${MEMBROS_COE}	//p[contains(.,'Membros do COE (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]
${LOGIN_TADS}    (//a[@href='https://www.tads.ufpr.br/login/index.php'][contains(.,'Acessar')])[1]

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

Clicar no login
	click Element	locator=${LOGIN_TADS}

Preencher nome de usuário "${NOME_USUARIO}"
    Input Text    locator=//input[contains(@type,'text')]    text=${NOME_USUARIO}

Preencher senha de usuário "${SENHA_USUARIO}"
    Input Text    locator=//input[contains(@type,'password')]    text=${SENHA_USUARIO}

Clicar para logar
	click Element	locator=//button[@class='btn btn-primary btn-lg'][contains(.,'Acessar')]

Verificar se invalido
	Wait Until Element Is Visible 	locator=//div[@class='alert alert-danger'][contains(.,'Nome de usuário ou senha errados. Por favor tente outra vez.')]
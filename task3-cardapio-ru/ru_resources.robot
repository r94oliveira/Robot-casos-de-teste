*** Settings ***
Documentation	Resources dos testes do cardápio do RU
Library		SeleniumLibrary

*** Variables ***
${BROWSER}	Chrome
${URL}    https://pra.ufpr.br/ru/
${URL-POLI}    https://pra.ufpr.br/ru/ru-centro-politecnico/
${TITULO}    Restaurante Universitário
${MENU}    (//a[@title='Cardápio'][contains(.,'Cardápio')])[2]
${TITULO_CARDAPIO}    //h2[contains(.,'Cardápios')]
${CARDAPIO_POLITECNICO}    //a[contains(.,'RU Centro Politécnico')]
${CAFE_DO_DIA}    (//strong[contains(.,': 19/08/2022')])[2]

*** Keywords ***

Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
	Close Browser

Acessar o site do RU
	Go To	${URL}
	Title Should Be    ${TITULO}

Clicar no menu cardápio
    Click Element    ${MENU}

Verificar se a página de cardápio foi disponibilizada
    Wait Until Element Is Visible    ${TITULO_CARDAPIO}

Acessar o site do RU do centro politécnico
    Go To	${URL-POLI}
    Wait Until Element Is Visible   locator=//h2[contains(.,'Cardápio RU Centro Politécnico')]

Verificar se o cardápio do café da manhã para o dia atual está disponível
   Wait Until Element Is Visible    locator=//h2[contains(.,'Cardápio RU Centro Politécnico')]
    ${DIA}    Get Time    format=day
    ${MES}    Get Time    format=month
	${ANO}    Get Time    format=year
	Log    message=A data atual é ${DIA}/${MES}/${ANO}
	Wait Until Page Contains    text

No menu de Pesquisa escrever "${TERMO_BUSCA}" e Pesquisar
    Input Text    locator=//input[@id='s']    text=${TERMO_BUSCA}
    Click Button    locator=//input[contains(@id,'searchsubmit')]
    Wait Until Element Is Visible    locator=//h3[contains(.,'Resultados da pesquisa')]

Verificar se a página "Preços" está no resultado da busca
    Element Should Be Visible    locator=(//a[@href='https://pra.ufpr.br/ru/precos/'][contains(.,'Preços')])[3]

Ao clicar, os preços são exibidos
    Click Element    locator=(//a[@href='https://pra.ufpr.br/ru/precos/'][contains(.,'Preços')])[3]
	Wait Until Element Is Visible    locator=//h2[contains(.,'Valores cobrados por refeição nos RUs/UFPR')]

### GHERKIN

A página do RU é acessada
    Acessar o site do RU

Clicar no menu de Cardápio
    Clicar no menu cardápio

A página de cardápio é exibida
    Verificar se a página de cardápio foi disponibilizada

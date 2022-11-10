*** settings ***
Documentation	Casos de teste para exemplo de cardápios do RU
Resource	ru_resources.robot
Test Setup	Abrir o navegador
Test TearDown	Fechar o navegador

*** Test Cases ***

CASO DE TESTE 1: Acessar o cardápio do RU
    [Documentation]		Acessa o cardápio
	[Tags]		ru    cardapio
	Acessar o site do RU
    Clicar no menu cardápio
	Verificar se a página de cardápio foi disponibilizada

CASO DE TESTE 2: Verificar Café da manhã Politécnico
    [Documentation]		Verifica café da manhã
	[Tags]		ru    cafe
	Acessar o site do RU do centro politécnico
    Verificar se o cardápio do café da manhã para o dia atual está disponível

CASO DE TESTE 3: Pesquisar preços
    [Documentation]		Verifica preço ru na pesquisa
	[Tags]		ru    pesquisa    preço
	Acessar o site do RU
	No menu de Pesquisa escrever "Preço RU" e Pesquisar
	Verificar se a página "Preços" está no resultado da busca
	Ao clicar, os preços são exibidos
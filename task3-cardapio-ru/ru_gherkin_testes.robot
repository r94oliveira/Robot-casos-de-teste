*** settings ***
Documentation	Casos de teste em formato Gherkin para exemplo de cardápios do RU
Resource	ru_resources.robot
Test Setup	Abrir o navegador
Test TearDown	Fechar o navegador

*** Test Cases ***

CASO DE TESTE 1: Acessar o cardápio do RU
    [Documentation]		Acessa o cardápio
	[Tags]		ru    cardapio    gherkin
	Given A página do RU é acessada
    When Clicar no menu de Cardápio
	Then A página de cardápio é exibida
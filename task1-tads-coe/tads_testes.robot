*** settings ***
Documentation	Esta suíte de testes verifica o site do TADS
Resource	./tads_resources.robot
Test Setup	Abrir o navegador
Test TearDown	Fechar o navegador

***Variables ***
${URL}	 https://www.tads.ufpr.br/
${NOME_MENU}	COE (Estágio)

*** Test Cases ***

CASO DE TESTE 1: Verificar página de Estágio
	[Documentation]		Acessa o menu de Estágios do site do TADS
	[Tags]		estagio
	Acessar o site do TADS "${URL}"
	Clicar no menu "${NOME_MENU}"
	Verificar se aparece na página "Membros do COE"


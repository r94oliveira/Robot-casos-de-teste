*** settings ***
Documentation	Esta suíte de testes verifica o site do TADS
Resource	./tads_resources.robot
Test Setup	Abrir o navegador
Test TearDown	Fechar o navegador

***Variables ***
${URL}	 https://www.tads.ufpr.br/
${NOME_MENU}	COE (Estágio)
${NOME_USUARIO}    Robson
${SENHA_USUARIO}    123

*** Test Cases ***

CASO DE TESTE 1: Verificar página de Estágio
	[Documentation]		Acessa o menu de Estágios do site do TADS
	[Tags]		estagio
	Acessar o site do TADS "${URL}"
	Clicar no menu "${NOME_MENU}"
	Verificar se aparece na página "Membros do COE"



*** Test Cases ***

CASO DE TESTE 2: Login Inválido
	[Documentation]		Faz login inválido no TADS
	[Tags]		login    acesso
	Acessar o site do TADS "${URL}"
    Clicar no login
	Preencher nome de usuário "${NOME_USUARIO}"
	Preencher senha de usuário "${SENHA_USUARIO}"
	Clicar para logar
	Verificar se invalido
	
*** settings ***
Documentation	Esta suíte de testes verifica o site do github
Resource	./login_resources.robot
Test Setup	Abrir o navegador
Test TearDown	Fechar o navegador

***Variables ***
${URL}	 https://github.com/login
${NOME_USUARIO}    robsonoliveira@ufpr.br
${SENHA_USUARIO}    ufpr2022

*** Test Cases ***

CASO DE TESTE 1: Login válido no github
	[Documentation]		Faz login válido no github
	[Tags]		login    github
	Acessar o site do github "${URL}"
	Preencher nome de usuário "${NOME_USUARIO}"
	Preencher senha de usuário "${SENHA_USUARIO}"
	Clicar para logar
	Verificar se logado

	
# Descrição

Projeto destinado a automação de um cadastro com Robot Framework.


## Funcionalidades

Neste projeto estão cobertas as seguintes verificações:

 - Cadastro com informações válidas;
 - Cadastro com dados existentes;
 - Cadastro com informações inválidas.

## Requisitos

Para a execução dos testes são necessárias as seguintes instalações: 

**Python**
Para a instalação do python, acesse o seguinte [link](https://www.python.org/downloads/). Faça download e execute marcando a opção "Add python.exe to PATH". Neste projeto foi utilizada a versão 3.11.5

**Robot  Framework**
Após instalar o **Python**, para a instalação do robot, execute o seguinte comando no terminal como administrador.
```	
	pip install robotframework
```

**SeleniumLibrary**
Após instalar o **Python** e **Robot Framework**, para a instalacao do SeleniumLibrary, execute o seguinte comando no terminal com administrador.
```	
	pip install --upgrade robotframework-seleniumlibrary
```

**FakerLibrary**
Biblioteca utilizada para a geração de dados aleatórios, execute como administrador no terminal.
```	
	pip install robotframework-faker
```

**ChromeDriver**
Faça download da versão compatível com seu navegador no [link](https://chromedriver.chromium.org/downloads)


Foi utilizada a IDE Visual Studio Code, juntamente com a extensão Robot Framework Language Server.

## Configuração
Pode -se alterar o navegador onde será executada a automação. Com as opções Firefox ou Chrome no arquivo **setup_teardown.robot**.

Caminho: automacao-robot\resources\shared\setup_teardown.robot


## Execução dos Testes

Para execução dos testes é necessário executar o seguinte comando:
```	
	robot <nomedoarquivo.robot>
```
Exemplo:
```
	robot cadastro_email_invalido.robot
```
**Importante:** A página de cadastro possui captcha, nos lugares onde foram identificadas suas aparições foi inserida uma pausa para interação manual do usuário. O teste seguirá sua execução normal após o período especificado.

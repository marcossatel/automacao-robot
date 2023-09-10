*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o portal Indeed
Test Teardown    Fechar o navegador

*** Test Cases ***
Validar cadastro de usuario existente

    Dado que clico em recusar os cookies
    E clico em acessar
    E preencho o campo de email com um email existente
    E clico em continuar 
    Então a solicitacao de senha e apresentada


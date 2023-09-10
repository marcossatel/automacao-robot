*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o portal Indeed
Test Teardown    Fechar o navegador

*** Test Cases ***
Validar cadastro de usuario com email invalido

    Dado que clico em recusar os cookies
    E clico em acessar
    E preencho o campo de email com dados invalidos
    E clico em continuar 
    Então a mensagem endereco de email invalida e apresentada


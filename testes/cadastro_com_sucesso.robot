*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que acesso o portal Indeed
Test Teardown    Fechar o navegador

*** Test Cases ***
Validar cadastro de usuario com email valido

    Dado que clico em recusar os cookies
    E clico em acessar
    E preencho o campo de email com dados validos
    E clico em continuar 
    E clico no botao candidato
    E preencho campo de senha
    E clico no captcha
    E clico no botao criar conta
    Então sou direcionado para a home do usuario


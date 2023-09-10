*** Settings ***
Resource    ../main.robot

*** Variables ***
${BOTAO_RECUSAR_TUDO}    id:onetrust-reject-all-handler
${ACESSAR}    //*[@data-gnav-element-name="SignIn"]
${CAMPO_EMAIL}    name:__email
${BOTAO_CONTINUAR}    //*[@data-tn-element="auth-page-email-submit-button"]
${CAPTCHA}    //*[@title="Widget contendo caixa de seleção para desafio de segurança hCaptcha"]
${CHECKBOX_CAPTCHA}    id:checkbox
${MSG_EMAIL_INVALIDO}    id:ifl-InputFormField-errorTextId-5 
${BOTAO_CANDIDATO}    id:auth_page_job_seeker_button 
${CAMPO_SENHA}    name:__password
${BOTAO_CRIAR_CONTA}    class:css-jorj5j
${NOTIFICACAO}    //*[@data-gnav-element-name="Notifications"]

*** Keywords ***
Dado que clico em recusar os cookies
    Click Element   ${BOTAO_RECUSAR_TUDO}

E clico em acessar
    Click Element    ${ACESSAR}

E preencho o campo de email com um email existente
    Input Text    ${CAMPO_EMAIL}    teste@teste.com

E clico em continuar
    Click Element    ${BOTAO_CONTINUAR}

Então a solicitacao de senha e apresentada
    Element Should Be Visible    name:__password

E preencho o campo de email com dados invalidos
    Input Text    ${CAMPO_EMAIL}    teste

Então a mensagem endereco de email invalida e apresentada
    ${contador}   Get Element Count    ${CAPTCHA} 
    #tratamento caso haja aparecimento do captcha: se o captcha aparecer aguarda 10 seg para interação manual
    IF   ${contador} > 0
        Select Frame  ${CAPTCHA}
        Click Element    ${CHECKBOX_CAPTCHA}
        Sleep    10s
        Unselect Frame
        Click Element    ${BOTAO_CONTINUAR}
        Element Should Be Visible    ${MSG_EMAIL_INVALIDO}
    ELSE
        Element Should Be Visible    ${MSG_EMAIL_INVALIDO}     
    END

E preencho o campo de email com dados validos
    ${email}    FakerLibrary.FreeEmail
    Input Text    ${CAMPO_EMAIL}    ${email}

E clico no botao candidato
    ${contador}    Get Element Count    ${BOTAO_CANDIDATO}    
    IF    ${contador} == 0
        Log    Teste falhou: Conta ja existe
    ELSE
        Click Element    ${BOTAO_CANDIDATO}        
    END

E preencho campo de senha
    Input Text    ${CAMPO_SENHA}    T12345678*

E clico no captcha
        Select Frame  ${CAPTCHA}
        Click Element    ${CHECKBOX_CAPTCHA}
        Sleep    10s
        Unselect Frame

E clico no botao criar conta
        Click Element    ${BOTAO_CRIAR_CONTA}     

Então sou direcionado para a home do usuario
    Element Should Be Visible    ${NOTIFICACAO}

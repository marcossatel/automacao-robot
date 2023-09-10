*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL}    https://br.indeed.com/
${BROWSER}    Firefox
${TEMPO}    2s

*** Keywords ***
Dado que acesso o portal Indeed  
    Open Browser    ${URL}    ${BROWSER}  
    Set Browser Implicit Wait    ${TEMPO}

Fechar o navegador
    Close Browser

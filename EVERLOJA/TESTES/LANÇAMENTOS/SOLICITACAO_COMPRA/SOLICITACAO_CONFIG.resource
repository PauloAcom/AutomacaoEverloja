*** Settings ***
Resource    ../../../RECURSOS/KEYWORDS/GENERAL_KEYWORDS.resource

*** Keywords ***
Usuário Acessa o Menu
    [Arguments]    ${menu}
    Acessar menu    ${menu}
    Page Should Contain    text=615 - Suprimentos
    Capture Page Screenshot    Usuário acessou menu Suprimentos

Usuário Logou no Everloja
    Usuário Acessa o Portal Everloja
    Usuário Preenche informações de Login
    Usuário Acessa o Dashboard do Everloja

Usuário Seleciona Opção do Campo           
    [Arguments]    ${campo}    ${valor}
    Selecionar opção do campo    ${campo}    ${valor}    

Usuário Seleciona Opção Item
    [Arguments]   ${campo}    ${valor} 
    Popular campo    ${campo}    ${valor} 
    
    

    
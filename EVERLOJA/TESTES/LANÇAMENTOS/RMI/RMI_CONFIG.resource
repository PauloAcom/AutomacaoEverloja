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

Usuário Busca Item
    Seleciona registro em campo    Empresa    2 - EMPRESA 2
    Seleciona registro em campo    Depósito    1 - ESTOQUE
    Popular Campo    Item    1000000


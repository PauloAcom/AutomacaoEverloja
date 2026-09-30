*** Settings ***
Resource    SOLICITACAO_CONFIG.resource

*** Test Cases ***
CT01 - Lançamento de Solicitação de Compra
    Given Usuário Logou no Everloja
    And Usuário Acessa o Menu    Suprimentos
    #And Usuário Busca Item
    #And Sleep    5s
    #And Wait Until Element Is Visible    xpath=//button[contains(., 'Buscar')]    10s 
    #And Click Element    xpath=//button[contains(., 'Buscar')]
    #And Sleep    15s
    And Selecionar opção do campo    Empresa    2 - EMPRESA 2
    And Selecionar opção do campo    Depósito    1 - ESTOQUE

    And Popular Campo    Item    103732

    And Wait Until Element Is Visible    xpath=//li[contains(., '103732')]    10s
    And Click Element    xpath=//li[contains(., '103732')]

    And Wait Until Element Is Visible    xpath=//button[contains(., 'Buscar')]    10s
    And Click Element    xpath=//button[contains(., 'Buscar')]

    Sleep    5s

[Teardown]    Close Browser 
*** Settings ***
Resource    SOLICITACAO_CONFIG.resource

*** Test Cases ***
CT01 - Lançamento de Solicitação de Compra
    Given Usuário Logou no Everloja
    And Usuário Acessa o Menu    Suprimentos
    And Usuário Seleciona Opção do Campo    Empresa    2 - EMPRESA 2
    And Usuário Seleciona Opção do Campo    Depósito    1 - ESTOQUE
    And Usuário Seleciona Opção Item    Item    103732
    And Usuário Clica no Botão    Buscar
    #And Usuário Seleciona Item da Grid    103732
    #And Usuário Seleciona Todos os Itens
    #Wait Until Element Is Visible    xpath=//div[text()='103732']    10s
    And Wait Until Element Is Visible    xpath=//div[text()='103732']    10s
    And Click Element    xpath=//div[text()='103732']

    Sleep    5s

    [Teardown]    Close Browser 
*** Settings ***
Resource    SOLICITACAO_CONFIG.resource

*** Test Cases ***
CT01 - Lançamento de Solicitação de Compra
    Given Usuário Logou no Everloja
    And Usuário Acessa o Menu    Suprimentos
    And Usuário Busca Item 

[Teardown]    Close Browser 
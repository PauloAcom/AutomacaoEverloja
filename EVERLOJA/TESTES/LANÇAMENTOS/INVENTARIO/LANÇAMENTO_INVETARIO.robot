*** Settings ***
Resource    INVENTARIO_CONFIG.resource

*** Test Cases ***

CT01 - Lançamento de Inventário
    Given Usuário Acessa o Portal Everloja
    And Usuário Preenche informações de Login
    And Usuário Acessa o Dashboard do Everloja
    [Teardown]    Close Browser

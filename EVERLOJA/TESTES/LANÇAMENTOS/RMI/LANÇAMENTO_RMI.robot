*** Settings ***
Resource    RMI_CONFIG.resource

*** Test Cases ***
CT01 - Lançamento de RMI
    Given Usuário Logou no Everloja
    And Usuário Acessa o Menu    Suprimentos
    When Usuário Busca Item
    Then Usuário Clica no Botão    Buscar
    And Usuário Seleciona Item da Grid    1000000
    And Usuário Clica no Botão    Lançamento RMI
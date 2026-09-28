*** Settings ***
Resource    RMI_CONFIG.resource

*** Test Cases ***
CT01 - Lançamento de RMI
    Given Usuário Logou no Everloja
    And Usuário Acessa o Menu    Suprimentos
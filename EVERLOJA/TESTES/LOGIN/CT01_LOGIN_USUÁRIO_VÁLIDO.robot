*** Settings ***
Resource    ../../RECURSOS/KEYWORDS/GENERAL_KEYWORDS.resource


*** Test Cases *** 
CT01 - Login Everloja - Usuário Válido
    [Documentation]    Teste criado para validação de login com usuário válido
    Given Usuário Acessa o Portal Everloja
    And Usuário Preenche informações de Login
    Then Usuário Acessa o Dashboard do Everloja
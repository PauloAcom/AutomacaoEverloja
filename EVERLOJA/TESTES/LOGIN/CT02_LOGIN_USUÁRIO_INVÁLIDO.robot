*** Settings ***
Resource    ../../RECURSOS/KEYWORDS/GENERAL_KEYWORDS.resource

*** Test Cases ***
CT02 - Login Everloja - Usuário inválido
    [Documentation]    Teste criado para validação de login com usuário inválido
    Given Usuário Acessa o Portal Everloja
    And Usuário Preenche informações de login inválidas    usuarioInvalido
    Then Usuário recebe mensagem de erro sobre login inválido
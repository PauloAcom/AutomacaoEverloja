*** Settings ***
Library    SeleniumLibrary
Resource    ../VARIAVEIS/LOGIN_VARIAVEL.resource

*** Keywords ***
Usuário Acessa o Portal Everloja
    Open Browser    ${url}    Chrome    options=add_argument("--start-maximized")
    Wait Until Element Is Visible    xpath=//*[text()='Portal da Loja']

Usuário Preenche informações de Login
    Input Text    xpath=//input[@id='entidade']    ${entidade}
    Input Text    xpath=//input[@id='login']    ${usuario}
    Input Text    xpath=//input[@id='senha']    ${senha}
    Capture Page Screenshot    Informações de login preenchidos
    Click Button    xpath=(//button[@type='button'])[3]

Usuário Acessa o Dashboard do Everloja
    Sleep    10s
    Wait Until Element Is Visible    //img[@alt='Logo']
    Capture Page Screenshot    Usuário chegou no Dashboard do EverLoja

Usuário Preenche informações de login inválidas
    [Arguments]    ${usuario}
    Input Text    xpath=//input[@id='entidade']    ${entidade}
    Input Text    xpath=//input[@id='login']    ${usuario}
    Input Text    xpath=//input[@id='senha']    ${senha}
    Click Button    xpath=(//button[@type='button'])[3]

Usuário recebe mensagem de erro sobre login inválido
    Wait Until Page Contains    Usuário não encontrado
    Capture Page Screenshot    Usuário não encontrado

Acessar menu
    [Arguments]    ${menu}
    Click Element    //div[@role='button' and @aria-label='${menu}']

Selecionar opção do campo
    [Arguments]    ${campo}    ${valor}
    Click Element    xpath=//p[text()='${campo}']/following::input[1]
    Sleep    5s
    Click Element    xpath=//li[contains(., '${valor}')]

Popular Campo
    [Arguments]    ${campo}    ${valor}
    Click Element    xpath=//p[text()='${campo}']/following::input[1]
    Sleep    5s
    Input Text    xpath=//p[text()='${campo}']/following::input[1]    ${valor}
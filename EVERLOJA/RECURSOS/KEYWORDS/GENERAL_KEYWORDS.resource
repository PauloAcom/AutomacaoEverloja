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
    Wait Until Element Is Visible    xpath=//li[contains(., '${valor}')]    10s
    Click Element    xpath=//li[contains(., '${valor}')]
    Sleep    1s

Popular Campo
    [Arguments]    ${campo}    ${valor}
    Click Element    xpath=//p[text()='${campo}']/following::input[1]
    Input Text    xpath=//p[text()='${campo}']/following::input[1]    ${valor}
    Wait Until Element Is Visible    xpath=//li[contains(., '${valor}')]    10s
    Click Element    xpath=//li[contains(., '${valor}')]

Seleciona registro em campo
    [Arguments]    ${campo}    ${valor}
    Click Element    //p[text()='${campo}']/following::button[contains(@class,'MuiIconButton-edgeEnd')][1]
    Wait Until Element Is Visible    xpath=//li[contains(., '${valor}')]    10s
    Click Element    xpath=//li[contains(., '${valor}')]

Usuário Clica no Botão
    [Arguments]    ${botao}
    Click Element    xpath=//button[contains(., '${botao}')]

#103732
Usuário Seleciona Item da Grid
    [Arguments]    ${item}
    Wait Until Element Is Visible    xpath=//div[@role='gridcell' and normalize-space()='${item}']    10s
    Click Element    //div[@role='row'][.//div[@role='gridcell' and normalize-space()='${item}']]//input[@type='checkbox' and @name='select_row']

Usuário Seleciona Todos os Itens
    Wait Until Element Is Visible    //input[@aria-label='Selecionar todas as linhas' and @type='checkbox']
    Click Element    //input[@aria-label='Selecionar todas as linhas' and @type='checkbox']
 

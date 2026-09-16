*** Settings ***

Library    SeleniumLibrary
Resource   ../locators/home_locators.robot

*** Keywords ***

Search Modul by Name
    [Arguments]    ${modul_name}
    Wait Until Element Is Visible    ${SEARCH_INPUT}    10s
    Input Text    ${SEARCH_INPUT}    ${modul_name}

Open Module
    [Arguments]    ${modul_name}
    Search Modul by Name    ${modul_name}
    ${MODULE_CARD}=    Set Variable    xpath=//div[@role="button" and .//p[normalize-space(.)="${modul_name}"]]
    Wait Until Element Is Visible    ${MODULE_CARD}    10s
    Click Element    ${INVOICE_CARD}
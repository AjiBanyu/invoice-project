*** Settings ***

Library    SeleniumLibrary
Resource   ../../locators/master_data/customer_locators.robot
Resource   ../../locators/home_locators.robot

*** Keywords ***

Halaman Dashboard
    Wait Until Element Is Visible    ${DASHBOARD_MENU}    10s
    Click Element    ${DASHBOARD_MENU}

Daftar Customer
    Click Element     ${MASTER_DATA_MENU}
    Wait Until Element Is Visible   xpath=//span[normalize-space(.)="Customer"]    5s
    Click Element     ${INVOICE_MENU}

Search Customer by Name
    [Arguments]    ${customer_name}
    Click Element    ${SEARCH_BUTTON}
    Input Text    ${SEARCH_INPUT}  ${customer_name}
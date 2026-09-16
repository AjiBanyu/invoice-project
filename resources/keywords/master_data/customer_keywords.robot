*** Settings ***

Library    SeleniumLibrary
Resource   ../../locators/master_data/customer_locators.robot

*** Keywords ***

Search Customer by Name
    [Arguments]    ${customer_name}
    Click Element    ${SEARCH_BUTTON}
    Input Text    ${SEARCH_INPUT}  ${customer_name}
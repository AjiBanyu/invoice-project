*** Settings ***

Library    SeleniumLibrary
Resource   ../locators/home_locators.robot

*** Keywords ***

Search Modul by Name
    [Arguments]    ${modul_name}
    Input Text    ${SEARCH_INPUT}    ${modul_name}


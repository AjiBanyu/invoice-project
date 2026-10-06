*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/organization_locators.robot
Resource    ../locators/home_locators.robot
Resource    ../common/ALL_keywords.robot


*** Keywords ***

Organisasi
    Wait Until Element Is Visible    ${PROFILE_ORGANIZATION}          20s
    Sleep    1s
    Click Element                    ${PROFILE_ORGANIZATION}
    Sleep    1s
    Wait Until Element Is Visible    ${SEARCH_ORGANIZATION}           10s
    Sleep    1s
    Realistic Type                   ${SEARCH_ORGANIZATION}           Internal
    Sleep    1s
    Wait Until Element Is Visible    ${RESULT_ORGANIZATION_SEARCH}    10s
    Sleep     1s
    Click Element                    ${RESULT_ORGANIZATION_SEARCH}
    Sleep     1s
    

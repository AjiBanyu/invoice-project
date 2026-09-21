*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/organization_locators.robot
Resource    ../locators/home_locators.robot


*** Keywords ***

Open Organization Dropdown
    Wait Until Element Is Visible    ${ORGANIZATION_DROPDOWN}    10s
    Click Element    ${ORGANIZATION_DROPDOWN}
Select Internal Testing Organization
    Open Organization Dropdown
    Wait Until Element Is Visible    ${INTERNAL_TESTING_ORG}    10s
    Click Element    ${INTERNAL_TESTING_ORG}
    Wait Until Element Is Visible    ${DASHBOARD_MENU}    10s

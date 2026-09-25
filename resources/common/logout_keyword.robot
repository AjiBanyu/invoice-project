*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/logout_locators.robot


*** Keywords ***
Logout
    Wait Until Element Is Visible    ${PROFILE_LOGOUT}    50s
    Click Element                    ${PROFILE_LOGOUT}
    Sleep                            1s
    Wait Until Element Is Visible    ${BTN_LOGOUT}        50s
    Sleep                            1s
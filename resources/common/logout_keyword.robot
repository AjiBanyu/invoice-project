*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/logout_locators.robot


*** Keywords ***
Logout
    Reload Page
    Wait Until Element Is Visible    ${PROFILE_LOGOUT}    50s
    Sleep                            2s
    Click Element                    ${PROFILE_LOGOUT}
    Wait Until Element Is Visible    ${BTN_LOGOUT}        50s
    Sleep                            2s
    Click Element                    ${BTN_LOGOUT}

    # Modal Dialog Logout  
    Wait Until Element Is Visible    ${MODAL_TITLE_LOGOUT}    20s
    Element Should Be Visible        ${MODAL_TITLE_LOGOUT}
    Wait Until Element Is Visible    ${popup_konfirm_logout_Yes}    20s
    Sleep                            2s
    Click Element                    ${popup_konfirm_logout_Yes}
    Sleep                            2s
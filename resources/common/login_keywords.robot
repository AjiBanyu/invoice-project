*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/login_locators.robot
Resource    ../../config/environment.robot
Resource    ../../config/login_data.robot

*** Keywords ***

Open Browser Web
    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Sleep    1


# Verify Login
Verify Before Login
    Wait Until Element Is Visible    ${VERIFY_TITLE_PAGE}          50s
    Element Should Be Visible        ${VERIFY_TITLE_PAGE}
    Wait Until Element Is Visible    ${VERIFY_FORGOT_PASSWORD}     50s
    Element Should Be Visible        ${VERIFY_FORGOT_PASSWORD}
    Wait Until Element Is Visible    ${VERIFY_VERIFY_ACCOUNT}      50s
    Element Should Be Visible        ${VERIFY_VERIFY_ACCOUNT}
    Wait Until Element Is Visible    ${VERIFY_BTN_NRP}             50s
    Element Should Be Visible        ${VERIFY_BTN_NRP}
    Wait Until Element Is Visible    ${VERIFY_CREATE_ACCOUNT}      50s
    Element Should Be Visible        ${VERIFY_CREATE_ACCOUNT}

# step login
Input Email 
    [Arguments]    ${email}  
    Input Text    ${EMAIL_FIELD}  ${email}
Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}  ${password}   
Click Login Button
    Click Element   ${LOGIN_BUTTON}


# Test Scenario & Case Login
Login User
    Wait Until Element Is Visible    ${EMAIL_FIELD}     50s
    Sleep                            1s
    Input Email                      ${VALID_EMAIL}
    Sleep                            1s
    Wait Until Element Is Visible    ${PASSWORD_FIELD}  50s
    Sleep                            1s
    Input Password                   ${VALID_PASSWORD}
    Sleep                            1s
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    50s
    Sleep                            1s
    Click Element                    ${LOGIN_BUTTON}
    Sleep                            1s



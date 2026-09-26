*** Settings ***

Library    SeleniumLibrary
Resource   ../common/ALL_keywords.robot
Resource   ../locators/registration_locators.robot

*** Keywords ***

Open Registration Page
    Wait Until Element Is Visible    ${VERIFY_CREATE_ACCOUNT}    50s
    Click Element                    ${VERIFY_CREATE_ACCOUNT}
    Sleep                            1s

# Verify Create Page
Verify Before Create Account
    Wait Until Element Is Visible    ${VERIFY_TITLE_CREATE_ACCOUNT_PAGE}    50s
    Element Should Be Visible        ${VERIFY_TITLE_CREATE_ACCOUNT_PAGE} 
    Wait Until Element Is Visible    ${VERIFY_CONTIINUE_DISABLE}            50s
    Element Should Be Visible        ${VERIFY_CONTIINUE_DISABLE}
    Wait Until Element Is Visible    ${VERIFY_LOGIN}                        50s
    Element Should Be Visible        ${VERIFY_LOGIN}

# step Create
Input Full Name
    [Arguments]    ${full_name}
    Realistic Type     ${FULL_NAME_FIELD}    ${full_name}      
Input Email 
    [Arguments]    ${email}  
    Realistic Type     ${EMAIL_FIELD}        ${email}  
Input Password
    [Arguments]    ${password}  
    Realistic Type     ${PASSWORD_FIELD}     ${password}  
Input Verify Password
    [Arguments]    ${verify_password}  
    Realistic Type     ${VERIFY_PASSWORD_FIELD}     ${verify_password}  
Click Continue Button
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}    50s
    Sleep                            1s
    Click Element                    ${CONTINUE_BUTTON}
    Sleep                            1s


# Test Scenario & Case Login
Create New Account
    [Arguments]    ${full_name}  ${email}  ${password}  ${verify_password}
    Wait Until Element Is Visible    ${FULL_NAME_FIELD}            50s
    Sleep                            1s
    Input Full Name                  ${full_name}
    Sleep                            1s
    Wait Until Element Is Visible    ${EMAIL_FIELD}                50s
    Sleep                            1s
    Input Email                      ${email}
    Sleep                            1s
    Wait Until Element Is Visible    ${PASSWORD_FIELD}             50s
    Sleep                            1s
    Input Password                   ${password}
    Sleep                            1s
    Wait Until Element Is Visible    ${VERIFY_PASSWORD_FIELD}      50s
    Sleep                            1s
    Input Verify Password            ${verify_password}
    Sleep                            1s
    Click Continue Button

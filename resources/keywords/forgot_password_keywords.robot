*** Settings ***

Library    SeleniumLibrary
Resource   ../locators/forgot_passwrod_locators.robot
Resource   ../locators/login_locators.robot
Resource    ../../config/login_data.robot

*** Keywords ***

Open Forgot Page
    Wait Until Element Is Visible    ${VERIFY_FORGOT_PASSWORD}    50s
    Click Element                    ${VERIFY_FORGOT_PASSWORD}
    Sleep                            1s

# Verify Forgot Password
Verify Before Sent Email
    Wait Until Element Is Visible    ${VERIFY_TITLE_PAGE}          50s
    Element Should Be Visible        ${VERIFY_TITLE_PAGE}
    Wait Until Element Is Visible    ${VERIFY_CONTINUE_DISABLE}     50s
    Element Should Be Visible        ${VERIFY_CONTINUE_DISABLE}

# step Forgot Password
Input Email 
    [Arguments]    ${email}  
    Input Text    ${EMAIL_FIELD}  ${email}  
Click Login Button
    Click Element   ${CONTINUE_BUTTON}


# Test Scenario & Case Login
Reset Password
    Wait Until Element Is Visible    ${EMAIL_FIELD}     50s
    Sleep                            1s
    Input Email                      ${VALID_EMAIL}
    Sleep                            1s
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}    50s
    Sleep                            1s
    Click Element                    ${CONTINUE_BUTTON}
    Sleep                            1s

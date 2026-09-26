*** Settings ***

Library    SeleniumLibrary
Resource   ../locators/forgot_passwrod_locators.robot
Resource   ../common/ALL_keywords.robot
Resource    ../../config/login_data.robot

*** Keywords ***

Open Forgot Page
    Wait Until Element Is Visible    ${VERIFY_FORGOT_PASSWORD}    50s
    Click Element                    ${VERIFY_FORGOT_PASSWORD}
    Sleep                            1s

# Verify Forgot Password
Verify Before Sent Email
    Wait Until Element Is Visible    ${VERIFY_TITLE_FORGOT_PAGE}    50s
    Element Should Be Visible        ${VERIFY_TITLE_FORGOT_PAGE} 
    # Wait Until Element Is Visible    ${VERIFY_CONTINUE_DISABLE}     50s
    # Element Should Be Visible        ${VERIFY_CONTINUE_DISABLE}

# step Forgot Password
Input Email 
    [Arguments]    ${email}  
    Realistic Type   
    ...            ${EMAIL_FORGOT_FIELD}  
    ...            ${email}  
Click Continue Button
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}    50s
    Sleep                            1s
    Click Element                    ${CONTINUE_BUTTON}
    Sleep                            1s


# Test Scenario & Case Login
Forgot Password
    [Arguments]    ${email}
    Wait Until Element Is Visible    ${EMAIL_FORGOT_FIELD}     50s
    Sleep                            1s
    Input Email                      ${email}
    Sleep                            1s
    Click Continue Button

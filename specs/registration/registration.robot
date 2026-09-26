*** Settings ***
Resource  ../../config/registration_data.robot
Resource  ../../resources/common/browser_web_keywords.robot
# Resource  ../../resources/common/login_keywords.robot
Resource  ../../resources/keywords/registration_keywords.robot

*** Test Cases ***
# POSITIVE
TC-AUTH-010 Valid Registration
    [Tags]    Positive
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${NEW_EMAIL}  ${VALID_PASSWORD}  ${VALID_PASSWORD}
    Click Continue Button
TC-AUTH-011 Minimum valid Password
    [Tags]     Positive
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${NEW_EMAIL}  Ab1!xyz11  Ab1!xyz11
    Element Should Be Visible     ${VERIFY_CONTIINUE_DISABLE}    50s

# NEGATIVVE
TC-AUTH-012 Empty Full Name
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${EMPTY}  ${NEW_EMAIL}  Ab1!xyz11  Ab1!xyz11
    Element Should Be Visible     ${VERIFY_CONTIINUE_DISABLE}    50s
TC-AUTH-013 Invalid Email Format
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${INVALID_EMAIL}  Ab1!xyz11  Ab1!xyz11
    Element Should Be Visible     ${VERIFY_CONTIINUE_DISABLE}    50s
TC-AUTH-014 Registered Email
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${REGISTERED_EMAIL}  ${VALID_PASSWORD}  ${VALID_PASSWORD}
    Click Continue Button
TC-AUTH-015 Password < 8 Char
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${NEW_EMAIL}  Ab1!xyz  Ab1!xyz
    Element Should Be Visible     ${VERIFY_CONTIINUE_DISABLE}    50s
TC-AUTH-016 Password Without UpperCase
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account  ${NEW_USER_NAME}  ${NEW_EMAIL}  ${WITHOUT_UPPERCASE}  ${WITHOUT_UPPERCASE}  
    Element Should Be Visible    ${VERIFY_CONTIINUE_DISABLE}     50s
TC-AUTH-017 Password Without lowerCase
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account  ${NEW_USER_NAME}  ${NEW_EMAIL}  ${WITHOUT_LOWERCASE}  ${WITHOUT_LOWERCASE}  
    Element Should Be Visible    ${VERIFY_CONTIINUE_DISABLE}     50s
TC-AUTH-018 Password Without Number
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account  ${NEW_USER_NAME}  ${NEW_EMAIL}  ${WITHOUT_NUMBER}  ${WITHOUT_NUMBER}  
    Element Should Be Visible    ${VERIFY_CONTIINUE_DISABLE}     50s
TC-AUTH-019 Password Without Special Char
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account  ${NEW_USER_NAME}  ${NEW_EMAIL}  ${WITHOUT_SPEC_CHAR}  ${WITHOUT_SPEC_CHAR}  
    Element Should Be Visible    ${VERIFY_CONTIINUE_DISABLE}     50s
TC-AUTH-020 Password Mismatch
    [Tags]    Negative
    Open Browser Web
    Open Registration Page
    Verify Before Create Account
    Create New Account  ${NEW_USER_NAME}  ${NEW_EMAIL}  ${VALID_PASSWORD}  ${MISMATCH_PASSWORD}  
    Click Continue Button



     

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
TC-AUTH-011 Minimum valid Password
    [Tags]     Positive
    Open Browser
    Open Registration Page
    Verify Before Create Account
    Create New Account   ${NEW_USER_NAME}  ${NEW_EMAIL}  Ab1!xyz  Ab1!xyz


     

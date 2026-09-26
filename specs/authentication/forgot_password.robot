*** Settings ***
Resource  ../resources/common/login_keywords.robot
Resource  ../../resources/keywords/forgot_password_keywords.robot


*** Test Cases ***

TC-AUTH-008 Forgot Password with Registered Email
    [Tags]    Positive
    Open Browser Web
    Verify Before Login
    Open Forgot Page
    Verify Before Sent Email
    Forgot Password  ${VALID_EMAIL}
TC-AUTH-009 Forgot Password with Unregistered Email
    [Tags]    Positive
    Open Browser Web
    Verify Before Login
    Open Forgot Page
    Verify Before Sent Email
    Forgot Password  ${INVALID_EMAIL}
*** Settings ***
Resource  ../../resources/common/browser_web_keywords.robot
Resource  ../resources/common/login_keywords.robot
Resource  ../../resources/common/home_keywords.robot

*** Test Cases ***

TC-AUTH-001 login with Valid Credentials
    [Tags]    Positive
    Open Browser Web
    Verify Before Login
    Login User  ${VALID_EMAIL}  ${VALID_PASSWORD}
    Verify Dashboard
TC-AUTH-002 Invalid Password
    [Tags]    Negative
    Open Browser Web
    Verify Before Login
    Login User  ${VALID_EMAIL}  ${INVALID_PASSWORD}
TC-AUTH-003 Invalid Email
    [Tags]    Negative
    Open Browser Web
    Verify Before Login
    Login User  ${INVALID_EMAIL}  ${VALID_PASSWORD}
TC-AUTH-004 Empty Email and Password Valid
    [Tags]    Negative
    Open Browser Web
    Verify Before Login
    Login User  ${EMPTY}  ${VALID_PASSWORD}
TC-AUTH-005 Email Valid and Empty Password
    [Tags]    Negative
    Open Browser Web
    Verify Before Login
    Login User  ${VALID_EMAIL}  ${EMPTY}
TC-AUTH-006 Empty Email and Password
    [Tags]    Negative
    Open Browser Web
    Verify Before Login
    Login User  ${EMPTY}  ${EMPTY}
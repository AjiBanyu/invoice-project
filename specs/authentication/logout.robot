*** Settings ***
Resource  ../../resources/common/browser_web_keywords.robot
Resource  ../../resources/common/login_keywords.robot
Resource  ../../resources/common/home_keywords.robot
Resource  ../../resources/common/logout_keyword.robot


*** Test Cases ***

TC-AUTH-007 Logout Successfully
    [Tags]    Positive
    Open Browser Web
    Verify Before Login
    Login User  ${VALID_EMAIL}  ${VALID_PASSWORD}
    Verify Dashboard
    Logout
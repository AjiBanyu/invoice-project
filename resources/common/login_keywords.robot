*** Settings ***

Library  SeleniumLibrary
Resource  ../locators/login_locators.robot
Resource    ../../config/environment.robot
Resource    ../../config/login_data.robot
Resource    ../common/dashboard_keywords.robot

*** Keywords ***

Open Login Page
    Open Browser  ${LOGIN_URL}  chrome
    Maximize Browser Window
Input Email 
    [Arguments]    ${email}  
    Input Text    ${EMAIL_FIELD}  ${email}
Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}  ${password}   
Click Login Button
    Click Element   ${LOGIN_BUTTON}


Login As Valid User
    Open Login Page
    Input Email    ${VALID_EMAIL}
    Input Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Base URL


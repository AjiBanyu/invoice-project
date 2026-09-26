*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/environment.robot


*** Keywords ***

# buka browser
Open Browser Web
    Open Browser  ${URL}  chrome
    Maximize Browser Window
    Sleep    1
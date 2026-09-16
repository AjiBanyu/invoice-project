*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/environment.robot


*** Keywords ***

Verify Dashboard
    #Capture Page Screenshot
    Wait Until Location Contains
    ...  ${BASE_URL}
    ...  20s
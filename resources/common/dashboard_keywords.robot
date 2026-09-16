*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/environment.robot


*** Keywords ***

Verify Base URL
    #Capture Page Screenshot
    Wait Until Location Contains
    ...  ${BASE_URL}
    ...  20s

Verify Invoice Dashboard
    Wait Until Location Contains
    ...    /invoices/dashboard
    ...    20s
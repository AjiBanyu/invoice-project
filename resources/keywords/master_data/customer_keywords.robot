*** Settings ***

Library    SeleniumLibrary
Resource   ../../locators/master_data/customer_locators.robot
Resource   ../../locators/home_locators.robot
Resource   ../../common/ALL_keywords.robot

*** Keywords ***

View Modul Customer
    Wait Until Element Is Visible     ${MASTER_DATA_MENU}    10s
    Click Element                     ${MASTER_DATA_MENU}
    Sleep    1s
    Wait Until Element Is Visible     ${CUSTOMER_MENU}       10s
    Click Element                     ${CUSTOMER_MENU}
    Sleep    1s
Verify Customer Page
    Wait Until Element Is Visible    ${TITLE_PAGE}                 50s
    Element Should Be Visible        ${TITLE_PAGE}
    Wait Until Element Is Visible    ${TAMBAH_CUSTOMER_BUTTON}     50s
    Element Should Be Visible        ${TAMBAH_CUSTOMER_BUTTON}
Search Customer By Name
    Wait Until Element Is Visible    ${SEARCH_BUTTON}        10s
    Click Element                    ${SEARCH_BUTTON}
    Sleep    1s
    Wait Until Element Is Visible    ${SEARCH_INPUT}         10s
    Realistic Type                   ${SEARCH_INPUT}         ${search_Cust_value}
    Sleep    1s
    Wait Until Element is Visible    ${VERIFY_RESULT}        10s
    Element Should Be Visible        ${VERIFY_RESULT}
    Sleep    1s
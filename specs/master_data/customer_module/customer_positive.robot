*** Settings ***
Library   SeleniumLibrary
Resource  ../resources/common/login_keywords.robot
Resource  ../resources/common/organization_keywords.robot
Resource  ../resources/common/navigation_keywords.robot



*** Test Cases ***

TS-CUSTOMER-001 Search nama customer valid

    [Tags]    positive
   
    Login As Valid User
    Select Internal Testing Organization
    Open Module    Invoices
    Verify Invoice Dashboard
    Sleep    2s
    # Verify Dashboard        
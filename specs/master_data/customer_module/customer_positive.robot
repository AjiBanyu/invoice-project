*** Settings ***
Library   SeleniumLibrary
Resource  ../../../resources/common/login_keywords.robot
Resource  ../../../resources/common/organization_keywords.robot
Resource  ../../../resources/common/navigation_keywords.robot
Resource  ../../../resources/keywords/master_data/customer_keywords.robot
Resource  ../../../resources/keywords/home_keywords.robot



*** Test Cases ***

TS-CUSTOMER-001 Dashboard Invoice

    [Tags]    positive
   
    Login As Valid User
    Select Internal Testing Organization
    Open Module    Invoices
    Verify Invoice Dashboard
    Sleep    2s
    # Verify Dashboard  

TS-CUSTOMER-002 Daftar Customer

    [Tags]    positive
    Login As Valid User
    Select Internal Testing Organization
    Open Module    Invoices
    Verify Invoice Dashboard
    Daftar Customer
    Sleep    2s

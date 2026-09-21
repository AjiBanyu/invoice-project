*** Settings ***
Resource  ../resources/common/login_keywords.robot
Resource  ../resources/common/organization_keywords.robot
Resource  ../resources/common/navigation_keywords.robot
Resource  ../resources/keywords/master_data/customer_keywords.robot


*** Test Cases ***

TS-LOGIN-001 Testing Login

    [Tags]    positive

    Login As Valid User
    Select Internal Testing Organization
    Halaman Dashboard
    Daftar Customer
    # Open Module    Invoices
    # Verify Invoice Dashboard
    Sleep    10s
    # Verify Dashboard       
*** Settings ***
Resource  ../resources/common/login_keywords.robot
Resource  ../resources/common/organization_keywords.robot
Resource  ../resources/common/navigation_keywords.robot
Resource  ../resources/keywords/master_data/customer_keywords.robot
Resource  ../resources/common/home_keywords.robot
Resource  ../resources/common/logout_keyword.robot


*** Test Cases ***

Login Web
    Open Browser Web
    Verify Before Login
    Login User
Verify Dashboard
    Verify Dashboard
Logout
    logout
    # Open Module    Invoices
    # Verify Invoice Dashboard
    # Sleep    10s
    # Verify Dashboard       
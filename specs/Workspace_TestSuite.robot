*** Settings ***
Resource  ../resources/common/login_keywords.robot
Resource  ../resources/common/organization_keywords.robot
Resource  ../resources/common/navigation_keywords.robot
Resource  ../resources/keywords/master_data/customer_keywords.robot
Resource  ../resources/common/home_keywords.robot
Resource  ../resources/common/logout_keyword.robot
Resource  ../resources/keywords/forgot_password_keywords.robot


*** Test Cases ***

# Login Web
#     Open Browser Web
#     Verify Before Login
    # Login User
# Verify Dashboard
#     Verify Dashboard
# Logout
#     logout
    # Open Module    Invoices
    # Verify Invoice Dashboard
    # Sleep    10s
    # Verify Dashboard   

# Forgot Password
Forgot Password
    Open Browser Web
    Verify Before Login
    Open Forgot Page
    Verify Before Sent Email
    Reset Password

*** Settings ***
Library     SeleniumLibrary
Resource  ../../config/data/driven_customer_keyword.robot
Resource  ../../resources/common/browser_web_keywords.robot
Resource  ../../resources/locators/master_data/customer_locators.robot
Resource  ../../resources/keywords/master_data/customer_keywords.robot
Resource  ../../resources/common/organization_keywords.robot
Resource  ../../resources/keywords/master_data/customer_keywords.robot
Resource  ../../resources/common/logout_keyword.robot
Resource  ../../resources/keywords/login_and_open_customer_keywords.robot
Resource  ../../resources/common/ALL_keywords.robot

Suite Setup       Login and Open Customer
Suite Teardown    Logout And Close Browser

*** Test Cases ***

# Login Web Chrome
#     Open Browser Web
#     Login User   ${VALID_EMAIL}  ${VALID_PASSWORD}
# Switch Organization
#     Switch Organisasi
# Modul Customer
#     View Modul Customer
#     Verify Customer Page
# Search Customer By Name
#     Read Workbook Customer  POSITIVE
#     # Search Customer By Name
#     Search By Shourcut
#     Clear Search Input
# Logout
#     Logout

### Approach POSITIVE 

TC-CS-001 Search Customer with Existing Customer Name
    [Tags]     Positive
    Read Workbook Customer  POSITIVE
    Press Keys    NONE  /
    Search Customer By Name

TC-CS-002 Search Customer with Existing Email
    [Tags]     Positive
    Read Workbook Customer  POSITIVE
    Search Customer By Email

TC-CS-003 Search Customer with Partial Name
    [Tags]     Positive
    Read Workbook Customer  POSITIVE
    Search Customer By Partial Name



# ### Approach NEGATIVE

TC-CS-004 Search Customer with Non-Existing Customer Name
    [Tags]    Negative
    Read Workbook Customer  NEGATIVE
    Search Customer By Name



    
    
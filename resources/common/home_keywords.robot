*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/environment.robot
Resource    ../locators/home_locators.robot


*** Keywords ***

Verify Dashboard
    Wait Until Element Is Visible   ${ASIDE_COMPONENT}    50s
    Element Should Be Visible       ${LOGO}
    Wait Until Element Is Visible   ${HEADER_COMPONENT}   50s
    Wait Until Element Is Visible   ${CONTENT_COMPONENT}  50s
    Sleep    5s
    
    #Capture Page Screenshot
    # Wait Until Location Contains
    # ...  ${BASE_URL}
    # ...  20s

# Verify Invoice Dashboard
#     Wait Until Location Contains
#     ...    /invoices/dashboard
#     ...    20s

# Verify Invoice Master Data - Customer
#     Wait Until Location Contains
#     ...    /invoices/client
#     ...    20s
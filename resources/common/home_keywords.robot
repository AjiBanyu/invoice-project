*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/environment.robot
Resource    ../locators/home_locators.robot


*** Keywords ***

    
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


Verify Dashboard
    Wait Until Element Is Visible   ${ASIDE_COMPONENT}    50s
    Element Should Be Visible       ${LOGO}
    Wait Until Element Is Visible   ${HEADER_COMPONENT}   50s
    Element Should Be Visible       ${HEADER_COMPONENT}
    Wait Until Element Is Visible   ${CONTENT_COMPONENT}  50s
    Element Should Be Visible       ${CONTENT_COMPONENT}
    Sleep    5s

Verify Logged in Account
    # [Arguments]    ${expected_name}    ${expected_email}


    # ${actual_name} =      Get Text        ${LOGGED_IN_NAME}
    ${actual_email} =     Get Text        ${LOGGED_IN_EMAIL}

    # Log    Expected Name : ${expected_name}
    # Log    Actual Name : ${actual_name}

    #  Simpan Log Email
    Log    Expected Email : ${LOGGED_IN_EXPECTED_EMAIL}
    Log    Actual Email : ${actual_email}

    Should Be Equal
    ...    ${actual_email}
    ...    ${LOGGED_IN_EXPECTED_EMAIL}
    ...    User yang login tidak sesuai

    



    
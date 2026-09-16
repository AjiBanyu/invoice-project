*** Settings ***
Resource  ../resources/common/login_keywords.robot
Resource  ../resources/common/organization_keywords.robot
Resource  ../resources/keywords/home_keywords.robot



*** Test Cases ***

TS-LOGIN-001 Testing Login

    [Tags]    positive

    Login As Valid User
    Select Internal Testing Organization
    Search Modul by Name    invoice
    Sleep    2s
    # Verify Dashboard        
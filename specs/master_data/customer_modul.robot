*** Settings ***
Library     SeleniumLibrary
Resource  ../../config/data/driven_customer_keyword.robot
Resource  ../../resources/common/browser_web_keywords.robot
Resource  ../../resources/locators/master_data/customer_locators.robot
Resource  ../../resources/keywords/master_data/customer_keywords.robot
Resource  ../../resources/common/login_keywords.robot
Resource  ../../resources/common/organization_keywords.robot
Resource  ../../resources/keywords/master_data/customer_keywords.robot
Resource  ../../resources/common/logout_keyword.robot

*** Test Cases ***

Login Web Chrome
    Open Browser Web
    Login User   ${VALID_EMAIL}  ${VALID_PASSWORD}
Switch Organization
    Organisasi
Modul Customer
    View Modul Customer
    Verify Customer Page
Search Customer By Name
    Read Workbook Customer
    Search Customer By Name
Logout
    Logout


    
    
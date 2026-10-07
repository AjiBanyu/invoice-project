*** Settings ***
Resource    ../common/browser_web_keywords.robot
Resource    ../common/login_keywords.robot
Resource    ../common/organization_keywords.robot
Resource    ../keywords/master_data/customer_keywords.robot


*** Keywords ***
Login and Open Customer
    Open Browser Web
    Verify Before Login
    Login User   ${VALID_EMAIL}  ${VALID_PASSWORD}
    Switch Organisasi
    View Modul Customer
    Verify Customer Page

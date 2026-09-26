*** Settings ***
Library     SeleniumLibrary
Library     String
Library     DateTime

*** Keywords ***
Realistic Type
    [Arguments]      ${locator}                    ${text}
    Click Element    ${locator}
    @{chars}=        Split String To Characters    ${text}
    FOR              ${char}                       IN         @{chars}
    Input Text       ${locator}                    ${char}
    Sleep            0.1s
    END
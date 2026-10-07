*** Settings ***
Library     SeleniumLibrary
Library     String
Library     DateTime
Resource    ../common/logout_keyword.robot

*** Keywords ***
Realistic Type
    [Arguments]      ${locator}                    ${text}
    Click Element    ${locator}
    @{chars}=        Split String To Characters    ${text}
    FOR              ${char}                       IN         @{chars}
    Input Text       ${locator}                    ${char}
    Sleep            0.1s
    END
Clear Element
    [Arguments]      ${elements}
    Click Element    ${elements}
    Press Keys       ${elements}    COMMAND+A    DELETE
Logout And Close Browser
    Logout
    Close All Browsers
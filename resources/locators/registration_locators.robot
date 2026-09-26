*** Variables ***

# Verify Element
${VERIFY_CREATE_ACCOUNT}             xpath=//*[@id="root"]/div/div[2]/div/div/div/div[2]/div[3]/a
${VERIFY_TITLE_CREATE_ACCOUNT_PAGE}  xpath=//*[@id="root"]/div/div[2]/div/div/div[2]/div/div[1]/p[1]
${VERIFY_CONTIINUE_DISABLE}          xpath=//button[.//span[normalize-space(.)="Continue"]]
${VERIFY_LOGIN}                      xpath=//a[normalize-space(.)="Log in"]
# Input Register
${FULL_NAME_FIELD}                    xpath=//input[@id="fullNameInput"]
${EMAIL_FIELD}                        xpath=//input[@id="emailInput"]
${PASSWORD_FIELD}                     xpath=//input[@id="passwordInput"]
${VERIFY_PASSWORD_FIELD}              xpath=//input[@id="confirmPasswordInput"]
${CONTINUE_BUTTON}                    xpath=//button[.//span[normalize-space(.)="Continue"]]
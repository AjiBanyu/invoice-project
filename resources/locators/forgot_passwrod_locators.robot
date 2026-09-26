*** Variables ***

# Verify Element
${VERIFY_FORGOT_PASSWORD}    xpath=//*[@id="root"]/div/div[2]/div/div/div/div[2]/div[1]/form/div/div[3]/a[1]
${VERIFY_TITLE_FORGOT_PAGE}  xpath=//*[@id="root"]/div/div[2]/div/div/div[2]/div/div/p[1]
${VERIFY_CONTINUE_DISABLE}   xpath=//*[@id="root"]/div/div[2]/div/div/div[2]/div/form/div/button

# Input Email
${EMAIL_FORGOT_FIELD}        xpath=//*[@id="emailInput"]
${CONTINUE_BUTTON}           xpath=//*[@id="root"]/div/div[2]/div/div/div[2]/div/form/div/button
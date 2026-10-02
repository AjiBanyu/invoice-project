*** Variables ***

# element logout
${PROFILE_LOGOUT}        xpath=(//span[contains(@class, 'sa-avatar')])[1]
${BTN_LOGOUT}            xpath=//*[normalize-space()='Logout']
${MODAL_TITLE_LOGOUT}    xpath=//*[contains(@class, 'sa-dialog-title') and normalize-space(.) = 'Confirmation Logout']
${popup_konfirm_logout_Yes}          xpath=//*[contains(normalize-space(text()), 'Yes, Sure')]
${popup_konfirm_logout_Cancel}      xpath=//*[contains(normalize-space(text()), 'Cancel')]
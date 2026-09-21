*** Variables ***

${SEARCH_BUTTON}    css=button[aria-label="Search"]
${SEARCH_INPUT}     xpath=//div[contains(@class,"sa-tf")]//input
${FILTER_BUTTON}    xpath=//button[@aria-label="Add filter"]   
${FILTER_STATUS}    xpath=//button[.//span[normalize-space(.)="Status"]]
${FILTER_KONTRAK}   xpath=//button[.//span[normalize-space(.)="Tanggal Kontrak"]]
${AKTIF_STATUS}     xpath=//button[.//span[normalize-space(.)="Aktif"]]

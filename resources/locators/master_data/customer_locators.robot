*** Variables ***

## Search Engine
# ${SEARCH_BUTTON}             css=button[aria-label="Search"]
${SEARCH_BUTTON}             xpath=//button[@aria-label="Search"]
${SEARCH_INPUT}              xpath=//div[contains(@class,"sa-tf")]//input
${CLEAR_SEARCH}              xpath=//button[@aria-label="Clear input"]

${FILTER_BUTTON}             xpath=//button[@aria-label="Add filter"]   
${FILTER_STATUS}             xpath=//button[.//span[normalize-space(.)="Status"]]
${FILTER_KONTRAK}            xpath=//button[.//span[normalize-space(.)="Tanggal Kontrak"]]
${AKTIF_STATUS}              xpath=//button[.//span[normalize-space(.)="Aktif"]]

${TITLE_PAGE}                xpath=//h3[normalize-space(.)='Customer']
${TAMBAH_CUSTOMER_BUTTON}    xpath=//button[.//span[normalize-space()="Tambah Customer"]]

${VERIFY_RESULT}             xpath=//*[@id="root"]/div/div/main/main/div[2]/table/tbody/tr/td[1]
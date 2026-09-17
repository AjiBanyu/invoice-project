*** Variables ***

${SEARCH_INPUT}     xpath=//input[@placeholder="Cari modul..."]
${INVOICE_CARD}     xpath=//p[normalize-space(.)="Invoices"]/ancestor::div[@role="button"]

# Modul
${DASHBOARD_MENU}      xpath=//button[.//span[normalize-space(.)="Dashboard"]]
${MASTER_DATA_MENU}    xpath=//button[.//span[normalize-space(.)="Master Data"]]
${INVOICE_MENU}        xpath=//button[.//span[normalize-space(.)="Customer"]]

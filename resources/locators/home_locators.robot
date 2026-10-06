*** Variables ***

# Element Layout Page
${ASIDE_COMPONENT}             xpath=//*[@id="root"]/div/aside
${HEADER_COMPONENT}            xpath=//*[@id="root"]/div/div/header
${CONTENT_COMPONENT}           xpath=//*[@id="root"]/div/div/main

# Aside Component
${LOGO}                        xpath=//*[@id="root"]/div/aside/div[1]/div
${LOGGED_IN_NAME}              xpath=//*[@id="root"]/div/div/header/div[2]/div[3]/div/div/div/p[1]
${LOGGED_IN_EMAIL}             xpath=//*[@id="root"]/div/div/header/div[2]/div[3]/div/div/div/p[2]


${SEARCH_INPUT}                xpath=//input[@placeholder="Cari modul..."]
${INVOICE_CARD}                xpath=//p[normalize-space(.)="Invoices"]/ancestor::div[@role="button"]

# Modul Invoice
${DASHBOARD_MENU}              xpath=//button[.//span[normalize-space()="Dashboard"]]
${MASTER_DATA_MENU}            xpath=//button[.//span[normalize-space(.)="Master Data"]]
${CUSTOMER_MENU}               xpath=//button[.//span[normalize-space(.)="Customer"]]
${MATERIAL_GROUP_MENU}         xpath=//button[.//span[normalize-space(.)="Material Group"]]
${ITEMS_MENU}                  xpath=//button[.//span[normalize-space(.)="Items"]]
${LOKASI_MENU}                 xpath=//button[.//span[normalize-space(.)="Lokasi"]]
${KATEGORI_MENU}               xpath=//button[.//span[normalize-space(.)="Kategori"]]
${JENIS_TRANSACTION_MENU}      xpath=//button[.//span[normalize-space(.)="Jenis Transaksi"]]
${PAJAK_MENU}                  xpath=//button[.//span[normalize-space(.)="Pajak"]]
${REKENING_MENU}               xpath=//button[.//span[normalize-space(.)="Rekening Bank"]]

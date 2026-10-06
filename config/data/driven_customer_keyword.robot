*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read Workbook Customer
    Open Workbook     ${CURDIR}/../../config/data_excel/WorkSpace_Driven_Customer.xlsx
    ${data}=          Read Worksheet                                      header=True
    Close Workbook

    ${row}=           Get From List    ${data}    0
    ${filterCUST}=    Get From List    ${data}    1


    ### Search Value
    Set Suite Variable    ${Search_Cust_value}               ${row}[Search_Customer]
    Set Suite Variable    ${Search_Phone_Value}              ${row}[Search_Phone]  
    Set Suite Variable    ${Search_Sector_Value}             ${row}[Search_Sector]  

    Set Suite Variable    ${contr_date}                      ${row}[contract_start_date]
    Set Suite Variable    ${image_path}                      ${row}[image_path]
    Set Suite Variable    ${Company_Name}                    ${row}[Nama_perusahaan]
    Set Suite Variable    ${Initial_Company}                 ${row}[Initial_Perusahaan]
    Set Suite Variable    ${Sektor}                          ${row}[Sektor]
    Set Suite Variable    ${NITKU}                           ${row}[NITKU]
    Set Suite Variable    ${NPWP}                            ${row}[NPWP]
    Set Suite Variable    ${mulai_kontrak_tahun}             ${row}[Mulai_Kontrak_Tahun]
    Set Suite Variable    ${mulai_kontrak_bulan}             ${row}[Mulai_Kontrak_Bulan]
    Set Suite Variable    ${mulai_kontrak_hari}              ${row}[Mulai_Kontrak_Hari]
    Set Suite Variable    ${selesai_kontrak_tahun}           ${row}[Selesai_Kontrak_Tahun]
    Set Suite Variable    ${selesai_kontrak_bulan}           ${row}[Selesai_Kontrak_Bulan]
    Set Suite Variable    ${selesai_kontrak_hari}            ${row}[Selesai_Kontrak_Hari]
    Set Suite Variable    ${email_value}                     ${row}[email]
    Set Suite Variable    ${Notelp_value}                    ${row}[Notelp]
    Set Suite Variable    ${lokasi_value}                    ${row}[lokasi]
    Set Suite Variable    ${detaillokasi_value}              ${row}[detaillokasi]                              
    Set Suite Variable    ${filter_cust}                     ${filterCUST}[filter_tanggal_kontrak_customer]
    Set Suite Variable    ${tahun_ktrk}                      ${row}[thn_kontrak]
    Set Suite Variable    ${date_ktrk}                       ${row}[date_kontrak]
    Set Suite Variable    ${filter_status_cust}              ${row}[filter_status_customer]
    Set Suite Variable    ${pilih_stat_cust}                 ${row}[pilih_status]
    # ********* EDIT ********
    Set Suite Variable    ${Update_Company_Name}             ${row}[edit_Nama_perusahaan]
    Set Suite Variable    ${Update_Initial_Company}          ${row}[edit_Initial_Perusahaan]
    Set Suite Variable    ${Update_Sektor}                   ${row}[edit_Sektor]
    Set Suite Variable    ${Update_NITKU}                    ${row}[edit_NITKU]
    Set Suite Variable    ${Update_NPWP}                     ${row}[edit_NPWP]
    Set Suite Variable    ${Update_mulai_kontrak_tahun}      ${row}[edit_Mulai_Kontrak_Tahun]
    Set Suite Variable    ${Update_mulai_kontrak_bulan}      ${row}[edit_Mulai_Kontrak_Bulan]
    Set Suite Variable    ${Update_mulai_kontrak_hari}       ${row}[edit_Mulai_Kontrak_Hari]
    Set Suite Variable    ${Update_selesai_kontrak_tahun}    ${row}[edit_Selesai_Kontrak_Tahun]
    Set Suite Variable    ${Update_selesai_kontrak_bulan}    ${row}[edit_Selesai_Kontrak_Bulan]
    Set Suite Variable    ${Update_selesai_kontrak_hari}     ${row}[edit_Selesai_Kontrak_Hari]
    Set Suite Variable    ${Update_email_value}              ${row}[edit_email]
    Set Suite Variable    ${Update_Notelp_value}             ${row}[edit_Notelp]
    Set Suite Variable    ${Update_lokasi_value}             ${row}[edit_lokasi]
    Set Suite Variable    ${Update_detaillokasi_value}       ${row}[edit_detaillokasi]                         
*** Settings ***
Library    RPA.Excel.Files
Library    Collections

*** Keywords ***
Read Workbook Customer
    [Arguments]    ${type}
    
    Open Workbook    ${CURDIR}/../../config/data_excel/WorkSpace_Driven_Customer.xlsx
    ${data}=          Read Worksheet   header=True
    Close Workbook

    FOR    ${row}    IN    @{data}
        IF    '${row}[Test_Type]' == '${type}'
            Set Test Variable    ${Search_Cust_value}               ${row}[Search_Customer]
            Set Test Variable    ${Search_Phone_Value}              ${row}[Search_Phone]
            Set Test Variable    ${Search_Sector_Value}             ${row}[Search_Sector]
            Set Test Variable    ${contr_date}                      ${row}[contract_start_date]
            Set Test Variable    ${image_path}                      ${row}[image_path]
            Set Test Variable    ${Company_Name}                    ${row}[Nama_perusahaan]
            Set Test Variable    ${Initial_Company}                 ${row}[Initial_Perusahaan]
            Set Test Variable    ${Sektor}                          ${row}[Sektor]
            Set Test Variable    ${NITKU}                           ${row}[NITKU]
            Set Test Variable    ${NPWP}                            ${row}[NPWP]
            Set Test Variable    ${mulai_kontrak_tahun}             ${row}[Mulai_Kontrak_Tahun]
            Set Test Variable    ${mulai_kontrak_bulan}             ${row}[Mulai_Kontrak_Bulan]
            Set Test Variable    ${mulai_kontrak_hari}              ${row}[Mulai_Kontrak_Hari]
            Set Test Variable    ${selesai_kontrak_tahun}           ${row}[Selesai_Kontrak_Tahun]
            Set Test Variable    ${selesai_kontrak_bulan}           ${row}[Selesai_Kontrak_Bulan]
            Set Test Variable    ${selesai_kontrak_hari}            ${row}[Selesai_Kontrak_Hari]
            Set Test Variable    ${email_value}                     ${row}[email]
            Set Test Variable    ${Notelp_value}                    ${row}[Notelp]
            Set Test Variable    ${lokasi_value}                    ${row}[lokasi]
            Set Test Variable    ${detaillokasi_value}              ${row}[detaillokasi]                              
            Set Test Variable    ${filter_cust}                     ${row}[filter_tanggal_kontrak_customer]
            Set Test Variable    ${tahun_ktrk}                      ${row}[thn_kontrak]
            Set Test Variable    ${date_ktrk}                       ${row}[date_kontrak]
            Set Test Variable    ${filter_status_cust}              ${row}[filter_status_customer]
            Set Test Variable    ${pilih_stat_cust}                 ${row}[pilih_status]

            # ********* EDIT ********
            Set Test Variable    ${Update_Company_Name}             ${row}[edit_Nama_perusahaan]
            Set Test Variable    ${Update_Initial_Company}          ${row}[edit_Initial_Perusahaan]
            Set Test Variable    ${Update_Sektor}                   ${row}[edit_Sektor]
            Set Test Variable    ${Update_NITKU}                    ${row}[edit_NITKU]
            Set Test Variable    ${Update_NPWP}                     ${row}[edit_NPWP]
            Set Test Variable    ${Update_mulai_kontrak_tahun}      ${row}[edit_Mulai_Kontrak_Tahun]
            Set Test Variable    ${Update_mulai_kontrak_bulan}      ${row}[edit_Mulai_Kontrak_Bulan]
            Set Test Variable    ${Update_mulai_kontrak_hari}       ${row}[edit_Mulai_Kontrak_Hari]
            Set Test Variable    ${Update_selesai_kontrak_tahun}    ${row}[edit_Selesai_Kontrak_Tahun]
            Set Test Variable    ${Update_selesai_kontrak_bulan}    ${row}[edit_Selesai_Kontrak_Bulan]
            Set Test Variable    ${Update_selesai_kontrak_hari}     ${row}[edit_Selesai_Kontrak_Hari]
            Set Test Variable    ${Update_email_value}              ${row}[edit_email]
            Set Test Variable    ${Update_Notelp_value}             ${row}[edit_Notelp]
            Set Test Variable    ${Update_lokasi_value}             ${row}[edit_lokasi]
            Set Test Variable    ${Update_detaillokasi_value}       ${row}[edit_detaillokasi]          
            RETURN
        END
    END

    Fail    Test data type '${type}' not found in Excel
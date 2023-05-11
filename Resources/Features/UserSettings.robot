*** Settings ***
Resource    ../../Tests/FileImports.robot


*** Keywords ***
Navigate to user settings
    Wait For Element Visibility    ${g_userProfileButton}
    Click Element    ${g_userProfileButton}
    Log To Console    I clicked on user settings

Delete the autopay mandate
    Wait For Element Visibility    ${g_autopaySettingButton}
    Click Element    ${g_autopaySettingButton}
    Wait For Element Visibility    ${g_deleteMandateButton}
    Click Element    ${g_deleteMandateButton}

Logout for the application
    Sleep    3
    Swip Down Untill element Is Visibile    ${g_logoutButton}    5
    Click Element    ${g_logoutButton}
    Wait For Element Visibility    ${g_logoutConfirmButton}
    Click Element    ${g_logoutConfirmButton}

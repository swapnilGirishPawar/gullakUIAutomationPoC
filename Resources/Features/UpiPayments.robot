*** Settings ***
Resource    ../../Tests/FileImports.robot


*** Keywords ***
AutoPay mandate setup using PayTm Test Intent app
    Wait For Element Visibility    ${g_seeMoreButton}
    Click Element    ${g_seeMoreButton}
    Wait For Element Visibility    ${g_paytmIntentApp}
    Click Element    ${g_paytmIntentApp}

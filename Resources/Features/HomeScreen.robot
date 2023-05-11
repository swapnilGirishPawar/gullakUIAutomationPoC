*** Settings ***
Resource    ../../Tests/FileImports.robot


*** Keywords ***
App security popup
    Wait For Element Visibility    ${g_biometricSkipButton}
    Click Element    ${g_biometricSkipButton}

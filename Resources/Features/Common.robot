*** Settings ***
Library     AppiumLibrary
Resource    ../../Tests/FileImports.robot


*** Variables ***
${xpath}    abcd


*** Keywords ***
Application in android
    Open Application
    ...    ${server}
    ...    platformName=${platform}    deviceName=${device}    appPackage=${app_package}
    ...    appActivity=${app_activity}
    ...    automationName=${automationName}    autoGrantPermissions=${autoGrantPermissions}
    onboarding Page Is opened Completely

Open App On Browserstack
    Open Application
    ...    ${Bs_Server}
    ...    app=${appURL}
    ...    build=${build}
    ...    platformName=${platform}
    ...    os_version=${osVersionBS}
    ...    device=${deviceNameBS}
    onboarding Page Is opened Completely

Onboarding Page Is opened Completely
    Wait For Element Visibility    ${g_nextButton}
    Run Keyword And Continue On Failure    Page Should Contain Element    ${g_nextButton}
    Log to Console    "Application opened."

Wait For Element Visibility
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}    timeout=30s

Rest Android Application
    Reset Application

Verify Page Contain Text
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    timeout=20
    Run Keyword And Continue On Failure    Page Should Contain Text    ${text}

Swip Down Untill Text Is Visibile
    [Arguments]    ${text}    ${swipCount}
    FOR    ${i}    IN RANGE    1    ${swipCount}
        ${isElementVisible} =    Run Keyword And Return Status    Verify Page Contain Text    ${text}
        IF    ${isElementVisible}
            IF    ${isElementVisible}                BREAK
        ELSE
            Swipe By Percent    20    20    80    80    2000
        END
    END

Wait and enter the text/Number
    [Arguments]    ${Element}    ${inputParamaeter}
    Wait For Element Visibility    ${Element}
    Input Text    ${Element}    ${inputParamaeter}

Number auto-fill popup-ignore
    [Arguments]    ${element}
    Wait For Element Visibility    ${element}
    Click Element    ${element}

amazonTest
    ${allEments} =    Create Dictionary    ${xpath}

*** Settings ***
Resource    ../../Tests/FileImports.robot


*** Keywords ***
# Return User DS Flow :-

check for one or two goals are available.
    Wait For Element Visibility    ${g_nextButton}
    # User goal checking and continue    Live price    Live price

# User goal checking and continue
#    [Arguments]    ${expected}    ${pagecontain}
#    ${actual}=    Verify Page Contain Text    ${pagecontain}
#    IF    ${expected} == ${actual}
#    Log To Console    inside if
#    ELSE
#    Log To Console    inside else
#    Click Element    ${goalSelectionSOS}
#    END

# Click on the Save more.
#    Wait For Element Visibility    ${topUpButton}
#    Click Element    ${topUpButton}

# Enter the top up amount
#    [Arguments]    ${amount}
#    Wait For Element Visibility    ${amountField}
#    Input Text    ${amountField}    ${amount}

select any goal
    [Arguments]    ${goalNumber}
    Wait For Element Visibility    ${goalNumber}
    Click Element    ${goalNumber}

Verify Page Contains Element On Android
    [Arguments]    ${element}
    Wait For Element Visibility    ${element}
    Run Keyword And Continue On Failure    Page Should Contain Element    ${element}

# top up goal selection
#    ${isGoalAvailable}=    Run Keyword And Return Status    Verify Page Contains Element On Android    ${goalId1}
#    IF    ${isGoalAvailable}
#    Wait For Element Visibility    ${goalId2}
#    Click Element    ${goalId2}
#    Click Element    ${g_nextButton}
#    END

navigate to the Save on spends rule page
    Wait For Element Visibility    ${g_nextButton}
    Click Element    ${g_nextButton}
    # tap 3 times
    Sleep    1
    # navigate through story Screens
    # navigate through story Screens
    # navigate through story Screens
    Wait For Element Visibility    ${g_nextButton}
    Click Element    ${g_nextButton}

create the save on spends goal
    Wait For Element Visibility    ${g_roundOffChip1}
    Click Element    ${g_roundOffChip1}
    Click Element    ${g_nextButton}

navigate back to the home screen
    Log To Console    Home

navigate through story Screens
    Click Element    ${g_storyScreen1}

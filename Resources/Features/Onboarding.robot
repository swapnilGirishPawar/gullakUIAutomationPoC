*** Settings ***
Library     AppiumLibrary
Resource    ../../Tests/FileImports.robot


*** Keywords ***
Navigate to the phone screen
    Wait For Element Visibility    ${g_nextButton}
    Click Element    ${g_nextButton}
    Click Element    ${g_nextButton}
    Click Element    ${g_nextButton}
    Sleep    2

Enter phone number
    [Arguments]    ${testNumber}
    Wait For Element Visibility    ${g_phoneNumber}
    Phone screen assertion
    # Tap outside if auto-popup comes
    Click A Point    x=200    y=200    duration=100
    Wait and enter the text/Number    ${g_phoneNumber}    ${testNumber}
    Click Element    ${g_nextButton}

Enter otp and navigate next screen
    Wait For Element Visibility    ${g_otpField}
    OTP screen assertion
    Input Text    ${g_otpField}    ${i_userOtp}
    Click Element    ${g_nextButton}

Enter name and age
    Wait For Element Visibility    ${g_nameField}
    Name & Age screen assertion
    Input Text    ${g_nameField}    ${i_userName}
    Input Text    ${g_ageField}    ${i_userAge}
    Click Element    ${g_nextButton}

Navigate to the home screen.
    Wait For Element Visibility    ${g_nextButton}
    Click Element    ${g_nextButton}
    Home screen assertion

Enter refferal code
    Wait For Element Visibility    ${g_refferalCodeCheckbox}
    Click Element    ${g_refferalCodeCheckbox}
    Wait For Element Visibility    ${g_refferalCodeField}
    Input Text    ${g_refferalCodeField}    1ABSDS

Log in with new user
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber1}
    Enter otp and navigate next screen
    Enter name and age
    Navigate to the home screen.

Log in with return user
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber1}
    Enter otp and navigate next screen
    Navigate to the home screen.

Log in with return user with active mandate
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber8}
    Enter otp and navigate next screen
    Navigate to the home screen.

# Assertions

# Page - 01 - Educational Screens

# Page - 02 - Phone Screen

Phone screen assertion
    Page Should Contain Text    ${e_otpButtonText}
    Page Should Contain Text    ${e_phoneScreenText}

# Page - 03 - OTP screen

OTP screen assertion
    Page Should Contain Text    ${e_VerifyOtpButtonText}

# Page - 04 - Name & Age Screen

Name & Age screen assertion
    Page Should Contain Text    ${e_nameScreenText}

# Page - 05 - Home Screen

Home screen assertion
    Sleep    2
    Page Should Contain Text    ${e_goldBuyPrice}
    Page Should Contain Text    ${e_letsGoButton}
    Page Should Contain Text    ${e_homeStackNav}
    Page Should Contain Text    ${e_gullaksStackNav}
    Page Should Contain Text    ${e_txnStackNav}
    Page Should Contain Text    ${e_rewardsStackNav}
    Log To Console    Home Screen assert succesfully.

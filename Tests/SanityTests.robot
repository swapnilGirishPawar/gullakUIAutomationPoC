*** Settings ***
Library             AppiumLibrary
Resource            FileImports.robot
Library             JsonLibrary

# Suite Teardown    Delete the user
Suite Setup         Application in android
Suite Teardown      Close All Applications
Test Teardown       Rest Android Application


*** Test Cases ***
#Sanity Suite testcases
# To run sanity suite:-    python3 -m robot -d Reports -i sanity Tests/SanityTests.robot
# new command for config :-
# python3 -m robot --variable platform:Android --variable platform_version:12 --variable device:ZTLRC6LBBUWC5T8T -d Results -i sanity Tests/SanityTests.robot

# Onboarding
# python3 -m robot -d Reports -i sanity Tests/SanityTests.robot
Verify whether new user onboarding with valid credentials.
    [Tags]    sanity    tc_01
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber3}
    Enter otp and navigate next screen
    Enter name and age
    Navigate to the home screen.
    [Teardown]    Rest Android Application
    #Assertions : Done : Written inside keywords

verify whether user able to login with valid referral code.
    [Tags]    sanity    tc_02
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber2}
    Enter otp and navigate next screen
    Enter refferal code
    Enter name and age
    Navigate to the home screen.
    [Teardown]    Rest Android Application
    #Assertions : Done : Written inside keywords

Verify log in flow for return user.
    [Tags]    sanity    tc_03
    Navigate to the phone screen
    Enter phone number    ${i_phoneNumber3}
    Enter otp and navigate next screen
    Navigate to the home screen.
    [Teardown]    Rest Android Application
    #Assertions : Done : Written inside keywords

# Save on every spends - Sanity-SOS

Verify whether User able to create goal of save on spends.
    [Tags]    sanity    tc_04
    Log in with new user
    navigate to the Save on spends rule page
    create the save on spends goal
    Log To Console    Goal Created succesfully !
    # AutoPay mandate setup using PayTm Test Intent app
    #TODO : Assertions

# Settings - Sanity-S

Verify whether User able to delete mandate.
    [Tags]    sanity    tc_22
    Log in with return user with active mandate
    Navigate to user settings
    Delete the autopay mandate
    #TODO : Assertions

Verify whether User able to logout from app.
    [Tags]    sanity    tc_23
    Log in with return user
    Navigate to user settings
    Logout for the application
    #TODO : Assertions

    Ashutosh Singla6:46 PM
    // Frontend automation (selenium / cypress)
    // Open one website -> Go to checkboxes -> select -> deselect
    // Open dropdown -> select option 2
    Ashutosh Singla6:47 PM
    http://the-internet.herokuapp.com/dropdown
    Ashutosh Singla7:03 PM
    ["open", "dropdown"] // n no of elements
    ["nepo", "nwodpord"]
    "neponwodpord" // print this
    Ashutosh Singla7:14 PM
    []
    taf-guit-szp

*** Settings ***
Library     DateTime
Library     String


*** Keywords ***
Generate OTP
    ${today}=    Get Current Date
    ${year}=    Get Substring    ${today}    2    4
    ${month}=    Get Substring    ${today}    5    7
    ${date}=    Get Substring    ${today}    8    10
    ${test}=    Catenate    SEPARATOR=    ${year}    ${month}    ${date}
    RETURN    ${test}

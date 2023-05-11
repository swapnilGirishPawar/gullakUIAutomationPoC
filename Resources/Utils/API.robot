*** Settings ***
Library     RequestsLibrary
Library     String
Resource    ../../Tests/FileImports.robot


*** Keywords ***
Delete user
    [Arguments]    ${phone}
    Create Session
    ...    DeleteSession
    ...    ${base_url_uat}
    ...    cookies={}
    ...    verify=False
    ${header}=    Create Dictionary    Content-Type=application/json
    ${params}=    Create Dictionary    Authorization=1de902b56a9846c1b4b61f498327debd
    ${response}=    GET On Session    DeleteSession
    ...    https://uat.api.gullak.money/apollo/delete/${phone}    params=${params}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

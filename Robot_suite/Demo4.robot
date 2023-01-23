*** Settings ***
Library    OperatingSystem
Library    Collections
Library    String
*** Comments ***
C:\Users\40032395\AppData\Local\Temp
*** Test Cases ***
TC1
    ${files}    List Files In Directory     path=C:${/}Users${/}40032395${/}AppData${/}Local${/}Temp
    Log To Console    ${files}
    Log List    ${files}
TC2
    Remove File    path=
TC3
    ${name}  Set Variable     robot framework session
    Log To Console    ${name}
    ${name1}    Convert To Upper Case   ${name}
    Log To Console    ${name1}
TC4
    ${num1}     Set Variable    $200,100
    ${num2}     Set Variable    $200
    ${num1}     Remove String    ${num1}    $   ,
    ${num2}     Remove String    ${num2}    $
    Log To Console  ${num1}     ${num2}
    ${num1}     Convert To Number    ${num1}
    Log To Console    ${num1}
    ${num3}     Evaluate    ${num1} + ${num2}
    Log To Console    ${num3}

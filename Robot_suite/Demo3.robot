*** Settings ***
Library    Collections
Library    OperatingSystem
*** Variables ***
${browser_name}     chrome
${my_num}       7894561230
@{colours}      red     green       yellow

*** Test Cases ***
TC1
    ${my_name}  Set Variable    sai
    Log To Console    ${my_name}
TC2
    Log To Console    ${browser_name}
    Log To Console    ${colours}
TC3
    @{fruits}     Create List       apple       orange      mango
    Log To Console    ${fruits}[1]
    Append To List     ${fruits}    grapes
    Log To Console     ${fruits}
    Remove Values From List    ${fruits}    apple
    Log To Console    ${fruits}
    Insert Into List    ${fruits}    1    pineapple
    Log To Console    ${fruits}
    ${len}      Get Length    ${fruits}
    Log To Console    ${len}
TC4
    @{fruits}   Create List     orange  mango   apple   pineapple
    FOR    ${fruits}    IN RANGE    0    4
        Log To Console   ${fruits}
    END
TC5
    ${emp_dic}     Create Dictionary     emp_id=12345        emp_name=jack       role=asdfgh
    Log To Console    ${emp_dic}[role]
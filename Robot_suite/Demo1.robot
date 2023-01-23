*** Settings ***
Library    DateTime

*** Test Cases ***
TC1
    Log To Console    jaswanth
    Log To Console    40032476
    Log To Console    message
TC2
    ${my_name}  set variable    jassu
    Log To Console    ${my_name}
TC3
    ${current_date}     Get Current Date
    Log To Console    ${current_date}
TC4
    ${radius}   Set Variable    10
    ${area}     Evaluate    3.14 * ${radius} * ${radius}
    Log To Console    ${area}



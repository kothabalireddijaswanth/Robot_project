*** Settings ***
Library     OperatingSystem
*** Test Cases ***
TC1
    ${a}    Set Variable    20
    ${b}    Set Variable    10
    ${c}    Evaluate    ${a} + ${b}
    Log To Console    ${c}
TC2
    Create Dictionary   c:\\mine\\demo123
TC3
    Log To Console    c:\\mine\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_FILE}
    Log To Console    ${EXECDIR}
    Log To Console    message
    Log To Console    hi${space}${space}world
    Log To Console    ${TEST_NAME}
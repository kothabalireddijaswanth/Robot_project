*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1
    Open Browser    url=chrome://newtab/     browser=chrome
    ${actual_title}   Get Title
    Log To Console    ${actual_title}
    Log     ${actual_title}
    Should Be Equal    ${actual_title}    chrome

TC2
    Open Browser       url=https://www.db4free.net/phpMyAdmin/     browser=chrome
    Input Text    id:input_username    jassu@133
    Input Password    id=input_password    Password=Jassu@133
    Click Element     id:input_go
*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    link=phpMyAdmin »
    Switch Window    phpMyAdmin
    Input Text    id=input_username    test123
    Input Password    id=input_password    jassu@133
    Close Window



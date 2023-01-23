*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/
    Click Button    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    name=first-name    john
    Input Text    name=last-name    wick
    Input Text    name=login__email    john@gmail.com




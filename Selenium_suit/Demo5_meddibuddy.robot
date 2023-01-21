*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    link = Login
    Click Element     xpath=//div[contains(text(),'I have an Insurance/Corporate Account')]
    Click Element    xpath=//div[contains(text(),'Login using Username & Password')]
    Input Text    name=userName    john
    Click Element    xpath=//button[text()='Proceed']
    Input Password    name=password    hello123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[@text='Log in']
    Element Should Contain    //*[contains(text(),'incorrect password')]    you have entered incorrect password
    

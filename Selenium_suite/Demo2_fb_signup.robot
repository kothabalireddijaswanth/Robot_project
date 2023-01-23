*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 Register
    Open Browser    url=https://www.facebook.com    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    jaswanth
    Input Text    name=lastname    kothabali reddi gari
    Input Text    name=reg_email__    jassu@133
    Input Password    name=reg_passwd__    Nithisha
    #16 07 2001
    Select From List By Label    id=day    16
    Select From List By Label    id=month    Jul
    Select From List By Label    id=year    2001
    Click Element    xpath=//input[@value='-1']
    Submit Form
    #Click Element    Link=Sign Up
    
    



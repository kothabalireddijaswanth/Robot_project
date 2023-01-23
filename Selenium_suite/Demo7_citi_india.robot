*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    xpath=//a[@class='fancybox-item fancybox-close']
    Click Element    link=Login
    Switch Window    NEW
    Click Element    xpath=//div[@onclick='ForgotUserID();']
    Click Element    link=select your product type
    Click Element    link=Credit Card
    Input Text    id=citiCard1    4455
    Input Text    id=citiCard2    5566
    Input Text    id=citiCard3    7778
    Input Text    id=citiCard4    9997
    Input Text    name=CCVNO      070
    Click Element    xpath=//input[@id='bill-date-long']
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2000
    Select From List By Label   xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element         link=16
    Click Element    xpath=//input[@value='PROCEED']
    Element Should Contain  xpath=//Li[contains(text(),'• Please accept Terms and Conditions ')]    • Please accept Terms and Conditions
    Switch Window       MAIN
    Close Browser
    Sleep    2s
    Close Browser



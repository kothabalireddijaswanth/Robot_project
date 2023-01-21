*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    john
    Input Text    name=UserLastName    wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label    name=UserTitle    IT Manager
    Input Text    name=CompanyName    LTTS
    Select From List By Label    name=CompanyEmployees      501 - 1500 employees
    #Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
    #Select From List By Label    name=UserPhone     7729956133
    Select From List By Label    name=CompanyCountry    India
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Button    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number



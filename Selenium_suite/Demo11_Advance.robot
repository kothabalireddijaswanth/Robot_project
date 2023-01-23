*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    C:${/}Users${/}40032395${/}Downloads${/}sai02.pdf
    Sleep    15s
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    jack
    Input Password   css=#pass    we234
    Click Element    css=button[name='login']
TC3
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/
    Click Element    id=select2-hotels_city-container
    Input Text    locator    text
    Execute Javascript      document.querySelector('#checkin').values='31-10-2023'
    Execute Javascript      document.querySelector('#checkout').value='01-11-2023'
TC4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in
    ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
    Execute Javascript  arguments[0].click()    ARGUMENTS   ${ele}
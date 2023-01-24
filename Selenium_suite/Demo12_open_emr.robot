*** Settings ***
Library      SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    Input Text    id=authUser    admin
    Input Text    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Button    id=login-button
    Click Element    xpath=//div[text()='Patient']
    Click Element    xpath=//div[text()='New/Search']
    Select Frame    xpath=//iframe[@name='pat']
    Select From List By Label    name=form_title    Mr.
    Input Text    id=form_fname    jaswanth
    Input Text    id=form_mname    kothabali
    Input Text    id=form_lname    reddi gari
    Select From List By Label    name=form_sex      Male
    Input Text    name=form_DOB    24/01/2000
    Input Text    id=form_ss    296733806723
    Select From List By Label    id=form_status     Single
    Click Button    xpath=//button[@id='create']
    Unselect Frame
    select Frame      xpath=//iframe[@id='modalframe']
    Click Element    xpath=//input[@class='btn btn-primary']
    ${alert_text}   Handle Alert    action=ACCEPT       timeout=10s
    Log To Console    ${alert_text}
    Click Element    xpath=//div[@class='closeDlgIframe']
    Element Should Contain    xpath=//a[@title='To Dashboard']    jaswanth reddi gari

TC2
    Open Browser        browser=chrome
    @{output}       Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    @{output}


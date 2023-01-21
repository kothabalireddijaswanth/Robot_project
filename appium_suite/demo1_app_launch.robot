*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme7i
    ...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
   
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']      30s
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']      30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']      30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    30s
    Click Element    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]

    Input Text    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]     jassu@133

    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Password"]   30s
    Click Element    xpath=//android.widget.EditText[@content-desc="Password"]

    Input Text    xpath=//android.widget.EditText[@content-desc="Password"]    jassu123

    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign in"]      30s
    Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]

    Element Text Should Be    xpath=//*[contains@text="There was an issue signing in"    There was an issue signing in
    Sleep    5s
    [Teardown]  Close Application

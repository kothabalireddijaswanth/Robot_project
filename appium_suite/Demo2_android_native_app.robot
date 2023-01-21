*** Settings ***
Library     AppiumLibrary

*** Test Cases ***

TC1 Sign Up
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme7i
    ...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
    Set Appium Timeout    30s

     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']      30s
     Click Element    xpath=//android.widget.TextView[@text='Dismiss']

     Wait Until Page Contains Element    xpath=//*[@content-desc='Settings']
     Click Element    xpath=//*[@content-desc="Settings"]
     Wait Until Page Contains Element    xpath=//*[@text='Sign in']
     Click Element    xpath=//*[@text='Sign in']
     Wait Until Page Contains Element    xpath=//*[@text='Sign up with email']
     Click Element    xpath=//*[@text='Sign up with email']
     Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='First name']
     Click Element    xpath=//android.widget.EditText[@content-desc='First name']
     Input Text    xpath=//android.widget.EditText[@content-desc='First name']    jaswsanth
     Wait Until Page Contains Element    xpath=//*[@content-desc='Last name']
     Input Text    xpath=//*[@content-desc='Last name']    kothabali
     Wait Until Page Contains Element    xpath=//*[@text='Birthday']
     Click Element    xpath=//*[@text='Birthday']
     Wait Until Page Contains Element    xpath=//*[@text='Jun']
     Click Element    xpath=//*[@text='Jun']
     Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]      Dec
     Wait Until Page Contains Element    xpath=//*[@text='01']
     Click Element    xpath=//*[@text='01']
     Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]     05
     Wait Until Page Contains Element    xpath=//*[@text='2000']
     Click Element    xpath=//*[@text='2000']
     Input Text    xpath=//*[@resource-id='android:id/numberpicker_input']    2022

TC2
      


     



     [Teardown]     Close Application
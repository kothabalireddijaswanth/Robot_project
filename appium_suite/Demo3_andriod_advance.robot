*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 swipe
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme7i
    ...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
    #...    appPackage=org.Khanacademy.android
    #...    appActivity=org.Khanacademy.android.ui.library.MainActivity
    ...    noReset=true
    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//*[@text='Search']
    Click Element      xpath=//*[@text='Search']
    Wait Until Page Contains Element      xpath=//*[@text='Arts and humanities']
    Click Element     xpath=//*[@text='Arts and humanities']
    ${count}      Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
          Swipe By Percent    90    75    90    25
        ${count}      Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element     xpath=//*[@text='Art of Asia']
    ${count}        Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count}==0
          Swipe By Percent    90    75    90    25
        ${count}      Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element     xpath=//*[@text='South Asia']

    ${count}        Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    WHILE    ${count}==0
          Swipe By Percent    90    75    90    25
        ${count}      Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    END
    Wait Until Page Contains Element    xpath=//*[@text='The Taj Mahal']
    Click Element     xpath=//*[@text='The Taj Mahal']


    [Teardown]    Close Application
TC2
        Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme7i
    #...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
    ...    appPackage=com.Stashfin.android
    ...    appActivity=com.Stashfin.android.ui.library.MainActivity
    ...    noReset=true

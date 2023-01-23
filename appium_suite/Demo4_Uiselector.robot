*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme5i_new
    ...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
    ...    noReser=true
    Set Appium Timeout    30s
    Run Keyword And Ignore Error    Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")

    Wait Until Page Contains Element    android=UiSelector().description("Settings")
    Click Element    android=UiSelector().description("Settings")

    Wait Until Page Contains Element    android=UiSelector().text("Sign in")
    Click Element    android=UiSelector().text("Sign in")

    Wait Until Page Contains Element    android=UiSelector().text("Sign up with email")
    Click Element    android=UiSelector().text("Sign up with email")

    Wait Until Page Contains Element    android=UiSelector().text("First name")
    Click Element    android=UiSelector().text("First name")
    Input Text    android=UiSelector().text("First name")    jaswsanth

     Wait Until Page Contains Element    android=UiSelector().text("Last name")
     Input Text    android=UiSelector().text("Last name")    kothabali

     Wait Until Page Contains Element    android=UiSelector().text("Birthday")
     Click Element    android=UiSelector().text("Birthday")

     Wait Until Page Contains Element     android=UiSelector().text("Jun")
     Click Element        android=UiSelector().text("Jun")
     Clear Text        android=UiSelector().text("Jun")
     Input Text        android=UiSelector().resourceId("android:id/numberpicker_input")   Dec

     Wait Until Page Contains Element    android=UiSelector().text("01")
     Click Element     android=UiSelector().text("01")
     Clear Text    android=UiSelector().text("01")
     Input Text        android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    30

     Wait Until Page Contains Element    android=UiSelector().text("2000")
     Click Element    android=UiSelector().text("2000")
     Clear Text    android=UiSelector().text("2000")
     Input Text       android=UiSelector(). resourceId("android:id/numberpicker_input").instance(2)      1996
     Click Element    android=UiSelector().text("OK")

TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme7i
    ...    app=C:${/}Users${/}40032476${/}Downloads${/}khan-academy-7-3-2.apk
    ...    noReser=true
    Run Keyword And Ignore Error    Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")

    Wait Until Page Contains Element    android=UiSelector().text("Search")
    Click Element      android=UiSelector().text("Search")

    Wait Until Page Contains Element      android=UiSelector().text("Arts and humanities")
    Click Element     android=UiSelector().text("Arts and humanities")

    &{dic_arg}        Create Dictionary       strategy=android Uiautomator
    ...   selector=UiSelector().text("Art of Asia")
    Execute Script      mobile: scroll    &{dic_arg}
    Click Element     android=UiSelector().text("Art of Asia")
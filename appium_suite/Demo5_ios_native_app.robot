*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1
    &{dic}      Create Dictionary       buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=jaswanthkothabal_3OHqLc
    ...     accessKey=rxWAcikEpH58rFisdjGz

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...   platformName=ios
    ...   deviceName=iPhone 11 pro
    ...   app=bs://d2adb039bdf95c1e7da860988b93a7552018a4b3
    ...   platformVersion=13
    ...   bstack:options=${dic}

    ${app_source}       Get Source
    log     ${app_source}

    [Teardown]      Close Application

TC2
    &{dic}      Create Dictionary       buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=jaswanthkothabal_3OHqLc
    ...     accessKey=rxWAcikEpH58rFisdjGz

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...   platformName=ios
    ...   deviceName=iPhone 11 pro
    ...   app=bs://d2adb039bdf95c1e7da860988b93a7552018a4b3
    ...   platformVersion=13
    ...   bstack:options=${dic}
    Set Appium Timeout    20s

    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user

    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]

    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[1]

#    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]
#    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])[2]

#    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="2"])[4]
#    Click Element    xpath=(//XCUIElementTypeOther[@name="2"])[4]

#   Wait Until Page Contains Element    xpath=(//XCUIElementTypeStaticText[@name="1"])[1]
#   Click Element    xpath=(//XCUIElementTypeStaticText[@name="1"])[1]
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]

    Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    jo
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022

    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]






    [Teardown]      Close Application

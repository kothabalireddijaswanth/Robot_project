*** Settings ***
Library     SeleniumLibrary
Library     XML
*** Test Cases ***
TC1 LOGIN
    Open Browser      browser=Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/

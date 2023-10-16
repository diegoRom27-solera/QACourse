*** Settings ***
Library           SeleniumLibrary

*** Keywords ***

Launch Browser
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

Launch Web Page
    [Arguments]    ${url}
    Open Browser  ${url}   chrome 

*** Settings ***
Documentation    Test Suite for XRS HOST
Resource   ../Resources/Common.resource
# robot -d  Results .\SeleniumExample\Tests\TC_0003_Mac_Login.robot
#SeleniumExample\Tests\Test1.robot
Resource  ../Resources/PageObjects/HomePage/HomePage.resource

*** Test Cases ***
TC_0003_Mac_Login
    [Tags]    Login_Logout
    [Documentation]    Sign in to the Mac Page
    Launch Web Page   https://mac.acatlan.unam.mx/
    Modal Window Should Be Open
    Close Modal Window
    Home Page Should Be Displayed
    Click On Login Button
    Sleep  30s
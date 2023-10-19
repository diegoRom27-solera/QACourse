*** Settings ***
Documentation    Test Suite for XRS HOST
Resource   ../Resources/Common.resource
# robot -d  Results .\SeleniumExample\Tests\TC_0003_Mac_Login.robot
#SeleniumExample\Tests\Test1.robot
Resource  ../Resources/PageObjects/HomePage/HomePage.resource
Resource  ../Resources/PageObjects/LoginPage/LoginPage.resource

Test Setup  Login Mac
Test Teardown  Logout Mac

*** Test Cases ***
TC_0004_Login
    [Tags]    Login_Logout
    [Documentation]    Sign in to the XRS HOST 
    Login Page Should Be Displayed
    Student Login Should Be Displayed
    Click On Student Login
    Student Login Prompt Should Be Displayed
    Enter Username  username=
    Enter Password  password=
    Click On Sign In Button
    Username Should Be Displayed  username=Diego Romero Mora


*** Keywords ***
Login Mac
    Launch Web Page   https://mac.acatlan.unam.mx/
    Modal Window Should Be Open
    Close Modal Window
    Home Page Should Be Displayed
    Click On Login Button

Logout Mac
    Click On Logout Button

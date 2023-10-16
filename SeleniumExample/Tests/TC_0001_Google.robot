*** Settings ***
Documentation    Test Suite for XRS HOST
Resource   ../Resources/Common.resource
# robot -d  Results .\SeleniumExample\Tests\TC_0001_Google.robot
#SeleniumExample\Tests\Test1.robot
*** Test Cases ***
TC_0001_Google
    [Tags]    Login_Logout
    [Documentation]    Sign in to the XRS HOST 
    Launch Browser
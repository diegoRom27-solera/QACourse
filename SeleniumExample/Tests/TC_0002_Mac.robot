*** Settings ***
Documentation    Test Suite for XRS HOST
Resource   ../Resources/Common.resource
# robot -d  Results .\SeleniumExample\Tests\TC_0002_Mac.robot
#SeleniumExample\Tests\Test1.robot
*** Test Cases ***
TC_0002_Mac
    [Tags]    Login_Logout
    [Documentation]    Sign in to the XRS HOST 
    Launch Web Page   https://mac.acatlan.unam.mx/

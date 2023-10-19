*** Settings ***
Documentation     Home page actions
Library           SeleniumLibrary
Variables  ./LoginPage.yml

*** Keywords ***

Login Page Should Be Displayed
    Wait Until Element Is Visible   ${loginPageLocators.loginLabel}

Student Login Should Be Displayed
    Wait Until Element Is Visible   ${loginPageLocators.studentLogin}

Click On Student Login
    Click Element   ${loginPageLocators.studentLogin}

Student Login Prompt Should Be Displayed
    Wait Until Element Is Visible   ${loginPageLocators.accountLabel}

Enter Username
    [arguments]   ${username}
    Input Text   ${loginPageLocators.usernameInput}   ${username}

Enter Password
    [arguments]   ${password}
    Input Text   ${loginPageLocators.passwordInput}   ${password}

Click On Sign In Button
    Click Element   ${loginPageLocators.signInButton}

Username Should Be Displayed
    [Arguments]  ${username}
    Wait Until Element Is Visible  xpath=//div[contains(text(),'${username}')]

Click On Logout Button
    Click Element  ${loginPageLocators.logoutButton}
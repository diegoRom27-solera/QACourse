*** Settings ***
Documentation     Home page actions
Library           SeleniumLibrary
Variables  ./HomePageLocators.yml

*** Keywords ***

Modal Window Should Be Open
    Wait Until Element Is Visible    ${HomePageLocators.titleModal}  60s

Close Modal Window
    wait until element is visible    ${HomePageLocators.closeModal}  60s
    Click Element    ${HomePageLocators.closeModal}

Home Page Should Be Displayed
    Wait Until Element Is Visible    ${HomePageLocators.titleHomePage}  60s

Click On Login Button
    Click Element    ${HomePageLocators.loginButton}



*** Settings ***
Documentation   A resource file with Variables and Keywards realted to Home page.
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Click On SignIn Button
        maximize browser window
        wait until element is enabled   xpath=//*[@id="header-signin-link"]/span
        click element    xpath=//*[@id="header-signin-link"]/span



Click On Create Account Button
        maximize browser window
        wait until element is enabled   xpath=//*[@id="createacc"]
        click element    xpath=//*[@id="createacc"]


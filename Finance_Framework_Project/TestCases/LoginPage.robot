*** Settings ***
Documentation    Tests which login Finance Page.
Library    SeleniumLibrary
Resource    ../Resources/BrowserSessions.resource
Resource    ../Resources/HomePage.resource
Resource    ../Resources/CreateAccountPage.resource

Test Setup   Open Browser Session
Test Teardown    Close Browser Session


*** Test Cases ***

run keywords    Click On SignIn Button
                Click On Create Account Button
                Create Account
                BuiltIn.log    "Account Created Succesfully"
                log to console    "UserID:"    ${username}
                log to console    "Password:"    ${password}}









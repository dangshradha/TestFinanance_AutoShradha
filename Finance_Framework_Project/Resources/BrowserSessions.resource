*** Settings ***
Documentation    A resource file with browser sessions related reusable keywards and variables
Library  SeleniumLibrary
Resource    ../Resources/HomePage.resource
Library    Dialogs

*** Variables ***
${url}  https://finance.yahoo.com
${browser_name}  chrome
*** Keywords ***

Open Browser Session

    open browser  ${url}   ${browser_name}
    #Get Input Details From User At Run Time

Close Browser Session
    close browser

Get Input Details From User At Run Time
    ${name}=   get value from user
    ${username}=   get value from user
    ${password}=    get value from user
    ${dob}=     get value from user


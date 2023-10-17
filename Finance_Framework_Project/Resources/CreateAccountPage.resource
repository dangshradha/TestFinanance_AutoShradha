*** Settings ***
Documentation   A resource file with Variables and Keywards realted to Create Account page.

Library    SeleniumLibrary
Library    Dialogs
Library    String
Resource    ../Resources/arg.resource


*** Keywords ***
Create Account
         wait until element is enabled   xpath= //*[@id="usernamereg\-firstName"]
         click element    xpath=//*[@id="usernamereg\-firstName"]
         input text    xpath=//*[@id="usernamereg\-firstName"]  ${first_name}
         click element    xpath=//*[@id="usernamereg\-lastName"]
         input text    xpath=//*[@id="usernamereg\-lastName"]   ${last_name}
         click element    xpath=//*[@id="usernamereg\-userId"]
         input text     xpath=//*[@id="usernamereg\-userId"]   ${username}
         click element    //*[@id="usernamereg-password"]
         input password    //*[@id="usernamereg-password"]   ${password}


         ${year}  String.split string    ${dob}    -           #Split YYYY-MM-DD to separate date, month and year variable
         log to console     ${year}[2]
         ${day}  String.split string    ${dob}   -
         ${month}     String.split string    ${dob}    -

         #input text     xpath=//*[@id="usernamereg-month"]       ${month}[1]
         click element    xpath=//*[@id="usernamereg\-month"]


         #seleniumlibrary.press key   J     #${month}[1]
         click element    xpath=//*[@id="usernamereg\-day"]
         input text     xpath=//*[@id="usernamereg\-day"]  ${day}[0]
         log to console     ${day}[0]
         click element    xpath=//*[@id="usernamereg\-year"]
         input text     xpath=//*[@id="usernamereg\-year"]  ${year}[2]


         click element    xpath=//*[@id="reg\-submit\-button"]






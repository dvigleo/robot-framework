*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login with valid credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" field  ${Username}
    Fill "Password" field  ${Password}
    Click "Sign in" button

Fill "Email" field
    [Arguments]  ${Username}
    Log  Atempting to log in with ${Username}

Fill "Password" field
    [Arguments]  ${Password}
    Log  Atempting to log in with ${Password}

Click "Sign in" button
    Log  Clicking the sign in button
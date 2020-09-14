*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  Gmail
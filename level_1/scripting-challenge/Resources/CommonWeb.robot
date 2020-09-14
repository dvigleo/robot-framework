*** Settings ***
Documentation  This is common web settings for the test
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser
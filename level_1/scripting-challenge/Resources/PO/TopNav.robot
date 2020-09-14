*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***
Select "Team" section
    Click Link  ${TEAM_LINK}
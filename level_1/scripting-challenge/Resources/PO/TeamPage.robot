*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify correct header
    Wait Until Page Contains Element  ${TEAM_HEADER_LABEL}
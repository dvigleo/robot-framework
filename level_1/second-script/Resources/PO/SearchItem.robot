*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_BAR} =  xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input

*** Keywords ***
Search
    Input Text  ${SEARCH_BAR}  ${SEARCH_ITEM}
    Press Keys  ${SEARCH_BAR}  RETURN

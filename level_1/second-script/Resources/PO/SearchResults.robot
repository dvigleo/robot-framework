*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AMAZON_LINK} =  xpath=//*[@id="rso"]/div[4]/div/div[1]/a


*** Keywords ***
Select Item
    [Documentation]  Clicks on the amazon link
    Click Link  ${AMAZON_LINK}
    Wait Until Page Contains  Información del producto
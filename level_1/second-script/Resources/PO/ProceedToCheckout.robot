*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PROCEED_BTN} =  xpath=//*[@id="hlb-ptc-btn-native"]

*** Keywords ***
Load Sign In Page    
    Click Element  ${PROCEED_BTN}
    Wait Until Page Contains  Iniciar sesión
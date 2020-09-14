*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.mercadolibre.com.mx/  chrome
    Maximize Browser Window
    Wait Until Page Contains  Ingresa tu código postal
    Click Link  xpath=//*[@id="root-app"]/div/section[2]/div/div/div[2]/a
    Wait Until Page Contains  resultados
    Click Link  xpath=//*[@id="root-app"]/div/div/section/ol/li[1]/div/div/div[1]/a
    Wait Until Page Contains  También puede interesarte
    Click Link  xpath=//*[@id="root-app"]/div[2]/div[3]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/a
    Wait Until Page Contains  ¡Hola!
    Close Browser


*** Keywords ***
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BTN} =  xpath=//*[@id="add-to-cart-button"]

*** Keywords ***
Add to Cart    
    Click Add to Cart
    Verify Item has been Added

Click Add to Cart
    Click Element  ${ADD_TO_CART_BTN}

Verify Item has been Added
    Wait Until Page Contains  Agregado al carrito
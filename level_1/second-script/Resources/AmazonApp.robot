*** Settings ***
Documentation  This is some basic info about my ke
Resource  ./PO/LandingPage.robot
Resource  ./PO/SearchItem.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Cart.robot
Resource  ./PO/ProceedToCheckout.robot
Resource  ./PO/SignIn.robot

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    SearchItem.Search

Select product from search results
    SearchResults.Select Item


Add product to cart
    Cart.Add to Cart

Begin checkout
    [Arguments]  ${USERNAME_PASSWORD}  
    ProceedToCheckout.Load Sign In Page
    SignIn.Login with valid credentials  ${USERNAME_PASSWORD}[0]  ${USERNAME_PASSWORD}[1]
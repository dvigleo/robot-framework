*** Settings ***
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  gc
${URL} =  http://www.google.com
${SEARCH_ITEM} =  OnePlus 7T
${USERNAME_PASSWORD} =  daniela@vignau.mx  password
${WRONG_USERNAME_PASSWORD} =  daniela@vignau.mx  thisiswrong

*** Test Cases ***
User can search for products on Google
    [Tags]  Smoke
    AmazonApp.Search for products
    Sleep  2s

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Current
    AmazonApp.Search for products
    AmazonApp.Select product from search results
    AmazonApp.Add product to cart
    AmazonApp.Begin checkout  ${USERNAME_PASSWORD}
    Sleep  2s
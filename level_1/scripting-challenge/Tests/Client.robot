*** Settings ***
Documentation  Scripting challenge suite
Resource  ../Resources/ClientApp.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  gc
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
User should be able to access "Team" page
    [Documentation]  The user should be able to access the team page
    [Tags]  Smoke    
    ClientApp.Navigate to page
    Sleep  2s

"Team" page should have the correct header
    [Documentation]  The team page should have the correct header
    [Tags]  Smoke
    ClientApp.Verify header
    Sleep  2s
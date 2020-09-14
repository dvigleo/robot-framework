*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TeamPage.robot
Resource  ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Navigate to page
    Verify page
    Navigate to "Team" page
    Verify header

Verify page
    LandingPage.Check title

Navigate to "Team" page
    TopNav.Select "Team" section

Verify header
    TeamPage.Verify correct header
    
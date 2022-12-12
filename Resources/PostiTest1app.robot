*** Settings ***
Resource    ./PO/LandingPage.robot
Resource    ./PO/MapNav.robot

*** Variables ***

*** Keywords ***
Go to Landing page
    LandingPage.Navigate To
    LandingPage.Verify Page Loaded

Search
    LandingPage.Search


Select Services
    MapNav.Select Services

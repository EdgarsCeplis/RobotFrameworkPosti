*** Settings ***
Resource    ./PO/TrackingPage.robot
Resource    ./PO/LettersAndMails.robot

*** Variables ***

*** Keywords ***
Go to Landing page
    TrackingPage.Navigate to
    TrackingPage.Verify Page Loaded

Search
    TrackingPage.Search

Failed Search Results
    TrackingPage.Failed Search Results

Go to Letters and Mail page
    LettersAndMails.Navigate to

Send Letter Option
    LettersAndMails.Send Letter Option

Calculate Price
    LettersAndMails.Calculate Price
*** Settings ***
Documentation    Posti RobotFramework Test
Resource    ../Resources/PostiTest2App.robot
Resource    ../Resources/CommonWebPosti.robot
Test Setup    Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/PostiTest1.robot
*** Variables ***
${BROWSER} =    gc
${URL_TRACKING} =    https://www.posti.fi/en/private/parcels-and-tracking
${URL_LETTERS_MAIL}=    https://www.posti.fi/en/private/letters-and-mail
${URL_CALCULATE_PRICE}    https://www.posti.fi/en/private/letters-and-mail/send-a-letter-or-postcard/letter-price-calculator


*** Test Cases ***
Parcel Tracking Successful and Failed
    [Documentation]    Test 1
    [Tags]    Test1
    PostiTest2app.Go to Landing page
    PostiTest2app.Search
    PostiTest2app.Failed Search Results

User Can Send Letters and Mails
    [Documentation]    Test 2
    [Tags]    Test2
    PostiTest2app.Go to Letters and Mail page
    PostiTest2app.Send Letter Option
    PostiTest2app.Calculate Price
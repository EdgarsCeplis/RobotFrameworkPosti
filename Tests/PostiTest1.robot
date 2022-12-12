*** Settings ***
Documentation    Posti RobotFramework Test
Resource    ../Resources/PostiTest1App.robot
Resource    ../Resources/CommonWebPosti.robot
Test Setup    Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/PostiTest1.robot
*** Variables ***
${BROWSER} =    gc
${URL_SERVICE_POINTS} =    https://www.posti.fi/en/service-points-on-map


*** Test Cases ***
Find nearest pickup points using a street address or Zip code
    [Documentation]    Test 1
    [Tags]    Test1
    PostiTest1app.Go to Landing page
    PostiTest1app.Search
    MapNav.Select Services
    MapNav.Select Only Postal Outlets
    MapNav.Zoom in and Out
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TRACKING_PAGE_NAV_ELEMENT}    id=main
${SEARCH_PARCEL}     JJFI63864910003875044
${ACTIVATE_SEARCH}    xpath=//*[@id="posti-fi-navigation"]/div/div/div[2]/button
${SEARCH_BUTTON}    xpath=//*[@id="posti-fi-navigation"]/div[1]/div/div[2]/div/div/button
${PARCEL_SEARCH_RESUTS}    xpath=//*[@id="tracking"]/div/div/div[2]/section[1]/div[1]/div/span/div
${SEARCH_FAILED_PARCEL}    0
*** Keywords ***
Navigate To
    go to    ${URL_TRACKING}

Verify Page Loaded
    wait until page contains element    ${TRACKING_PAGE_NAV_ELEMENT}
    sleep    3s

Search
    Click button    ${ACTIVATE_SEARCH}
    input text    xpath=//*[@id="posti-fi-navigation"]/div[1]/div/div[2]/div/div/div/input   ${SEARCH_PARCEL}
    sleep    2s
    click button    ${SEARCH_BUTTON}
    wait until page contains element    ${PARCEL_SEARCH_RESUTS}
    sleep    2s

Failed Search Results
    input text    //*[@id="tracking-5yoLxZvbikVjS1lGKpmShb-en-US"]   ${SEARCH_FAILED_PARCEL}
    click button    //*[@id="main"]/header/div[2]/div/div/div[2]/div/div/button
    sleep    2s
    #Page Should Contain Textfield  xpath=//*[@id="main"]/div/div    No items could be found based on the tracking code.


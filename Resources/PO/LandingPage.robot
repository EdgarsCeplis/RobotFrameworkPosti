*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =    id=main
${ADRESS} =    Tietajantie4 Espoo, Zip-02130
${SEARCH_BUTON}    xpath=/html/body/div[1]/div[1]/div/div/div[3]/div[2]/div/div/div/div/section[2]/div/div[2]/div/div/div/button[2]
${COOKIE}    xpath=//*[@id="onetrust-accept-btn-handler"]
*** Keywords ***
Navigate To
    go to    ${URL_SERVICE_POINTS}


Verify Page Loaded
    wait until page contains element    ${LANDING_NAVIGATION_ELEMENT}
    sleep    3s
    click button    ${COOKIE}

Search

    input text    xpath=//*[@id="searchTerm"]   ${ADRESS}
    sleep    2s
    click element    ${SEARCH_BUTON}
    execute javascript    window.scrollTo(0,300)
    sleep    2s


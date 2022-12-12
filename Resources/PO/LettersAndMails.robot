*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LETTER_PAGE_NAV_ELEMENT}    id=main
${SEND_A_LETTER_BUTTON}    xpath=//*[@id="send-and-track-Send-a-letter"]/div/button
${SEND_CARD_LETTER}    xpath=//*[@id="domestic-letters-and-postcards"]/a/div[2]/div
${ITERNATIONAL_LETTER_PRICE}    xpath=//*[@id="main"]/div[2]/div/div[2]/section/div[2]/div[1]/div/div[2]/div[2]/div[2]/div/span
${ECONOMY_LETTER_PRICE}    xpath=//*[@id="main"]/div[2]/div/div[2]/section/div[2]/div[2]/div/div[2]/div[2]/div[2]/div/span/data[2]
${DESTINATION_COUNTRY}    xpath=//*[@id="destinationCountry"]
${COUNTRY_FROM_LIST}    xpath=//*[@id="LV00"]
${SHOW_RESULTS}    xpath=//*[@id="main"]/div[2]/div/div[2]/div/form/button
*** Keywords ***
Navigate to
    go to    ${URL_LETTERS_MAIL}
    Verify Page Loaded
    wait until page contains element    ${LETTER_PAGE_NAV_ELEMENT}
    execute javascript    window.scrollTo(0,300)
    sleep    3s

Send Letter Option
    click button    ${SEND_A_LETTER_BUTTON}
    sleep    3s
    Execute Javascript  history.back()
    sleep    3s
    execute javascript    window.scrollTo(0,1000)
    sleep    3s
    click element    ${SEND_CARD_LETTER}
    sleep    3s

Calculate Price
    go to    ${URL_CALCULATE_PRICE}
    execute javascript    window.scrollTo(0,500)
    sleep    3s
    click element    ${DESTINATION_COUNTRY}
    click element    ${COUNTRY_FROM_LIST}
    click button    ${SHOW_RESULTS}
    sleep    3s
    Element Should Contain    ${ITERNATIONAL_LETTER_PRICE}  2,25 €
    Element Should Contain    ${ECONOMY_LETTER_PRICE}  2,10 €

*** Settings ***
Library    SeleniumLibrary


*** Variables ***
@{SERVICE_SELECTION} =  xpath=//*[@id="serviceList"]/fieldset/ul/li[1]/label/div/div/input    xpath=//*[@id="serviceList"]/fieldset/ul/li[2]/label/div/div/input    xpath=//*[@id="serviceList"]/fieldset/ul/li[3]/label/div/div/input    xpath=//*[@id="serviceList"]/fieldset/ul/li[4]/label/div/div/input    xpath=//*[@id="serviceList"]/fieldset/ul/li[5]/label/div/div/input    xpath=//*[@id="serviceList"]/fieldset/ul/li[6]/label/div/div/input
${FULL_SCREEN_MODE}    xpath=//*[@id="nearbyServicePointsMapSection"]/div/div/div/div/div/div[8]/button
${ZOOM_IN}    xpath=//*[@id="nearbyServicePointsMapSection"]/div/div/div/div/div/div[11]/div/div/div/button[1]
${ZOOM_OUT}    xpath=//*[@id="nearbyServicePointsMapSection"]/div/div/div/div/div/div[11]/div/div/div/button[2]

*** Keywords ***
Select Services
    click element    ${SERVICE_SELECTION}[3]
    click element    ${SERVICE_SELECTION}[4]
    click element    ${SERVICE_SELECTION}[5]
    #Sleep    2s
    #Element Text Should Not Be  id=serviceList  injectIntl(Component)-badgeIcon-0-1-29

Select Only Postal Outlets
    click element    ${SERVICE_SELECTION}[1]
    click element    ${SERVICE_SELECTION}[2]
    click element    ${SERVICE_SELECTION}[3]
    click element    ${SERVICE_SELECTION}[4]
    click element    ${SERVICE_SELECTION}[5]

Zoom in and Out
    click element    ${FULL_SCREEN_MODE}
    click element    ${ZOOM_IN}
    click element    ${ZOOM_OUT}
    click element    ${FULL_SCREEN_MODE}
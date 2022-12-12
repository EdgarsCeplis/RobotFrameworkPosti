*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://www.posti.fi/
*** Keywords ***
Begin Web Test
    Open Browser    ${URL}    ${BROWSER}
    maximize browser window

End Web Test
    close all browsers
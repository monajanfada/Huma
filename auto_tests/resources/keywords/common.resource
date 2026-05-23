*** Settings ***
Library           ../lib/keywords.py
Variables         ${CURDIR}/../variables/login_variables.py
Variables         ${CURDIR}/../variables/game_variables.py
Resource          ${CURDIR}/login_keywords.resource
Resource          ${CURDIR}/game_keywords.resource
Library           SeleniumLibrary
Library           String
Library           SeleniumLibrary    timeout=3s


*** Variables ***
${BROWSER}       Chrome
${URL}           ${CURDIR}/../../app/index.html

*** Keywords ***
Open Tic Tac Toe App
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Handle Test Result
    Set Test Message               ${BROWSER} 	append=yes
    Run Keyword And Ignore Error   Capture Page Screenshot
    Run Keyword If Test Failed     Log Source

*** Settings ***
Library           SeleniumLibrary
Library           String


*** Keywords ***

Then the play page should be visible
    Wait Until Page Contains Element   ${GP_Sts}

And the greeting message should contain the player name
    [Arguments]    ${username}
    Wait Until Page Contains Element     ${GP_Username}
    Element Should Contain              ${GP_Username}     ${username}

When the user clicks the logout button
    Page Should Contain Element   ${GP_Logout_Btn}
    Click Button    ${GP_Logout_Btn}

And the player starts playing the game
    Click Element        ${GP_Selected_Cell}
    Element Text Should Be   ${GP_Selected_Cell}   ${GP_X_Txt}
    Element Attribute Value Should Be   ${GP_Selected_Cell}
    ...             data-state    x

And the computer eventually makes a move
    Computer Eventually Makes A Move

And the player resets the game
    Click Button       ${GP_Reset_Btn}

Then the board should be empty
    FOR    ${index}    IN RANGE    0    9
         Element Text Should Be    ${GP_Cell_Index.format(${index})}    ${EMPTY}
         ${state}    Get Element Attribute    ${GP_Cell_Index.format(${index})}    data-state
         Should Be Equal    ${state}    empty
    END

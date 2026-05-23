*** Settings ***
Documentation    Critical regression automation for the Tic-Tac-Toe SUT using Robot Framework, SeleniumLibrary, and Python helper keywords.
Resource         ../resources/keywords/common.resource
Suite Setup      Open Tic Tac Toe App
Test Teardown    Handle Test Result
Suite Teardown   Close All Browsers
Test Timeout     10 minutes

*** Variables ***
${BASE_NAME}     mona

*** Test Cases ***
Scenario:Player Can Move And Reset Board
    [Documentation]    Verify a registered player can make a move, receive a computer move, reset the game, and see an empty board.
    [Tags]    critical    game    regression
    Given the authentication page is visible
    When the user registers with a unique username  ${BASE_NAME}
    And the player starts playing the game
    And the computer eventually makes a move
    And the player resets the game
    Then the board should be empty
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
Scenario:Register new player and logout successfully
    [Documentation]    Verify user can register and logout successfully
    [Tags]    critical    auth
    Given the authentication page is visible
    When the user registers with a unique username  ${BASE_NAME}
    Then the play page should be visible
    And the greeting message should contain the player name  ${username}
    When the user clicks the logout button
    Then the authentication page should be visible



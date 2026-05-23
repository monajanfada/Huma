*** Settings ***
Library           SeleniumLibrary
Library           String


*** Keywords ***
Given the authentication page is visible
    Check Login Page Elements
    Check If Submission Error Shows up Correctly


When the user registers with a unique username
    [Arguments]    ${BASE_NAME}
    Register New User    ${BASE_NAME}
    Create an Account with Generated Username

Register New User
    [Arguments]            ${BASE_NAME}
    ${username}    Generate Random Username    ${BASE_NAME}
#    ${random_letters}      Generate Random String    4 [LOWER]
#    ${random_number}       Generate Random String 4 [NUMBERS]
#    ${username}            Set Variable ${BASE_NAME}_${random_letters}${random_number}
#    Set Suite Variable     ${username}


Check Login Page Elements
    # We Should check every elements and its text in every page after we checked that the page is fully loaded.
    Check Page Title
    Check Page Subtitle
    Check Selected Language Drop Down
    Check Dark Mode Button

Check Page Title
    Wait Until Page Contains Element        ${LP_Title}
    Element Text Should Be                  ${LP_Title}     ${LP_Title_Txt}

Check Page Subtitle
    Page Should Contain Element            ${LP_SubTitle}
    Element Text Should Be                 ${LP_SubTitle}    ${LP_SubTitle_Txt}

Check Selected Language Drop Down
    Select From List By Label             ${LP_Language}    ${LP_Language_Txt}
    List Selection Should Be              ${LP_Language}    ${LP_Language_Txt}

Check Dark Mode Button
    Element Text Should Be              ${LP_Theme}         ${LP_Theme_Txt}


Check If Submission Error Shows up Correctly
    Click Button                 ${LP_Create_Account_Btn}
    Wait Until Page Contains Element       ${LP_Auth_Error}
    Element Text Should Be   ${LP_Auth_Error}     ${LP_Auth_Error_Txt}

3


Create an Account with Generated Username
    Input Text    ${LP_Input_Name}    ${username}
    Click on Create Account Button

Click on Create Account Button
    Click Button                 ${LP_Create_Account_Btn}
    Wait Until Page Contains Element   ${GP_Sts}

Then the authentication page should be visible
    Check Page Title







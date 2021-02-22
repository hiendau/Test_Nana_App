*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Interface/Register_Interface.robot
Resource        ../Interface/Terms_Of_Service_Interface.robot
*** Keywords ***
Click Back Button In Register Screen
    click element       ${REGISTER_SCREEN__BACK_BUTTON}

Check Tutorial Image is Showed
    Wait Until Page Contains Element        ${TUTORIAL_IMAGE_POPUP}

Check Register Screen Display Successfully
    wait until page contains element        ${REGISTER_SCREEN_TITLE}

Check That Register Screen Display
    Wait Until Page Contains Element        ${REGISTER_SCREEN_TITLE}

Input Email In Register Screen
    [Arguments]             ${email_text}
    Input Text              ${REGISTER_SCREEN_EMAIL_TEXTBOX }         ${email_text}

Input Password In Register Screen
    [Arguments]             ${password_text}
    Input Password          ${REGISTER_SCREEN_PASSWORD_TEXTBOX}       ${password_text}

Input Confirm Password In Register Screen
    [Arguments]            ${confirm_password_text}
    Input Password         ${REGISTER_SCREEN_CONFIRM_PASSWORD_TEXTBOX}           ${confirm_password_text}

Clear Email
    Clear Text             ${REGISTER_SCREEN_EMAIL_TEXTBOX}

Clear Password And Confirm Password
    Clear Text             ${REGISTER_SCREEN_PASSWORD_TEXTBOX}
    Clear Text             ${REGISTER_SCREEN_CONFIRM_PASSWORD_TEXTBOX}

Clear Email And Confirm Password
    Clear Text             ${REGISTER_SCREEN_EMAIL_TEXTBOX}
    Clear Text             ${REGISTER_SCREEN_CONFIRM_PASSWORD_TEXTBOX}

Click Next Button
    Click Element         ${REGISTER_SCREEN_NEXT_BUTTON}

Check Error Message Show On Email Field When Leave Email Field Blank
    Wait Until Page Contains Element        ${REGISTER_SCREEN_ERROR_MESSAGE_EMAIL_FIELD_WHEN_EMPTY_EMAIL}

Check Error Message Show On Password Field When Leave Password Field Blank
    Wait Until Page Contains Element        ${REGISTER_SCREEN_ERROR_MESSAGE_PASSWORD_FIELD_WHEN_EMPTY_PASSWORD}

Check Error Message Show On Confirm Password Field When Leave Password Field Blank
    Wait Until Page Contains Element       ${REGISTER_SCREEN_ERROR_MESSAGE_CONFIRM_PASSWORD_FIELD_WHEN_EMPTY_PASSWORD}

Check Error Message Show All Field When Leave All Field Blank
     Wait Until Page Contains Element        ${REGISTER_SCREEN_ERROR_MESSAGE_EMAIL_FIELD_WHEN_EMPTY_EMAIL}
     Wait Until Page Contains Element        ${REGISTER_SCREEN_ERROR_MESSAGE_PASSWORD_FIELD_WHEN_EMPTY_PASSWORD}
     Wait Until Page Contains Element        ${REGISTER_SCREEN_ERROR_MESSAGE_CONFIRM_PASSWORD_FIELD_WHEN_EMPTY_CONFIRM_PASSWORD}
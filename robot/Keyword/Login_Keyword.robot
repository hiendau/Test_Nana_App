*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Interface/Login_Interface.robot
Resource        ../Interface/Top_Page_Interface.robot

*** Keywords ***
Check Login UI Display Correctly
    Wait Until Page Contains Element     ${LOGIN_SCREEN_EMAIL_TEXTBOX}          10s
    Wait Until Page Contains Element     ${LOGIN_SCREEN_PASSWORD_TEXTBOX}       10s
    Wait Until Page Contains Element     ${LOGIN_SCREEN_LOGIN_BUTTON}           10s

Input Email In Login Screen
    [Arguments]              ${email_text}
    Input Text               ${LOGIN_SCREEN_EMAIL_TEXTBOX}        ${email_text}

Clear Input Field
    ${get_email_text}         get text  ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    ${get_password_text}      get text  ${LOGIN_SCREEN_PASSWORD_TEXTBOX}
    Run Keyword If      '${get_email_text}'!= ''             Clear Text               ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    ...    ELSE IF      '${get_password_text}'!= ''          Clear Text                ${LOGIN_SCREEN_PASSWORD_TEXTBOX}

Input Password In Login Screen
    [Arguments]              ${password_text}
    Input Password           ${LOGIN_SCREEN_PASSWORD_TEXTBOX}       ${password_text}


Click Login Button
    Click Element            ${LOGIN_SCREEN_LOGIN_BUTTON}

Check Error Message Show In Popup When Without Network
    Wait Until Page Contains Element       ${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LOGIN_WITHOUT_NETWORK}     10s

Click Ok Button
   Click Element                          ${TOP_PAGE_SCREEN_OK_BUTTON} 
   Wait Until Page Contains Element       ${LOGIN_SCREEN_EMAIL_TEXTBOX}

Click Allow Button
    Click Element           ${TOP_PAGE_SCREEN_ALLOW_BUTTON}      

Check Error Message Pop Up When Email Or Password Incorrect
    Wait Until Page Contains Element      ${TOP_PAGE_SCREEN_POPUP_ERROR_MESSAGE_DIALOG_BOX}        10s
    Wait Until Page Contains Element      ${TOP_PAGE_SCREEN_OK_BUTTON}                             10s

Check Error Message Show in Email Field When Enter Incorrect Format Email Field
    Wait Until Page Contains Element        ${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_INCORRECT_FORMAT_EMAIL_FIELD}

Check Error Message Show In Email Field When Leave Email Field Blank
    Wait Until Page Contains Element        ${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LEAVE_EMAIL_FIELD_BLANK}

Check Error Message Show On Password Field When Leave Password Field Blank
    Wait Until Page Contains Element    	${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LEAVE_PASSWORD_FIELD_BLANK}

Check Error Message Show On Password Field When Enter Less Than 8 Character Into Password Field
    Wait Until Page Contains Element        ${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_ENTER_LESS_8_CHARACTER_PASSWORD_FIELD}

Check Allow Take Picture And Record Video Dialog Box Pop Up
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_ALLOW_TAKE_PICURE_AND_RECORD_VIDEO_TEXT}        10s
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_ALLOW_BUTTON}          10s
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_DENY_BUTTON}         10s

Check Allow Record Audio Dialog Box Pop Up
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_ALLOW_RECORD_AUDIO_TEXT}              10s
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_ALLOW_BUTTON}          10s
    Wait Until Page Contains Element       ${TOP_PAGE_SCREEN_DENY_BUTTON}         10s

Check That Login Screen Display Successfully
    wait until element is visible           ${LOGIN_SCREEN_TITLE}               10s
    wait until page contains element        ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    wait until page contains element        ${LOGIN_SCREEN_PASSWORD_TEXTBOX}
    wait until page contains element        ${LOGIN_SCREEN_LOGIN_BUTTON}

Check That User Can Go Back Login Screen When Touch On Back Button Of Application
    wait until page contains element        ${LOGIN_SCREEN_TITLE}
    wait until page contains element        ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    wait until page contains element        ${LOGIN_SCREEN_PASSWORD_TEXTBOX}
    wait until page contains element        ${LOGIN_SCREEN_LOGIN_BUTTON}
*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
Resource        ../Interface/Terms_Of_Service_Interface.robot
Resource        ../Interface/Register_Interface.robot

*** Keywords ***
Check UI Of Term Of Service Screen Show Correctly
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_TITLE}          10s
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_AGREE_BUTTON}      10s
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_LINE1_UNDER_TITLE}
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_LINE2_UNDER_TITLE}
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_LINE3_UNDER_TITLE}
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_LINE4_UNDER_TITLE}
    wait until element is visible       ${TERMS_OF_SERVICE_SCREEN_LINE5_UNDER_TITLE}
   wait until element is visible       ${TERM_OF_SERVICE_SCREEN_NAME_TERM_OF SERVICE}
   wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_1}
   wait until element is visible         ${TERMS_OF_SERVICE_SCREEN_ARTICLE_1}
   wait until element is visible         ${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_2}
   wait until element is visible          ${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_3}

Check That Term Of Service Screen Display
   wait until element is visible          ${TERMS_OF_SERVICE_SCREEN_TITLE}    10s
   wait until element is visible          ${TERMS_OF_SERVICE_SCREEN_AGREE_BUTTON}

Click Agree Button In Term Of Service Screen
    wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_AGREE_BUTTON}
    click element       ${TERMS_OF_SERVICE_SCREEN_AGREE_BUTTON}

Click Back Button In Term Of Service Screen
    click element                           ${TERMS_OF_SERVICE_SCREEN_BACK_BUTTON}
    wait until element is visible           ${TUTORIAL_SCREEN_SIGNUP_BUTTON}

Click Back Button In Application
    press keycode       4

Check That Terms Of Service Display Successfully
    wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_TITLE}

Check That Error Message When Connect Without Network
    wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_ERROR_MESSAGE_WHEN_CONECT_WITHOUT_NETWORK}
    wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_OK_BUTTON}



Check Terms Of Service Screen Show
    wait until element is visible        ${TERMS_OF_SERVICE_SCREEN_TITLE}

Click Cancel Icon
    Click Element                           ${TERMS_OF_SERVICE_SCREEN_CANCEL_ICON}
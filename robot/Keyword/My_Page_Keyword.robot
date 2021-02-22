*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Interface/My_Page_Interface.robot
Resource        ../Interface/Infor_User_Interface.robot
Library         BuiltIn
*** Keywords ***
Click Name Child Textbox In Information Account Screen
    wait until element is visible       ${MY_PAGE_SCREEN_TITLE}                       10s
    click element                           ${MY_PAGE_SCREEN_NAME_CHILD_FIELD }

Click Name User Textbox In Information Account Screen
    wait until element is visible       ${MY_PAGE_SCREEN_TITLE}                       10s
    click element                           ${INFOR_ACCOUNT_SCREEN_NAME_USER_FIELD}

Check That Information Children Title Is Show
    wait until element is visible        ${INFOR_CHILD_SCREEN_TITLE}          10s

Check That My Page Screen Display Successfully
    wait until element is visible        ${MY_PAGE_SCREEN_TITLE}       20s

Click In Video Save Setting In My Page Screen
    FOR      ${i}    IN RANGE        10
    ${status}=      run keyword and return status           element should be visible       ${MY_PAGE_SCREEN_VIDEO_SAVE_SETTING}
    run keyword if      '${status}'=='True'         click element       ${MY_PAGE_SCREEN_VIDEO_SAVE_SETTING}
    ...    ELSE IF          '${status}'=='False'           swipe    462      1585        483     261
    END

Turn On Save Video To Server In My Page Screen
    ${status}=      run keyword and return status           element should be visible       ${MY_PAGE_SCREEN_SAVE_VIDEO_IN_SERVER}
    run keyword if     '${status}'=='False'           swipe     932     414         1006        418
